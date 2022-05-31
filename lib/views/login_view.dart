import 'package:flutter/material.dart';
import 'package:location_app_test/shared_pref_service.dart';

import '../routes.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final PrefService _prefService = PrefService();
  final name = TextEditingController();
  final mobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login"),
      ),
      body: Center(
        child: Container(
          width: 400.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: name,
                decoration: InputDecoration(
                  border: new OutlineInputBorder(),
                  hintText: "Enter your Name"
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: mobile,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: new OutlineInputBorder(),
                    hintText: "Enter your Mobile Number"
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              ElevatedButton(
                onPressed: () async {
                  _prefService.createCache(mobile.text).whenComplete(() {
                    if (name.text.isNotEmpty && mobile.text.isNotEmpty) {
                      Navigator.of(context).pushNamed(HomeRoute);
                    }
                  });

                },
                child: Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
