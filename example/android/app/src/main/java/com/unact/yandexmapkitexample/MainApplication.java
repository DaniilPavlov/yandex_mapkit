package com.unact.yandexmapkitexample;

import android.app.Application;

import com.yandex.mapkit.MapKitFactory;

public class MainApplication extends Application {
  @Override
  public void onCreate() {
    super.onCreate();
    //MapKitFactory.setLocale("YOUR_LOCALE");
    MapKitFactory.setApiKey("e5a4b5f6-1d50-4f86-a095-4349338c7f12");;
  }
}
