import 'package:dexian/widgets/custom_avatar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: UserAvatar(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    context.go('/simpsons');
                  },
                  child: Text('Press to fetch data')),
            ),
          ],
        ),
      ),
    );
  }
}
