import 'package:dexian/config/api/app_endpoints.dart';
import 'package:dexian/config/flavor/flavor_config.dart';
import 'package:dexian/main_common.dart';
import 'config/theme/core_theme.dart' as theme;

void main() {
  final simpsonsConfig = FlavorConfig()
    ..appTitle = 'Simpons'
    ..apiEndpoint = {
      Endpoints.items: AppEndpoints.simpsons,
      Endpoints.details: AppEndpoints.simpsons,
    }
    ..imageLocation = 'https://api.sample.com/images'
    ..theme = theme.themeLight;

  mainCommon(simpsonsConfig);
}
