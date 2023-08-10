import 'package:dexian/config/preferences/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

/// This is the [Landing Page] where the users are redirect when the app run
class HomePage extends StatelessWidget {
  static const String route = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    /// The [provider] will handle the theme and maintain persitence
    final appProvider = context.watch<AppProvider>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/dash.gif',
              width: 330,
              height: 330,
              gaplessPlayback: false,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                      side: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                onPressed: () => context.go('/menu'),
                child: Text(
                  'Start',
                  style: TextStyle(
                      fontSize: 30,
                      color: appProvider.isDark
                          ? Theme.of(context).primaryColorDark
                          : Theme.of(context).primaryColorLight,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
