
import 'package:flutter/material.dart';
import 'package:generator/generated/l10n.dart';
import 'dart:math';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:provider/provider.dart';
import 'package:generator/widget/theme_model.dart';

enum options { English, Arabic }
enum optionsT { Light, Dark }

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  // late Locale _userLocale;
  // @override
  // void didChangeDependencies() {
  //   final newLocale = Localizations.localeOf(context);
  //
  //   if (newLocale != _userLocale) {
  //     _userLocale = newLocale;
  //   }
  //   super.didChangeDependencies();
  // }

  options _lan = options.English;
  optionsT _theme = optionsT.Light;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifier, child) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            S.of(context).fromSettingsAppbar,
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
          var height = constraints.maxHeight;
          var width = constraints.maxWidth;
          var padding = width * 0.03;
          return Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: AssetImage("control.jpg"),
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
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: AutoSizeText(
                      S.of(context).fromSettingsChange,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: min(width, height) / 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: width - 2 * padding,
                  height: height / 7,
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      S.of(context).fromSettingsLan,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: min(width, height) / 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: width / 2,
                  height: height / 8,
                  child: ListTile(
                    title: AutoSizeText(
                      'English',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: min(width, height) / 25,
                          fontWeight: FontWeight.w500),
                    ),
                    leading: Radio(
                      fillColor: MaterialStateProperty.all(Colors.white),
                      value: options.English,
                      groupValue: _lan,
                      onChanged: (options? value) {
                        setState(() {
                          _lan = value!;
                        });
                        if (_lan == options.Arabic)
                          S.load(Locale('ar'));
                        else
                          S.load(Locale('en'));
                      },
                    ),
                  ),
                ),
                Container(
                  width: width / 2,
                  height: height / 8,
                  child: ListTile(
                    title: AutoSizeText(
                      'العربية',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: min(width, height) / 25,
                          fontWeight: FontWeight.w500),
                    ),
                    leading: Radio(
                      fillColor: MaterialStateProperty.all(Colors.white),
                      value: options.Arabic,
                      groupValue: _lan,
                      onChanged: (options? value) {
                        setState(() {
                          _lan = value!;
                        });
                        if (_lan == options.Arabic)
                          S.load(Locale('ar'));
                        else
                          S.load(Locale('en'));
                      },
                    ),
                  ),
                ),
                Container(
                  width: width - 2 * padding,
                  height: height / 7,
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      'Theme',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: min(width, height) / 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: width / 2,
                  height: height / 8,
                  child: ListTile(
                    title: AutoSizeText(
                      'Light',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: min(width, height) / 25,
                          fontWeight: FontWeight.w500),
                    ),
                    leading: Radio(
                      fillColor: MaterialStateProperty.all(Colors.white),
                      value: optionsT.Light,
                      groupValue: _theme,
                      onChanged: (optionsT? value) {
                        _theme = value!;
                        if (_theme == optionsT.Light)
                          themeNotifier.isDark = false;
                        else
                          themeNotifier.isDark = true;
                        // themeNotifier.isDark
                        //     ? themeNotifier.isDark = false
                        //     : themeNotifier.isDark = true;
                      },
                    ),
                  ),
                ),
                Container(
                  width: width / 2,
                  height: height / 8,
                  child: ListTile(
                    title: AutoSizeText(
                      'Dark',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: min(width, height) / 25,
                          fontWeight: FontWeight.w500),
                    ),
                    leading: Radio(
                      fillColor: MaterialStateProperty.all(Colors.white),
                      value: optionsT.Dark,
                      groupValue: _theme,
                      onChanged: (optionsT? value) {
                        _theme = value!;
                        if (_theme == optionsT.Light)
                          themeNotifier.isDark = false;
                        else
                          themeNotifier.isDark = true;
                        // themeNotifier.isDark
                        //     ? themeNotifier.isDark = false
                        //     : themeNotifier.isDark = true;
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      );
    });
  }
}
