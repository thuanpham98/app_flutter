import'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class myCustomWebView extends StatelessWidget {
  final String url;
  final String title;

  myCustomWebView({@required this.url,@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child:  WebviewScaffold(
          url: url,
          appBar:  AppBar(title: Text(title),centerTitle: true,),
          withZoom: true,
          withLocalStorage: true,
          withJavascript: true,
          ),
      ),
    );
  }
}