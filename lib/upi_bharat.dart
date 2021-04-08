import 'dart:async';

import 'package:flutter/services.dart';

class UpiBharat {
  static const MethodChannel _channel = const MethodChannel('upi_bharat');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> defaultGreeting(String name) async {
    final String greeting =
        await _channel.invokeMethod('getDefaultGreeting', {'name': name});
    return greeting;
  }
}
