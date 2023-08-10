import 'package:dexian/config/api/app_endpoints.dart';
import 'package:dexian/config/flavor/flavor_config.dart';
import 'package:dexian/main_common.dart';
import 'config/theme/core_theme.dart' as theme;

void main() {
  final wireConfig = FlavorConfig()
    ..appTitle = 'Wire'
    ..apiEndpoint = {
      Endpoints.items: AppEndpoints.wire,
      Endpoints.details: AppEndpoints.wire,
    }
    ..imageLocation = 'https://api.sample.com/images'
    ..theme = theme.themeDark;

  mainCommon(wireConfig);
}
