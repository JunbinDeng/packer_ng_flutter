
import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';

class PackerNgFlutter {
  static const MethodChannel _channel =
      const MethodChannel('packer_ng_flutter');
  
  static String _packerChannel;

  static Future<String> get getChannel async {
    if (!Platform.isAndroid) {
      return Future.value('');
    }
    if (_packerChannel != null) {
      return _packerChannel;
    }
    _packerChannel = await _channel.invokeMethod('getChannel');
    return _packerChannel;
  }
}
