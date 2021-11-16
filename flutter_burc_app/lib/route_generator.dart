import 'package:flutter/material.dart';
import 'package:flutter_burc_app/burc_detay.dart';
import 'package:flutter_burc_app/burc_listesi.dart';
import 'package:flutter_burc_app/modeller/burc.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BurcListesi(),
        );
      case '/burcDetay':
        final Burc secilen = settings.arguments as Burc;
        return MaterialPageRoute(
            builder: (context) => BurcDetay(secilenBurc: secilen));
    }
  }
}
