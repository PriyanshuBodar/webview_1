import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_1/provider.dart';
import 'package:webview_1/teb_bar.dart';
import 'package:webview_1/truck.dart';
import 'package:webview_1/truckdetils.dart';

import 'bikedetils.dart';
import 'bikes.dart';
import 'bus.dart';
import 'busdetils.dart';
import 'car.dart';
import 'cardetils.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ListenableProvider<first_provider>(
            create: (context) => first_provider(),
          ),
        ],
       child: MaterialApp(

           debugShowCheckedModeBanner: false,
           routes: {
           '/': (context) => tebbar(),
          'bikes': (context) => Bikes(),
          'bikesdetils': (context) => BikesDetils(),
          'car': (context) => Car(),
          'cardetils': (context) => CarDetils(),
          'truck': (context) => Truck(),
          'truckdetils': (context) => TruckDetils(),
          'bus': (context) => Bus(),
          'bus': (context) => BusDetils(),


        },
      ),
      ),
  );
}
