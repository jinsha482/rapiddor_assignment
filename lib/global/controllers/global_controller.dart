// ignore_for_file: use_build_context_synchronously


import 'package:flutter/material.dart';



class GlobalController with ChangeNotifier {
  //*---------------------------------------------------- Api Loading
  bool _apiLoading = false;
  bool apiCallLoading = false;
  bool get apiLoading => _apiLoading;
  void changeApiLoading(bool loading) {
    _apiLoading = loading;
    notifyListeners();
  }

}