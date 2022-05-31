
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:location_app_test/shared_pref_service.dart';

import '../routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  final PrefService _prefService = PrefService();
  
  @override
  void initState(){
    _prefService.readCache("mobile").then((value) {
      if (value!=null){
        return Timer(Duration(seconds: 2),
            ()=> Navigator.of(context).pushNamed(HomeRoute));
      }
      else{
        return Timer(Duration(seconds: 2),
                ()=> Navigator.of(context).pushNamed(LoginRoute));
      }
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/assets/actofit.jpeg",
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Actofit by Mihir Rawal",
                  style: GoogleFonts.comfortaa().copyWith(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
