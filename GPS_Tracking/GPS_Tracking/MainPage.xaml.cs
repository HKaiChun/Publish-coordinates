using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Maps;
using M2Mqtt;
using M2Mqtt.Messages;

namespace GPS_Tracking
{
    public partial class MainPage : ContentPage
    {
        public static Timer timer;
        public double? Lat; // 緯度
        public double? Long; // 經度
        public double? Lat2, Lat3, Long2, Long3;
        MqttClient MqClient;
        //string topic1 = "hkc/tag1";
        //string topic2 = "hkc/tag2";

        public MainPage()
        {
            InitializeComponent();
            //AppPin();

            //timer = new Timer(UpdateLocation, null, 0, 400);

            //MqClient = new MqttClient("miqottt.com");
            MqClient = new MqttClient("broker.MQTTGO.io");
            //MqClient.Connect("mqapp", "s110213011@mail1.ncnu.edu.tw", "HxWfzQsVr2au@TF");
            MqClient.Connect(Guid.NewGuid().ToString());

            if (MqClient.IsConnected)
            {
                //string[] topic = new string[2];
                //topic[0] = topic1;
                //topic[1] = topic2;
                byte[] msgs = new byte[2];
                msgs[0] = MqttMsgBase.QOS_LEVEL_AT_LEAST_ONCE;
                msgs[1] = MqttMsgBase.QOS_LEVEL_AT_LEAST_ONCE;
                MqClient.Subscribe(new string[] { "123" }, new byte[] { MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE });
            }
            timer = new Timer(UpdateLocation, null, 0, 400);


            // instantiate a polygon
            //Polyline polyline = new Polyline
            //{
            //    StrokeColor = Color.Black,
            //    StrokeWidth = 8,
            //    Geopath =
            //    {
            //    new Position(23.9494424136, 120.937806882),
            //    new Position(23.950756771717764, 120.93872134680821),
            //    new Position(23.95187411546185, 120.93883106915482),
            //    new Position(23.953120372075265, 120.9387683708233),
            //    new Position(23.967508460288784, 120.96482019992479),
            //    new Position(23.96530057257442, 120.9671382836233),
            //    new Position(23.965311780212232, 120.96746943850552),
            //    new Position(23.96501290928311, 120.96748988015871),
            //    new Position(23.963484920813883, 120.96908841758491),
            //    new Position(23.96366258874366, 120.96918040221595)
            //    }
            //};
            //// add the polygon to the map's MapElements collection
            //map.MapElements.Add(polyline);
        }
        private async void UpdateLocation(object sendor)
        {
            try
            {
                var location = await Geolocation.GetLastKnownLocationAsync();
                location = await Geolocation.GetLocationAsync(new GeolocationRequest
                {
                    DesiredAccuracy = GeolocationAccuracy.Best,
                    Timeout = TimeSpan.FromSeconds(10)
                });
                Device.BeginInvokeOnMainThread(() =>
                {
                    if (location == null)
                    {
                        //LabelLocation.Text = "NO GPS";
                        return;
                    }
                    if (Lat == null && Long == null)
                    {
                        Lat = location.Latitude;
                        Long = location.Longitude;
                    }
                    else
                    {
                        Polyline polyline = new Polyline
                        {
                            StrokeColor = Color.Black,
                            StrokeWidth = 8,
                            Geopath =
                            {
                            new Position((double)Lat, (double)Long),
                            new Position(location.Latitude, location.Longitude)
                            }
                        };
                        Lat = location.Latitude;
                        Long = location.Longitude;
                        // add the polygon to the map's MapElements collection
                        map.MapElements.Add(polyline);
                        //MqClient.Publish(topic1, Encoding.UTF8.GetBytes(Lat.ToString()));
                        //MqClient.Publish(topic2, Encoding.UTF8.GetBytes(Long.ToString()));
                        MqClient.Publish("123", Encoding.UTF8.GetBytes($"{Lat} {Long}"));
                    }
                });
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Something is wrong: {ex.Message}");
            }
        }

        // make a pin with a circle outside
        //private void AppPin()
        //{
        //    Position position = new Position(36.9628066, -122.0194722);
        //    //Circle circle = new Circle
        //    //{
        //    //    Center = position,
        //    //    Radius = new Distance(250),
        //    //    StrokeColor = Color.Red,
        //    //    StrokeWidth = 8,
        //    //    FillColor = new Color(1, 0, 0, 0.2)
        //    //};

        //    Pin pin = new Pin
        //    {
        //        Label = "Santa Cruz",
        //        Address = "The city with a boardwalk",
        //        Type = PinType.Place,
        //        Position = position,
        //    };
        //    map.Pins.Add(pin);
        //    //map.MapElements.Add(circle);
        //}
    }
}
