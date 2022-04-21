import 'package:generator/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:generator/widget/drawer.dart';
import 'dart:math';

// Drawer(
// child: ListView(
// children: [
// ListTile(
// title: Text(S.of(context).fromDrawerMain),
// onTap: () {
// Navigator.pushNamed(context, '/MainPage');
// }),
// ListTile(
// title: Text(S.of(context).fromDrawerCart),
// ),
// ListTile(
// title: Text(S.of(context).fromDrawerSettings),
// onTap: () {
// Navigator.pushNamed(context, '/Settings');
// },
// ),
// ListTile(
// title: Text(S.of(context).fromDrawerContact),
// onTap: () {
// Navigator.pushNamed(context, '/ContactUs');
// },
// ),
// ],
// ),
// ),
class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool showPassWord = true;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        drawer: Container(
          height: screenSize.height,
          width: screenSize.width * 2 / 3,
          child: CustomDrawer(),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            S.of(context).fromLogAppbar,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.red, Colors.blue])),
          ),
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          var width = constraints.maxWidth;
          var height = constraints.maxHeight;
          var padding1 = 0.03 * width;
          return Center(
            child: Container(
              //color: Colors.blue,
              width: width - 2 * padding1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    //color: Colors.grey,
                    width: width - 2 * padding1,
                    height: height / 10,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        S.of(context).fromLogUser,
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w300,
                          fontSize: min(width, height) / 25,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    //color: Colors.blueGrey,
                    width: width - 2 * padding1,
                    height: height / 6,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_outline,
                          size: min(width, height) / 18,
                        ),
                        border: OutlineInputBorder(),
                        labelText: S.of(context).fromLogUserE,
                      ),
                    ),
                  ),
                  Container(
                    width: width - 2 * padding1,
                    height: height / 10,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        S.of(context).fromLogPass,
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w300,
                          fontSize: min(width, height) / 25,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: width - 2 * padding1,
                    height: height / 6,
                    child: TextField(
                      obscureText: showPassWord ? true : false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.vpn_key_outlined,
                          size: min(width, height) / 18,
                        ),
                        border: OutlineInputBorder(),
                        labelText: S.of(context).fromLogPassE,
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
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Center(
                    child: Container(
                      width: width / 3,
                      height: height / 14,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/MainPage');
                        },
                        child: AutoSizeText(S.of(context).fromLogButton),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.redAccent),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // color: Colors.grey,
                          height: height / 10,
                          width: width / 1.5,
                          child: Center(
                            child: AutoSizeText(
                              S.of(context).fromLogProblem,
                              style: TextStyle(
                                  letterSpacing: 0.5,
                                  fontSize: min(width, height) / 25),
                            ),
                          ),
                        ),
                        Container(
                          // color: Colors.blueGrey,
                          height: height / 10,
                          width: width / 4,
                          child: TextButton(
                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all(
                                  Size(width / 20, height / 12),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/SignUp');
                              },
                              child: AutoSizeText(
                                S.of(context).fromLogSign,
                                style: TextStyle(
                                    fontSize: min(width, height) / 25),
                              )),
                        ),
                      ],
                    ),
                    width: width - 2 * padding1,
                    height: height / 10,
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
