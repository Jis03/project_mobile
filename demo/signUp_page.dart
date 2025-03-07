import 'package:flutter/material.dart';
import 'package:flutter_application_test/model/profile.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

class RegiterScreen extends StatefulWidget {
  const RegiterScreen({super.key});

  @override
  State<RegiterScreen> createState() => _RegiterScreenState();
}

class _RegiterScreenState extends State<RegiterScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(name: '', email: '', password: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Cancel",
            style: GoogleFonts.poppins(
                fontSize: 8, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create your account",
                  style: GoogleFonts.poppins(
                      fontSize: 30, fontWeight: FontWeight.w500),
                ),

                SizedBox(height: 50),

                TextFormField(
                  validator:
                      RequiredValidator(errorText: "Please enter you name"),
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (String? name) {
                    profile.name = name ?? '';
                  },
                  decoration: InputDecoration(
                    label: Text(
                      "Name",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white30,
                    ),
                    hintText: 'Enter your user name',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 16, color: Colors.white30),
                    filled: true,
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 83, 171, 145),
                          width: 2),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                  ),
                  style: TextStyle(color: Colors.white),
                ),

                SizedBox(height: 15),

                // ช่องกรอกข้อมูล (TextFormField) สำหรับ Email
                TextFormField(
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Please enter your email"),
                    EmailValidator(errorText: "Invalid email")
                  ]),
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (String? email) {
                    profile.email = email ?? '';
                  },
                  decoration: InputDecoration(
                    label: Text(
                      "Email",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ), // แสดงคำว่า Email
                    labelStyle: TextStyle(
                      color: Colors.white30, // สีของ label เมื่อไม่ได้โฟกัส
                    ),
                    hintText: 'Enter your email',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 16, color: Colors.white30),
                    filled: true,
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1), // ขอบสีเทาเมื่อไม่ได้โฟกัส
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 83, 171, 145),
                          width: 2), // ขอบสีเขียวเมื่อโฟกัส
                    ),
                    floatingLabelBehavior:
                        FloatingLabelBehavior.auto, // ทำให้ label ย้ายขึ้น
                  ),
                  style: TextStyle(color: Colors.white),
                ),

                SizedBox(height: 15),

                // ช่องกรอกข้อมูล (TextFormField) สำหรับ Password
                TextFormField(
                  validator:
                      RequiredValidator(errorText: "Please enter you password"),
                  obscureText: true,
                  onSaved: (String? password) {
                    profile.password = password ?? '';
                  },
                  decoration: InputDecoration(
                    label: Text(
                      "Password",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ), // แสดงคำว่า Password
                    labelStyle: TextStyle(
                      color: Colors.white30,
                    ),
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(color: Colors.white30),
                    filled: true,
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey, width: 0.1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 83, 171, 145),
                          width: 2),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                  ),
                  style: TextStyle(color: Colors.white),
                ),

                SizedBox(height: 30),

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.end, // จัดตำแหน่งปุ่มไปทางขวา
                  children: [
                    SizedBox(
                      width: 100, // กำหนดความกว้างของปุ่ม
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            print(
                                "name = ${(profile.name)} email = ${(profile.email)} password = ${(profile.password)}");
                            formKey.currentState!.reset();
                          }
                        },
                        child: Text(
                          "Next",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
