
import 'flutter_twitter_auth_platform_interface.dart';

class FlutterTwitterAuth {
  Future<String?> getPlatformVersion() {
    return FlutterTwitterAuthPlatform.instance.getPlatformVersion();
  }
}
