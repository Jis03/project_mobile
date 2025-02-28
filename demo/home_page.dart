import 'package:flutter/material.dart';
import 'package:flutter_application_test/screens/signUp_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(60, 100, 60, 0),
        child: SingleChildScrollView(
          //SingleChildScrollView ป้องกันการเกิด button overflow
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo-app-w.png",
                height: 100,
                width: 100,
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 350,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/google-icon.png",
                    height: 20,
                    width: 20,
                  ),
                  label: Text(
                    "Sign in with Google ",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Expanded(
                    child: Divider(color: Colors.white, thickness: 1),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "or",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(color: Colors.white, thickness: 1),
                  ),
                ],
              ),

              SizedBox(height: 20), // เพิ่มระยะห่าง 20px ระหว่างปุ่ม

              SizedBox(
                width: 350,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegiterScreen();
                    }));
                  },
                  label: Text(
                    "Create account",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
