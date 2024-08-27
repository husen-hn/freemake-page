//
//  bootstrap.dart
//  Created on 2022 22 February.
//  Copyright © Freemake Flutter application,
//  Developed by 2022 Hossein HassanNejad.
//

import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freemake_page/apps/home/home_repository.dart';
import 'package:freemake_page/apps/observer.dart';
import 'package:freemake_page/templates/app/app.dart';

Future<void> bootstrap() async {
  ///
  /// print all state change errors about [Bloc] library in console.
  ///
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  ///
  /// observes all state changes about [Bloc] library.
  ///
  Bloc.observer = const Observer();

  final HomeRepository homeRepository = HomeRepository();

  runApp(App(homeRepository: homeRepository));
}
