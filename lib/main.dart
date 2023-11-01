import 'package:flutter/material.dart';
import 'package:store_app/constants/app_routes.dart';
import 'package:store_app/routes.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // theme: ThemeData(
      //   appBarTheme: const AppBarTheme(
      //     backgroundColor: Colors.white,
      //   ),
      //   colorScheme: ColorScheme.fromSwatch(
      //     primarySwatch: Colors.,
      //   ),
      // ),

////////////////////////

      // theme: ThemeData(
      //   useMaterial3: true,

      //   // Define the default brightness and colors.
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: Colors.white,
      //     // ···
      //     brightness: Brightness.light,
      //   ),

      //   // Define the default `TextTheme`. Use this to specify the default
      //   // text styling for headlines, titles, bodies of text, and more.
      //   textTheme: TextTheme(
      //     displayLarge: const TextStyle(
      //       fontSize: 72,
      //       fontWeight: FontWeight.bold,
      //     ),
      //     // ···
      //     titleLarge: GoogleFonts.oswald(
      //       fontSize: 30,
      //       fontStyle: FontStyle.italic,
      //     ),
      //     bodyMedium: GoogleFonts.merriweather(),
      //     displaySmall: GoogleFonts.pacifico(),
      //   ),
      // ),

      routes: routes,
      initialRoute: AppRoutes.homePage,
    );
  }
}
