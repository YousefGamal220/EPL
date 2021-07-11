import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:get/get.dart';

class webView extends StatefulWidget {
  @override
  _webViewState createState() => _webViewState();
}

TextStyle _textStyletitle = TextStyle(fontSize: 18);

class _webViewState extends State<webView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "الاخبار".tr,
            style: _textStyletitle,
          ),
        ),
        body: WebView(
          initialUrl: "https://www.skysports.com/",
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
