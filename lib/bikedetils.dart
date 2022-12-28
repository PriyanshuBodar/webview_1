
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_1/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';


class BikesDetils extends StatefulWidget {
  const BikesDetils({Key? key}) : super(key: key);

  @override
  State<BikesDetils> createState() => _BikesDetilsState();
}


class _BikesDetilsState extends State<BikesDetils> {
  @override


  var firstproviderfalse;
  var firstprovidertrue;

  late WebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    firstproviderfalse = Provider.of<first_provider>(context, listen: false);
    firstprovidertrue = Provider.of<first_provider>(context, listen: true);
    return WillPopScope(
      onWillPop: ()async{
        if(await _webViewController.canGoBack())
          {
            _webViewController.goBack();
            return false;
          }
        else
          {
            return true;
          }
        },
      child: SafeArea(
        child: Scaffold(
          body: WebView(
            javascriptMode: JavascriptMode.unrestricted,
           initialUrl:("${firstproviderfalse.selectv.url}"),
            onWebViewCreated: (WebViewController webViewController){
              _webViewController = webViewController;
            },
          ),
        ),
      ),
    );
  }
}
