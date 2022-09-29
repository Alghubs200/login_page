import 'dart:html';

import 'constant.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  bgImage,
                  height: height * 0.40,
                  width: width,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: height * 0.40,
                  width: width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.white]),
                  ),
                  // color: Colors.orange.withOpacity(0.3),
                ),
              ],
            ),
            Center(
              child: Text(
                appName,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
            ),
            Center(
              child: Text(
                slogan,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20, bottom: 10),
              child: Container(
                child: Text(
                  "$loginstring",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        primaryColor.withOpacity(0.3),
                        Colors.transparent,
                      ],
                    ),
                    border: Border(
                        left: BorderSide(color: primaryColor, width: 5))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextField(
                  decoration: InputDecoration(
                      focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primaryColor)),
                      prefixIcon: Icon(
                        Icons.email,
                        color: primaryColor,
                      ),
                      labelText: "EMAIL ADDRESS",
                      labelStyle:
                          TextStyle(color: primaryColor, fontSize: 16))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primaryColor)),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: primaryColor,
                      ),
                      labelText: "PASSWORD",
                      labelStyle:
                          TextStyle(color: primaryColor, fontSize: 16))),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  ForgotText,
                  style: TextStyle(color: Colors.green),
                )),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text("Login to Account"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
