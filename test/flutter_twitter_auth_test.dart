import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_twitter_auth/flutter_twitter_auth.dart';
import 'package:flutter_twitter_auth/flutter_twitter_auth_platform_interface.dart';
import 'package:flutter_twitter_auth/flutter_twitter_auth_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterTwitterAuthPlatform
    with MockPlatformInterfaceMixin
    implements FlutterTwitterAuthPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterTwitterAuthPlatform initialPlatform = FlutterTwitterAuthPlatform.instance;

  test('$MethodChannelFlutterTwitterAuth is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterTwitterAuth>());
  });

  test('getPlatformVersion', () async {
    FlutterTwitterAuth flutterTwitterAuthPlugin = FlutterTwitterAuth();
    MockFlutterTwitterAuthPlatform fakePlatform = MockFlutterTwitterAuthPlatform();
    FlutterTwitterAuthPlatform.instance = fakePlatform;

    expect(await flutterTwitterAuthPlugin.getPlatformVersion(), '42');
  });
}
