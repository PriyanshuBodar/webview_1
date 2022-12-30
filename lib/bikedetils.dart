
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';
import 'package:webview_1/provider.dart';

class BikesDetils extends StatefulWidget {
  const BikesDetils({Key? key}) : super(key: key);

  @override
  State<BikesDetils> createState() => _BikesDetilsState();
}


class _BikesDetilsState extends State<BikesDetils> {
  @override


  var firstproviderfalse;
  var firstprovidertrue;

//  late WebViewController _webViewController;
  late InAppWebViewController _webViewController;
  String url = "";
  double progress = 0;
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
            body: InAppWebView(
              initialUrlRequest: URLRequest(url:Uri.parse("${firstproviderfalse.selectv.url}") ),
              initialOptions: InAppWebViewGroupOptions(
                  crossPlatform: InAppWebViewOptions(
                    disableHorizontalScroll: true,
                    disableContextMenu: true,
                  )),
              onWebViewCreated: (InAppWebViewController controller) {
                _webViewController = controller;
              },
              onLoadStart: (InAppWebViewController controller,url) {
                setState(() {
                  this.url = url as String;
                });
              },
              onLoadStop:
                  (InAppWebViewController controller,url) async {
                setState(() {
                  this.url = url as String;
                });
              },
              onProgressChanged:
                  (InAppWebViewController controller, int progress) {
                setState(() {
                  this.progress = progress / 100;
                });
              },
            ),
          ),
          //javascriptMode: JavascriptMode.unrestricted,
          //initialUrl:("${firstproviderfalse.selectv.url}"),
          //  onWebViewCreated: (WebViewController webViewController){
          //    _webViewController = webViewController;
          //  },
        )
    );
  }
}

