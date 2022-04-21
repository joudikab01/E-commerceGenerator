import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:generator/screens/cart.dart';
import 'package:generator/screens/contact_us.dart';
import 'package:generator/screens/log_in.dart';
import 'package:generator/screens/product_details.dart';
import 'package:generator/screens/product_list.dart';
import 'package:generator/screens/sign_up.dart';
import 'package:generator/screens/settings.dart';
import 'package:generator/generated/l10n.dart';
import 'package:generator/store/my_store.dart';
import 'package:generator/widget/theme_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MyStore>(
          create: (_) => MyStore(),
        ),
        ChangeNotifierProvider<ThemeModel>(
          create: (_) => ThemeModel(),
        ),
      ],
      child: Consumer(builder: (context, ThemeModel themeNotifier, child) {
        return MaterialApp(
          theme: themeNotifier.isDark ? ThemeData.dark() : ThemeData.light(),
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => LogIn(),
            '/SignUp': (context) => SignUp(),
            '/MainPage': (context) => ProductList(),
            '/ContactUs': (context) => ContactUs(),
            '/Settings': (context) => Settings(),
            '/ProductDetails': (context) => ProductDetails(),
            '/Cart': (context) => Cart(),
          },
        );
      }),
    );
  }
}
