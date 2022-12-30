import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_1/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'model.dart';

class Bus extends StatefulWidget {
  const Bus({Key? key}) : super(key: key);

  @override
  State<Bus> createState() => _BusState();
}

class _BusState extends State<Bus> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid){
      WebView.platform = AndroidWebView();
    }
  }
  var firstproviderfalse;
  var firstprovidertrue;
  @override
  Widget build(BuildContext context) {
    firstproviderfalse = Provider.of<first_provider>(context, listen: false);
    firstprovidertrue = Provider.of<first_provider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: firstproviderfalse.l3.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                firstproviderfalse.selectv = Modeldata(
                  url: firstproviderfalse.l3[index].url,
                );
                Navigator.pushNamed(context, 'bikesdetils');
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(firstproviderfalse.l3[index].image,
                            fit: BoxFit.fill)),
                  ),

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
