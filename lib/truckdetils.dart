
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_1/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';


class TruckDetils extends StatefulWidget {
  const TruckDetils({Key? key}) : super(key: key);

  @override
  State<TruckDetils> createState() => _TruckDetilsState();
}


class _TruckDetilsState extends State<TruckDetils> {
  @override


  var firstproviderfalse;
  var firstprovidertrue;

  @override
  Widget build(BuildContext context) {
    firstproviderfalse = Provider.of<first_provider>(context, listen: false);
    firstprovidertrue = Provider.of<first_provider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: WebView(javascriptMode: JavascriptMode.unrestricted,
          initialUrl:("${firstproviderfalse.selectv.url}"),
        ),
      ),
    );
  }
}
