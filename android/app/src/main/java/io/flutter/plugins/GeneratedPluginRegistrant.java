package io.flutter.plugins;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import io.flutter.Log;

import io.flutter.embedding.engine.FlutterEngine;

/**
 * Generated file. Do not edit.
 * This file is generated by the Flutter tool based on the
 * plugins that support the Android platform.
 */
@Keep
public final class GeneratedPluginRegistrant {
  private static final String TAG = "GeneratedPluginRegistrant";
  public static void registerWith(@NonNull FlutterEngine flutterEngine) {
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.camera.CameraPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin camera_android, io.flutter.plugins.camera.CameraPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new com.pravera.flutter_foreground_task.FlutterForegroundTaskPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin flutter_foreground_task, com.pravera.flutter_foreground_task.FlutterForegroundTaskPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.flutter_plugin_android_lifecycle.FlutterAndroidLifecyclePlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin flutter_plugin_android_lifecycle, io.flutter.plugins.flutter_plugin_android_lifecycle.FlutterAndroidLifecyclePlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new com.cloudwebrtc.webrtc.FlutterWebRTCPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin flutter_webrtc, com.cloudwebrtc.webrtc.FlutterWebRTCPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.github.ponnamkarthik.toast.fluttertoast.FlutterToastPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin fluttertoast, io.github.ponnamkarthik.toast.fluttertoast.FlutterToastPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.pathprovider.PathProviderPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin path_provider_android, io.flutter.plugins.pathprovider.PathProviderPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin shared_preferences_android, io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new com.panther_nine.touch_ripple_effect.TouchRippleEffectPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin touch_ripple_effect, com.panther_nine.touch_ripple_effect.TouchRippleEffectPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new live.videosdk.videosdk.VideosdkPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin videosdk, live.videosdk.videosdk.VideosdkPlugin", e);
    }
  }
}
