import 'dart:io';

import 'package:flutter/material.dart';
import 'package:native_device_features_app/models/place.dart';

class GreatePlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(
    String title,
    File image,
  ) {
    final newPlace = Place(
      id: DateTime.now().toString(),
      title: title,
      image: image,
      location: null,
    );

    _items.add(newPlace);
    notifyListeners();
  }
}
