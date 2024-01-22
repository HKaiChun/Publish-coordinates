; ModuleID = 'obj\Debug\110\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\110\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [196 x i32] [
	i32 10166715, ; 0: System.Net.NameResolution.dll => 0x9b21bb => 6
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 51
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 77
	i32 42639949, ; 3: System.Threading.Thread => 0x28aa24d => 5
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 70
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 61
	i32 117431740, ; 6: System.Runtime.InteropServices => 0x6ffddbc => 91
	i32 120558881, ; 7: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 61
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 36
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 62
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 34
	i32 212497893, ; 11: Xamarin.Forms.Maps.Android => 0xcaa75e5 => 71
	i32 230216969, ; 12: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 46
	i32 232815796, ; 13: System.Web.Services => 0xde07cb4 => 90
	i32 278686392, ; 14: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 50
	i32 280482487, ; 15: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 44
	i32 318968648, ; 16: Xamarin.AndroidX.Activity.dll => 0x13031348 => 26
	i32 319314094, ; 17: Xamarin.Forms.Maps => 0x130858ae => 72
	i32 321597661, ; 18: System.Numerics => 0x132b30dd => 21
	i32 342366114, ; 19: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 48
	i32 379916513, ; 20: System.Threading.Thread.dll => 0x16a510e1 => 5
	i32 442521989, ; 21: Xamarin.Essentials => 0x1a605985 => 69
	i32 442565967, ; 22: System.Collections => 0x1a61054f => 9
	i32 450948140, ; 23: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 43
	i32 451504562, ; 24: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 92
	i32 465846621, ; 25: mscorlib => 0x1bc4415d => 16
	i32 469710990, ; 26: System.dll => 0x1bff388e => 18
	i32 476646585, ; 27: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 44
	i32 486930444, ; 28: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 55
	i32 526420162, ; 29: System.Transactions.dll => 0x1f6088c2 => 85
	i32 545304856, ; 30: System.Runtime.Extensions => 0x2080b118 => 94
	i32 605376203, ; 31: System.IO.Compression.FileSystem => 0x24154ecb => 88
	i32 627609679, ; 32: Xamarin.AndroidX.CustomView => 0x2568904f => 40
	i32 663517072, ; 33: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 66
	i32 666292255, ; 34: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 31
	i32 683518922, ; 35: System.Net.Security => 0x28bdabca => 4
	i32 690569205, ; 36: System.Xml.Linq.dll => 0x29293ff5 => 25
	i32 753080841, ; 37: M2MqttClientDotnetCore1.0.1.dll => 0x2ce31a09 => 14
	i32 775507847, ; 38: System.IO.Compression => 0x2e394f87 => 19
	i32 809851609, ; 39: System.Drawing.Common.dll => 0x30455ad9 => 87
	i32 843511501, ; 40: Xamarin.AndroidX.Print => 0x3246f6cd => 58
	i32 928116545, ; 41: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 77
	i32 967690846, ; 42: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 48
	i32 974778368, ; 43: FormsViewGroup.dll => 0x3a19f000 => 11
	i32 992768348, ; 44: System.Collections.dll => 0x3b2c715c => 9
	i32 1012816738, ; 45: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 60
	i32 1035644815, ; 46: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 30
	i32 1042160112, ; 47: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 74
	i32 1052210849, ; 48: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 52
	i32 1098259244, ; 49: System => 0x41761b2c => 18
	i32 1175144683, ; 50: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 64
	i32 1204270330, ; 51: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 31
	i32 1267360935, ; 52: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 65
	i32 1293217323, ; 53: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 42
	i32 1297331645, ; 54: GPS_Tracking.dll => 0x4d53b5bd => 12
	i32 1324164729, ; 55: System.Linq => 0x4eed2679 => 95
	i32 1364015309, ; 56: System.IO => 0x514d38cd => 96
	i32 1365406463, ; 57: System.ServiceModel.Internals.dll => 0x516272ff => 82
	i32 1376866003, ; 58: Xamarin.AndroidX.SavedState => 0x52114ed3 => 60
	i32 1395857551, ; 59: Xamarin.AndroidX.Media.dll => 0x5333188f => 56
	i32 1406073936, ; 60: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 37
	i32 1457743152, ; 61: System.Runtime.Extensions.dll => 0x56e36530 => 94
	i32 1458022317, ; 62: System.Net.Security.dll => 0x56e7a7ad => 4
	i32 1460219004, ; 63: Xamarin.Forms.Xaml => 0x57092c7c => 75
	i32 1462112819, ; 64: System.IO.Compression.dll => 0x57261233 => 19
	i32 1469204771, ; 65: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 29
	i32 1530663695, ; 66: Xamarin.Forms.Maps.dll => 0x5b3c130f => 72
	i32 1582372066, ; 67: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 41
	i32 1592978981, ; 68: System.Runtime.Serialization.dll => 0x5ef2ee25 => 10
	i32 1622152042, ; 69: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 54
	i32 1624863272, ; 70: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 68
	i32 1636350590, ; 71: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 39
	i32 1639515021, ; 72: System.Net.Http.dll => 0x61b9038d => 20
	i32 1657153582, ; 73: System.Runtime => 0x62c6282e => 23
	i32 1658251792, ; 74: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 76
	i32 1677501392, ; 75: System.Net.Primitives.dll => 0x63fca3d0 => 3
	i32 1729485958, ; 76: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 35
	i32 1766324549, ; 77: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 62
	i32 1776026572, ; 78: System.Core.dll => 0x69dc03cc => 17
	i32 1788241197, ; 79: Xamarin.AndroidX.Fragment => 0x6a96652d => 43
	i32 1808609942, ; 80: Xamarin.AndroidX.Loader => 0x6bcd3296 => 54
	i32 1813201214, ; 81: Xamarin.Google.Android.Material => 0x6c13413e => 76
	i32 1867746548, ; 82: Xamarin.Essentials.dll => 0x6f538cf4 => 69
	i32 1878053835, ; 83: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 75
	i32 1881862856, ; 84: Xamarin.Forms.Maps.Android.dll => 0x702af2c8 => 71
	i32 1885316902, ; 85: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 32
	i32 1908813208, ; 86: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 79
	i32 1910275211, ; 87: System.Collections.NonGeneric.dll => 0x71dc7c8b => 2
	i32 1919157823, ; 88: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 57
	i32 2019465201, ; 89: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 52
	i32 2055257422, ; 90: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 49
	i32 2079903147, ; 91: System.Runtime.dll => 0x7bf8cdab => 23
	i32 2090596640, ; 92: System.Numerics.Vectors => 0x7c9bf920 => 22
	i32 2097448633, ; 93: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 45
	i32 2126786730, ; 94: Xamarin.Forms.Platform.Android => 0x7ec430aa => 73
	i32 2129483829, ; 95: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 78
	i32 2201231467, ; 96: System.Net.Http => 0x8334206b => 20
	i32 2217644978, ; 97: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 64
	i32 2244775296, ; 98: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 55
	i32 2256548716, ; 99: Xamarin.AndroidX.MultiDex => 0x8680336c => 57
	i32 2261435625, ; 100: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 47
	i32 2275755369, ; 101: GPS_Tracking.Android => 0x87a54569 => 0
	i32 2279755925, ; 102: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 59
	i32 2295906218, ; 103: System.Net.Sockets => 0x88d8bfaa => 93
	i32 2315684594, ; 104: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 27
	i32 2353062107, ; 105: System.Net.Primitives => 0x8c40e0db => 3
	i32 2454642406, ; 106: System.Text.Encoding.dll => 0x924edee6 => 8
	i32 2458678730, ; 107: System.Net.Sockets.dll => 0x928c75ca => 93
	i32 2471841756, ; 108: netstandard.dll => 0x93554fdc => 83
	i32 2475788418, ; 109: Java.Interop.dll => 0x93918882 => 13
	i32 2501346920, ; 110: System.Data.DataSetExtensions => 0x95178668 => 86
	i32 2505896520, ; 111: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 51
	i32 2581819634, ; 112: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 65
	i32 2620871830, ; 113: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 39
	i32 2633051222, ; 114: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 50
	i32 2693849962, ; 115: System.IO.dll => 0xa090e36a => 96
	i32 2715334215, ; 116: System.Threading.Tasks.dll => 0xa1d8b647 => 7
	i32 2732626843, ; 117: Xamarin.AndroidX.Activity => 0xa2e0939b => 26
	i32 2737747696, ; 118: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 29
	i32 2766581644, ; 119: Xamarin.Forms.Core => 0xa4e6af8c => 70
	i32 2778768386, ; 120: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 67
	i32 2810250172, ; 121: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 37
	i32 2819470561, ; 122: System.Xml.dll => 0xa80db4e1 => 24
	i32 2847418871, ; 123: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 78
	i32 2853208004, ; 124: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 67
	i32 2855708567, ; 125: Xamarin.AndroidX.Transition => 0xaa36a797 => 63
	i32 2903344695, ; 126: System.ComponentModel.Composition => 0xad0d8637 => 89
	i32 2905242038, ; 127: mscorlib.dll => 0xad2a79b6 => 16
	i32 2916838712, ; 128: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 68
	i32 2919462931, ; 129: System.Numerics.Vectors.dll => 0xae037813 => 22
	i32 2921128767, ; 130: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 28
	i32 2978675010, ; 131: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 42
	i32 3017076677, ; 132: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 80
	i32 3024354802, ; 133: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 46
	i32 3044182254, ; 134: FormsViewGroup => 0xb57288ee => 11
	i32 3058099980, ; 135: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 81
	i32 3075834255, ; 136: System.Threading.Tasks => 0xb755818f => 7
	i32 3090735792, ; 137: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 92
	i32 3111772706, ; 138: System.Runtime.Serialization => 0xb979e222 => 10
	i32 3204380047, ; 139: System.Data.dll => 0xbefef58f => 84
	i32 3211777861, ; 140: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 41
	i32 3220365878, ; 141: System.Threading => 0xbff2e236 => 1
	i32 3230466174, ; 142: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 79
	i32 3247949154, ; 143: Mono.Security => 0xc197c562 => 97
	i32 3258312781, ; 144: Xamarin.AndroidX.CardView => 0xc235e84d => 35
	i32 3267021929, ; 145: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 33
	i32 3299363146, ; 146: System.Text.Encoding => 0xc4a8494a => 8
	i32 3317135071, ; 147: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 40
	i32 3317144872, ; 148: System.Data => 0xc5b79d28 => 84
	i32 3340431453, ; 149: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 32
	i32 3353484488, ; 150: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 45
	i32 3362522851, ; 151: Xamarin.AndroidX.Core => 0xc86c06e3 => 38
	i32 3366347497, ; 152: Java.Interop => 0xc8a662e9 => 13
	i32 3374999561, ; 153: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 59
	i32 3404865022, ; 154: System.ServiceModel.Internals => 0xcaf21dfe => 82
	i32 3429136800, ; 155: System.Xml => 0xcc6479a0 => 24
	i32 3430777524, ; 156: netstandard => 0xcc7d82b4 => 83
	i32 3476120550, ; 157: Mono.Android => 0xcf3163e6 => 15
	i32 3486566296, ; 158: System.Transactions => 0xcfd0c798 => 85
	i32 3501239056, ; 159: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 33
	i32 3509114376, ; 160: System.Xml.Linq => 0xd128d608 => 25
	i32 3521813804, ; 161: GPS_Tracking => 0xd1ea9d2c => 12
	i32 3536029504, ; 162: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 73
	i32 3567349600, ; 163: System.ComponentModel.Composition.dll => 0xd4a16f60 => 89
	i32 3608519521, ; 164: System.Linq.dll => 0xd715a361 => 95
	i32 3627220390, ; 165: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 58
	i32 3632359727, ; 166: Xamarin.Forms.Platform => 0xd881692f => 74
	i32 3633644679, ; 167: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 28
	i32 3641597786, ; 168: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 49
	i32 3672681054, ; 169: Mono.Android.dll => 0xdae8aa5e => 15
	i32 3676310014, ; 170: System.Web.Services.dll => 0xdb2009fe => 90
	i32 3682565725, ; 171: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 34
	i32 3689375977, ; 172: System.Drawing.Common => 0xdbe768e9 => 87
	i32 3718780102, ; 173: Xamarin.AndroidX.Annotation => 0xdda814c6 => 27
	i32 3732100267, ; 174: System.Net.NameResolution => 0xde7354ab => 6
	i32 3758932259, ; 175: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 47
	i32 3786282454, ; 176: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 36
	i32 3792276235, ; 177: System.Collections.NonGeneric => 0xe2098b0b => 2
	i32 3822602673, ; 178: Xamarin.AndroidX.Media => 0xe3d849b1 => 56
	i32 3829621856, ; 179: System.Numerics.dll => 0xe4436460 => 21
	i32 3849253459, ; 180: System.Runtime.InteropServices.dll => 0xe56ef253 => 91
	i32 3885922214, ; 181: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 63
	i32 3896760992, ; 182: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 38
	i32 3920810846, ; 183: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 88
	i32 3921031405, ; 184: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 66
	i32 3928846294, ; 185: M2MqttClientDotnetCore1.0.1 => 0xea2d6fd6 => 14
	i32 3945713374, ; 186: System.Data.DataSetExtensions.dll => 0xeb2ecede => 86
	i32 3955647286, ; 187: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 30
	i32 3970018735, ; 188: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 81
	i32 4031385642, ; 189: GPS_Tracking.Android.dll => 0xf04a102a => 0
	i32 4073602200, ; 190: System.Threading.dll => 0xf2ce3c98 => 1
	i32 4105002889, ; 191: Mono.Security.dll => 0xf4ad5f89 => 97
	i32 4151237749, ; 192: System.Core => 0xf76edc75 => 17
	i32 4182413190, ; 193: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 53
	i32 4278134329, ; 194: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 80
	i32 4292120959 ; 195: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 53
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [196 x i32] [
	i32 6, i32 51, i32 77, i32 5, i32 70, i32 61, i32 91, i32 61, ; 0..7
	i32 36, i32 62, i32 34, i32 71, i32 46, i32 90, i32 50, i32 44, ; 8..15
	i32 26, i32 72, i32 21, i32 48, i32 5, i32 69, i32 9, i32 43, ; 16..23
	i32 92, i32 16, i32 18, i32 44, i32 55, i32 85, i32 94, i32 88, ; 24..31
	i32 40, i32 66, i32 31, i32 4, i32 25, i32 14, i32 19, i32 87, ; 32..39
	i32 58, i32 77, i32 48, i32 11, i32 9, i32 60, i32 30, i32 74, ; 40..47
	i32 52, i32 18, i32 64, i32 31, i32 65, i32 42, i32 12, i32 95, ; 48..55
	i32 96, i32 82, i32 60, i32 56, i32 37, i32 94, i32 4, i32 75, ; 56..63
	i32 19, i32 29, i32 72, i32 41, i32 10, i32 54, i32 68, i32 39, ; 64..71
	i32 20, i32 23, i32 76, i32 3, i32 35, i32 62, i32 17, i32 43, ; 72..79
	i32 54, i32 76, i32 69, i32 75, i32 71, i32 32, i32 79, i32 2, ; 80..87
	i32 57, i32 52, i32 49, i32 23, i32 22, i32 45, i32 73, i32 78, ; 88..95
	i32 20, i32 64, i32 55, i32 57, i32 47, i32 0, i32 59, i32 93, ; 96..103
	i32 27, i32 3, i32 8, i32 93, i32 83, i32 13, i32 86, i32 51, ; 104..111
	i32 65, i32 39, i32 50, i32 96, i32 7, i32 26, i32 29, i32 70, ; 112..119
	i32 67, i32 37, i32 24, i32 78, i32 67, i32 63, i32 89, i32 16, ; 120..127
	i32 68, i32 22, i32 28, i32 42, i32 80, i32 46, i32 11, i32 81, ; 128..135
	i32 7, i32 92, i32 10, i32 84, i32 41, i32 1, i32 79, i32 97, ; 136..143
	i32 35, i32 33, i32 8, i32 40, i32 84, i32 32, i32 45, i32 38, ; 144..151
	i32 13, i32 59, i32 82, i32 24, i32 83, i32 15, i32 85, i32 33, ; 152..159
	i32 25, i32 12, i32 73, i32 89, i32 95, i32 58, i32 74, i32 28, ; 160..167
	i32 49, i32 15, i32 90, i32 34, i32 87, i32 27, i32 6, i32 47, ; 168..175
	i32 36, i32 2, i32 56, i32 21, i32 91, i32 63, i32 38, i32 88, ; 176..183
	i32 66, i32 14, i32 86, i32 30, i32 81, i32 0, i32 1, i32 97, ; 184..191
	i32 17, i32 53, i32 80, i32 53 ; 192..195
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
