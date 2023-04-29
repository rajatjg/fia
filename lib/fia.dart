
import 'dart:async';

import 'package:flutter/services.dart';

class Fia {
  static const MethodChannel _channel = MethodChannel('fia');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
