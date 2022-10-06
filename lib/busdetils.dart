
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_1/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';


class BusDetils extends StatefulWidget {
  const BusDetils({Key? key}) : super(key: key);

  @override
  State<BusDetils> createState() => _BusDetilsState();
}


class _BusDetilsState extends State<BusDetils> {
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
