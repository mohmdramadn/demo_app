import 'package:demo_app/core/styling/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/routes/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      debugShowCheckedModeBanner: false,
      theme: MaterialTheme().theme(MaterialTheme.darkScheme()),
      onGenerateRoute: onGenerateRoute,
    );
  }
}
