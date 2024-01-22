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
using M2Mqtt.Messages;// 2024/1/22

namespace GPS_Tracking
{
    public partial class MainPage : ContentPage
    {
        public static Timer timer;
        public double? Lat; // 緯度
        public double? Long; // 經度
        MqttClient MqClient;
        string topic1 = "hkc/tag1";
        string topic2 = "hkc/tag2";

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
                string[] topic = new string[2];
                topic[0] = topic1;
                topic[1] = topic2;
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
            //    new Position(23.95563318529957, 120.94079201320704),
            //    new Position(23.956040971099437, 120.94170222728988),
            //    new Position(23.95880584554341, 120.94455609736778),
            //    new Position(23.963374621758767, 120.94622979603507),
            //    new Position(23.965060910209885, 120.94650874574192),
            //    new Position(23.966178554353007, 120.9462083383653),
            //    new Position(23.967511871563893, 120.94658384765336),
            //    new Position(23.968366156797703, 120.94657959548864),
            //    new Position(23.969610992273413, 120.94736671016176),
            //    new Position(23.971146272799917, 120.94786622524278),
            //    new Position(23.967259626251114, 120.96339660467335),
            //    new Position(23.967321669222756, 120.9636018773939),
            //    new Position(23.96738517821558, 120.96375314562759),
            //    new Position(23.967246952720547, 120.96403932877244),
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
