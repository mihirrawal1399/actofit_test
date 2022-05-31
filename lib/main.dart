import 'package:flutter/material.dart';
import 'package:location_app_test/routes.dart';
import 'package:location_app_test/views/login_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashRoute,
      routes: routes,
      theme: ThemeData.dark(),
      home: LoginView(),
      debugShowCheckedModeBanner: false,
    );
  }
}


