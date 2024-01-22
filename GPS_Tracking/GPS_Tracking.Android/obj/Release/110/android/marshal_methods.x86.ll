; ModuleID = 'obj\Release\110\android\marshal_methods.x86.ll'
source_filename = "obj\Release\110\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [92 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 38
	i32 57263871, ; 1: Xamarin.Forms.Core.dll => 0x369c6ff => 31
	i32 182336117, ; 2: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 28
	i32 212497893, ; 3: Xamarin.Forms.Maps.Android => 0xcaa75e5 => 32
	i32 318968648, ; 4: Xamarin.AndroidX.Activity.dll => 0x13031348 => 12
	i32 319314094, ; 5: Xamarin.Forms.Maps => 0x130858ae => 33
	i32 321597661, ; 6: System.Numerics => 0x132b30dd => 10
	i32 342366114, ; 7: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 22
	i32 442521989, ; 8: Xamarin.Essentials => 0x1a605985 => 30
	i32 450948140, ; 9: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 20
	i32 465846621, ; 10: mscorlib => 0x1bc4415d => 7
	i32 469710990, ; 11: System.dll => 0x1bff388e => 9
	i32 627609679, ; 12: Xamarin.AndroidX.CustomView => 0x2568904f => 18
	i32 809851609, ; 13: System.Drawing.Common.dll => 0x30455ad9 => 44
	i32 928116545, ; 14: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 38
	i32 967690846, ; 15: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 22
	i32 974778368, ; 16: FormsViewGroup.dll => 0x3a19f000 => 3
	i32 1012816738, ; 17: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 27
	i32 1035644815, ; 18: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 14
	i32 1042160112, ; 19: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 35
	i32 1052210849, ; 20: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 24
	i32 1098259244, ; 21: System => 0x41761b2c => 9
	i32 1293217323, ; 22: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 19
	i32 1297331645, ; 23: GPS_Tracking.dll => 0x4d53b5bd => 4
	i32 1365406463, ; 24: System.ServiceModel.Internals.dll => 0x516272ff => 43
	i32 1376866003, ; 25: Xamarin.AndroidX.SavedState => 0x52114ed3 => 27
	i32 1406073936, ; 26: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 16
	i32 1460219004, ; 27: Xamarin.Forms.Xaml => 0x57092c7c => 36
	i32 1469204771, ; 28: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 13
	i32 1530663695, ; 29: Xamarin.Forms.Maps.dll => 0x5b3c130f => 33
	i32 1592978981, ; 30: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 31: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 25
	i32 1639515021, ; 32: System.Net.Http.dll => 0x61b9038d => 1
	i32 1658251792, ; 33: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 37
	i32 1729485958, ; 34: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 15
	i32 1766324549, ; 35: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 28
	i32 1776026572, ; 36: System.Core.dll => 0x69dc03cc => 8
	i32 1788241197, ; 37: Xamarin.AndroidX.Fragment => 0x6a96652d => 20
	i32 1808609942, ; 38: Xamarin.AndroidX.Loader => 0x6bcd3296 => 25
	i32 1813201214, ; 39: Xamarin.Google.Android.Material => 0x6c13413e => 37
	i32 1867746548, ; 40: Xamarin.Essentials.dll => 0x6f538cf4 => 30
	i32 1878053835, ; 41: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 36
	i32 1881862856, ; 42: Xamarin.Forms.Maps.Android.dll => 0x702af2c8 => 32
	i32 1908813208, ; 43: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 40
	i32 2019465201, ; 44: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 24
	i32 2055257422, ; 45: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 23
	i32 2097448633, ; 46: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 21
	i32 2126786730, ; 47: Xamarin.Forms.Platform.Android => 0x7ec430aa => 34
	i32 2129483829, ; 48: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 39
	i32 2201231467, ; 49: System.Net.Http => 0x8334206b => 1
	i32 2275755369, ; 50: GPS_Tracking.Android => 0x87a54569 => 0
	i32 2279755925, ; 51: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 26
	i32 2475788418, ; 52: Java.Interop.dll => 0x93918882 => 5
	i32 2732626843, ; 53: Xamarin.AndroidX.Activity => 0xa2e0939b => 12
	i32 2737747696, ; 54: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 13
	i32 2766581644, ; 55: Xamarin.Forms.Core => 0xa4e6af8c => 31
	i32 2778768386, ; 56: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 29
	i32 2810250172, ; 57: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 16
	i32 2819470561, ; 58: System.Xml.dll => 0xa80db4e1 => 11
	i32 2847418871, ; 59: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 39
	i32 2853208004, ; 60: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 29
	i32 2905242038, ; 61: mscorlib.dll => 0xad2a79b6 => 7
	i32 2978675010, ; 62: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 19
	i32 3017076677, ; 63: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 41
	i32 3044182254, ; 64: FormsViewGroup => 0xb57288ee => 3
	i32 3058099980, ; 65: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 42
	i32 3111772706, ; 66: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3230466174, ; 67: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 40
	i32 3247949154, ; 68: Mono.Security => 0xc197c562 => 45
	i32 3258312781, ; 69: Xamarin.AndroidX.CardView => 0xc235e84d => 15
	i32 3317135071, ; 70: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 18
	i32 3353484488, ; 71: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 21
	i32 3362522851, ; 72: Xamarin.AndroidX.Core => 0xc86c06e3 => 17
	i32 3366347497, ; 73: Java.Interop => 0xc8a662e9 => 5
	i32 3374999561, ; 74: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 26
	i32 3404865022, ; 75: System.ServiceModel.Internals => 0xcaf21dfe => 43
	i32 3429136800, ; 76: System.Xml => 0xcc6479a0 => 11
	i32 3476120550, ; 77: Mono.Android => 0xcf3163e6 => 6
	i32 3521813804, ; 78: GPS_Tracking => 0xd1ea9d2c => 4
	i32 3536029504, ; 79: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 34
	i32 3632359727, ; 80: Xamarin.Forms.Platform => 0xd881692f => 35
	i32 3641597786, ; 81: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 23
	i32 3672681054, ; 82: Mono.Android.dll => 0xdae8aa5e => 6
	i32 3689375977, ; 83: System.Drawing.Common => 0xdbe768e9 => 44
	i32 3829621856, ; 84: System.Numerics.dll => 0xe4436460 => 10
	i32 3896760992, ; 85: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 17
	i32 3955647286, ; 86: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 14
	i32 3970018735, ; 87: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 42
	i32 4031385642, ; 88: GPS_Tracking.Android.dll => 0xf04a102a => 0
	i32 4105002889, ; 89: Mono.Security.dll => 0xf4ad5f89 => 45
	i32 4151237749, ; 90: System.Core => 0xf76edc75 => 8
	i32 4278134329 ; 91: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 41
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [92 x i32] [
	i32 38, i32 31, i32 28, i32 32, i32 12, i32 33, i32 10, i32 22, ; 0..7
	i32 30, i32 20, i32 7, i32 9, i32 18, i32 44, i32 38, i32 22, ; 8..15
	i32 3, i32 27, i32 14, i32 35, i32 24, i32 9, i32 19, i32 4, ; 16..23
	i32 43, i32 27, i32 16, i32 36, i32 13, i32 33, i32 2, i32 25, ; 24..31
	i32 1, i32 37, i32 15, i32 28, i32 8, i32 20, i32 25, i32 37, ; 32..39
	i32 30, i32 36, i32 32, i32 40, i32 24, i32 23, i32 21, i32 34, ; 40..47
	i32 39, i32 1, i32 0, i32 26, i32 5, i32 12, i32 13, i32 31, ; 48..55
	i32 29, i32 16, i32 11, i32 39, i32 29, i32 7, i32 19, i32 41, ; 56..63
	i32 3, i32 42, i32 2, i32 40, i32 45, i32 15, i32 18, i32 21, ; 64..71
	i32 17, i32 5, i32 26, i32 43, i32 11, i32 6, i32 4, i32 34, ; 72..79
	i32 35, i32 23, i32 6, i32 44, i32 10, i32 17, i32 14, i32 42, ; 80..87
	i32 0, i32 45, i32 8, i32 41 ; 88..91
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
