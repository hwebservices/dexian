import 'package:dexian/config/flavor/flavor_config.dart';
import 'package:dexian/config/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:provider/provider.dart' as provider;
import 'config/preferences/app_provider.dart';
import 'config/theme/core_theme.dart' as theme;

var flavorConfigProvider;

void mainCommon(FlavorConfig config) {
  flavorConfigProvider = StateProvider((ref) => config);
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return provider.MultiProvider(
        providers: [
          provider.ChangeNotifierProvider(create: (_) => AppProvider())
        ],
        child: provider.Consumer<AppProvider>(
            builder: (context, value, _) => MaterialChild(provider: value)));
  }
}

/// This is an alternative approach to handle multiple state management: [Provider] + [Bloc] + [Cubit] + [GetX] + [Riverpod]
/// A new MaterialChild class will handle to [Provider] initialization as well as the [Shared Preferences]
/// [Theme] selection is managed by [Shared Preferences]
class MaterialChild extends StatefulWidget {
  final AppProvider provider;
  const MaterialChild({Key? key, required this.provider}) : super(key: key);

  @override
  State<MaterialChild> createState() => _MaterialChildState();
}

class _MaterialChildState extends State<MaterialChild> {
  void initAppTheme() {
    final appProviders = AppProvider.state(context);
    appProviders.init();
  }

  @override
  void initState() {
    initAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: theme.themeLight,
        darkTheme: theme.themeDark,
        themeMode: widget.provider.themeMode,

        /// Using [Responsive] package to handle the UI resize for any device
        builder: (context, child) => ResponsiveBreakpoints.builder(
              child: child!,
              breakpoints: [
                const Breakpoint(start: 0, end: 450, name: MOBILE),
                const Breakpoint(start: 451, end: 800, name: TABLET),
                const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
              ],
            ),
        routerConfig: AppRoutes.router);
  }
}
