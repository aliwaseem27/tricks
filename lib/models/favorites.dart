import 'package:flutter/material.dart';

class Favorites extends ChangeNotifier {
  final List<int> _favoriteList = [];
  List<int> get items => _favoriteList;

  void add (int itemNo){
    _favoriteList.add(itemNo);
    notifyListeners();
  }

  void remove (int itemNo){
    _favoriteList.remove(itemNo);
    notifyListeners();
  }
}