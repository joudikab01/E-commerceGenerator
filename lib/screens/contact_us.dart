
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:generator/generated/l10n.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'dart:math';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  Future<void>? _launched;
  String _phone = '';

  Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    } else {
      return const Text('');
    }
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://www.cylog.org/headers/';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).fromContactAppbar,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.red, Colors.blueGrey])),
        ),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        var height = constraints.maxHeight;
        var width = constraints.maxWidth;
        var padding = width * 0.03;
        return Center(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: AssetImage("blue1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: width - 2 * padding,
                  height: height / 7,
                  child: TextButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        Size(width / 20, height / 12),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.facebook,
                          size: min(width, height) / 15,
                        ),
                        SizedBox(
                          width: width / 30,
                        ),
                        Container(
                          width: width / 2,
                          height: height / 10,
                          child: Center(
                            child: AutoSizeText(
                              S.of(context).fromContactVisitF,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: min(width, height) / 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      _launched = _launchInBrowser(
                          'https://www.facebook.com/25-Stars-101814431258655/');
                    },
                  ),
                ),
                Container(
                  width: width - 2 * padding,
                  height: height / 7,
                  child: TextButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        Size(width / 20, height / 12),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.mailBulk,
                          size: min(width, height) / 15,
                        ),
                        SizedBox(
                          width: width / 30,
                        ),
                        Container(
                          width: width / 2,
                          height: height / 10,
                          child: Center(
                            child: AutoSizeText(
                              S.of(context).fromContactVisitE,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: min(width, height) / 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      _launched = _launchInBrowser(toLaunch);
                    },
                  ),
                ),
                Container(
                  width: width - 2 * padding,
                  height: height / 7,
                  child: TextButton(
                    onPressed: () {
                      _launched = _makePhoneCall('tel:$_phone');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.mobile,
                          size: min(width, height) / 15,
                        ),
                        SizedBox(
                          width: width / 30,
                        ),
                        Container(
                          width: width / 2,
                          height: height / 10,
                          child: Center(
                            child: AutoSizeText(
                              S.of(context).fromContactPhone,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: min(width, height) / 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FutureBuilder<void>(future: _launched, builder: _launchStatus),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Container(
                //       width: width/2,
                //       height: height/7,
                //       child: TextButton(
                //         onPressed: () {},
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             FaIcon(FontAwesomeIcons.copy,size: average/20,),
                //             SizedBox(
                //               width: width/30,
                //             ),
                //             Container(
                //               width: width/2,
                //               height: height/10,
                //               child: Center(
                //                 child: AutoSizeText(
                //                   'Copy Number',
                //                   style: TextStyle(
                //                     color: Colors.white,
                //                     fontWeight: FontWeight.w700,
                //                     fontSize: average/30,
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //     Container(
                //       width: width/2,
                //       height: height/7,
                //       child: TextButton(
                //         onPressed: () {},
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             FaIcon(FontAwesomeIcons.phone,size: average/20,),
                //             SizedBox(
                //               width: width/30,
                //             ),
                //             Container(
                //               width: width/2,
                //               height: height/10,
                //               child: Center(
                //                 child: AutoSizeText(
                //                   'Call us',
                //                   style: TextStyle(
                //                     color: Colors.white,
                //                     fontWeight: FontWeight.w700,
                //                     fontSize: average/30,
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
