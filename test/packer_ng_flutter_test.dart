import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:packer_ng_flutter/packer_ng_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('packer_ng_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await PackerNgFlutter.getChannel, '42');
  });
}
