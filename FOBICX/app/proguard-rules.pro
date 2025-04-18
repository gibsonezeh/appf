# ProGuard rules for the Android application

# Keep the main activity class
-keep class com.example.myandroidapp.MainActivity { *; }

# Keep all public classes and their public methods
-keep public class * {
    public *;
}

# Keep the application class
-keep class com.example.myandroidapp.MyApplication { *; }

# Keep all annotations
-keepattributes *Annotation*

# Keep the names of classes and methods for reflection
-keepclassmembers class * {
    @com.google.gson.annotations.SerializedName <fields>;
}

# Add any additional rules as needed for libraries or specific classes