import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_1/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'model.dart';

class Car extends StatefulWidget {
  const Car({Key? key}) : super(key: key);

  @override
  State<Car> createState() => _CarState();
}

class _CarState extends State<Car> {
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
          itemCount: firstproviderfalse.l2.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                firstproviderfalse.selectv = Modeldata(
                  url: firstproviderfalse.l2[index].url,
                );
                Navigator.pushNamed(context, 'cardetils');
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(firstproviderfalse.l2[index].image,
                            fit: BoxFit.contain)),
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
