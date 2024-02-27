import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_twitter_auth_method_channel.dart';

abstract class FlutterTwitterAuthPlatform extends PlatformInterface {
  /// Constructs a FlutterTwitterAuthPlatform.
  FlutterTwitterAuthPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterTwitterAuthPlatform _instance = MethodChannelFlutterTwitterAuth();

  /// The default instance of [FlutterTwitterAuthPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterTwitterAuth].
  static FlutterTwitterAuthPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterTwitterAuthPlatform] when
  /// they register themselves.
  static set instance(FlutterTwitterAuthPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
