import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_application/pages/splash_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1200,
        minWidth: 400,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.resize(768, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        ],
      ),
      debugShowCheckedModeBanner: false,
      title: 'Future Job',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
