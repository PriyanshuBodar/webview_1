
import 'package:flutter/material.dart';
import 'package:webview_1/truck.dart';
import 'bikes.dart';
import 'bus.dart';
import 'car.dart';


class tebbar extends StatefulWidget {
  const tebbar({Key? key}) : super(key: key);

  @override
  State<tebbar> createState() => _tebbarState();
}

class _tebbarState extends State<tebbar> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Vehicle Infoemation"),
            centerTitle: true,
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(text: "Bikes"),
                Tab(text: "Car"),
                Tab(text: "Truck"),
                Tab(text: "Bus"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Bikes(),
              Car(),
              Truck(),
              Bus(),


            ],
          ),
        ),
      ),
    );
  }
}
