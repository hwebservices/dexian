import 'package:dexian/config/preferences/app_provider.dart';
import 'package:dexian/widgets/custom_avatar.dart';
import 'package:dexian/widgets/custom_card.dart';
import 'package:dexian/widgets/icon_title.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    /// Inject the provider to handle the [DARK MODE] theme
    final appProvider = context.watch<AppProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: UserAvatar(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const IconWithTitle(title: 'Settings', icon: Icons.settings),
            CustomCard(
              child: ListTile(
                leading: const Icon(Icons.light_mode_outlined),
                title: Text('Dark Mode'),
                trailing: Switch(
                  inactiveTrackColor: Colors.grey,
                  value: appProvider.isDark,
                  onChanged: (value) {
                    appProvider
                        .setTheme(value ? ThemeMode.dark : ThemeMode.light);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
