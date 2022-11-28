import 'package:canopy_edu/screens/splash/components/slider_creen.dart';
import 'package:flutter/material.dart';
import 'package:canopy_edu/routes.dart';
import 'package:canopy_edu/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'app_localization.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      supportedLocales: [Locale('en', 'US'), Locale('ar', 'EG')],
      localizationsDelegates: [
        AppLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (Locale supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode &&
              supportedLocale.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      initialRoute: Slider_creen.routeName,
      routes: routes,
    );
  }
}
