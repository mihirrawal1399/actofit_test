import 'package:flutter/material.dart';
import 'package:location_app_test/routes.dart';
import 'package:location_app_test/shared_pref_service.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final PrefService _prefService = PrefService();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Location updates"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Home"),
            ElevatedButton(
                onPressed:() {
                  _prefService.removeCache("mobile").whenComplete(() {
                    Navigator.of(context).pushNamed(LoginRoute);
                  });
                },
                child: const Text("Log out")
            )
          ],
        ),
      ),
    );
  }
}
