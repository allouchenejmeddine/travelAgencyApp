import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/views/homepage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash_bg.png"),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let's make",
                    style: GoogleFonts.poppins(fontSize: 50, color: Colors.white),
                  ),
                  Text(
                    "Your dream",
                    style: GoogleFonts.poppins(fontSize: 50,  color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "vacation.",
                    style: GoogleFonts.poppins(fontSize: 50,  color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: (){
                    Get.to(()=> Homepage());
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(250, 50)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    )),
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    elevation: MaterialStateProperty.all(50)
                  ),
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
