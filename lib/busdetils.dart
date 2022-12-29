import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:provider/provider.dart';
import 'package:webview_1/provider.dart';

class BusDetils extends StatefulWidget {
  const BusDetils({Key? key}) : super(key: key);

  @override
  State<BusDetils> createState() => _BusDetilsState();
}

class _BusDetilsState extends State<BusDetils> {
  @override
  var firstproviderfalse;
  var firstprovidertrue;

  final flutterWebviewPlugin = new FlutterWebviewPlugin();

  @override
  Widget build(BuildContext context) {
    firstproviderfalse = Provider.of<first_provider>(context, listen: false);
    firstprovidertrue = Provider.of<first_provider>(context, listen: true);
    return const SafeArea(
      child: WebviewScaffold(
        url: 'https://www.youtube.com/',
        mediaPlaybackRequiresUserGesture: true,
        withZoom: true,
        withLocalStorage: true,
        hidden: true,
      ),
      // WebView(javascriptMode: JavascriptMode.unrestricted,
      //   initialUrl:("${firstproviderfalse.selectv.url}"),
      // ),
    );
  }
}
