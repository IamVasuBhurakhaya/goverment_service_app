import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  Connectivity connectivity = Connectivity();
  bool isConnect = false;
  void checkConnection() async {
    StreamSubscription<List<ConnectivityResult>> results = (await Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> result) {
      if (result.contains(ConnectivityResult.none)) {
        isConnect = false;
      } else {
        isConnect = true;
      }
      notifyListeners();
    }));
  }
}
