import 'flutter_twitter_auth_platform_interface.dart';

class FlutterTwitterAuth {
  /**
   * The API key used to authenticate the call
   */
  final String? apiKey;
  final String? apiSecretKey;
  final String? redirectUri;

  FlutterTwitterAuth(
      {required this.apiKey,
      required this.apiSecretKey,
      required this.redirectUri});




  Future<String?> getPlatformVersion() {
    return FlutterTwitterAuthPlatform.instance.getPlatformVersion();
  }
}
