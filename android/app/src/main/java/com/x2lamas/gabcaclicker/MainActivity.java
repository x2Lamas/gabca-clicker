package com.x2lamas.gabcaclicker;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebView;

public class MainActivity extends Activity {
    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        WebView web = new WebView(this);
        web.getSettings().setJavaScriptEnabled(true);
        web.getSettings().setDomStorageEnabled(true); // localStorage pro ukládání skóre
        web.setBackgroundColor(0xFF0A0620);
        web.loadUrl("file:///android_asset/index.html");
        setContentView(web);
    }
}
