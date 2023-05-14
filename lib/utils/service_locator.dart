import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../services/navigation_service.dart';
import '../services/storage_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  try {
    locator.registerSingleton(StorageService());
    locator.registerSingleton(NavigationService());
  } catch (err) {
    debugPrint(err.toString());
  }
}
