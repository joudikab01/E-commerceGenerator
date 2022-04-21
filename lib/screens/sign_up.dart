
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:generator/generated/l10n.dart';
import 'dart:math';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showPassWord = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).fromSignAppbar,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.red, Colors.blue])),
        ),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        var width = constraints.maxWidth;
        var height = constraints.maxHeight;
        var padding = 0.03 * width;
        var average = (width + height) / 2;
        return Center(
          child: Container(
            width: width - 2 * padding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width - 2 * padding,
                  height: height / 14,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText(
                      S.of(context).fromSignUser,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        fontSize: min(width, height) / 25,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: width - 2 * padding,
                  height: height / 14,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: S.of(context).fromSignNameE,
                        prefixIcon: Icon(
                          Icons.person_outline,
                          size: min(width, height) / 18,
                        )),
                  ),
                ),
                Container(
                  width: width - 2 * padding,
                  height: height / 14,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText(
                      S.of(context).fromSignEmail,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        fontSize: min(width, height) / 25,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: width - 2 * padding,
                  height: height / 14,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: S.of(context).fromSignEmailE,
                      prefixIcon: Icon(Icons.mail_outline,
                          size: min(width, height) / 18),
                    ),
                  ),
                ),
                Container(
                  width: width - 2 * padding,
                  height: height / 14,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText(
                      S.of(context).fromSignPassword,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        fontSize: min(width, height) / 25,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: width - 2 * padding,
                  height: height / 14,
                  child: TextField(
                    obscureText: showPassWord ? true : false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: S.of(context).fromSignPasswordE,
                        prefixIcon: Icon(
                          Icons.vpn_key_outlined,
                          size: min(width, height) / 18,
                        ),
                        suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              showPassWord = !showPassWord;
                            });
                          },
                          icon: Icon(
                            showPassWord ? Ionicons.eye_outline : Ionicons.eye,
                            size: min(width, height) / 18,
                          ),
                        )),
                  ),
                ),
                Container(
                  width: width - 2 * padding,
                  height: height / 14,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText(
                      S.of(context).fromSignPasswordC,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        fontSize: min(width, height) / 25,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: width - 2 * padding,
                  height: height / 14,
                  child: TextField(
                    obscureText: showPassWord ? true : false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: S.of(context).fromSignPasswordC,
                      prefixIcon: Icon(
                        Icons.vpn_key_outlined,
                        size: min(width, height) / 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 14,
                ),
                Center(
                  child: Container(
                    width: width / 3,
                    height: height / 14,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/MainPage');
                      },
                      child: AutoSizeText(S.of(context).fromSignButton),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.redAccent),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
