import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:routes_provider/models/settings_data.dart';
import 'package:routes_provider/models/user.dart';
import 'package:routes_provider/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building MyApp');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => User(),
        ),
        ChangeNotifierProvider(
          create: (context) => SettingsData(),
        ),
      ],
      builder: (context, child) {
         return const MaterialApp(
        initialRoute: RouteManager.loginPage,
        onGenerateRoute: RouteManager.generateRoute,
         );
      }
    );
  }
}
