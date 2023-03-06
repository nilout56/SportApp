import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_view/source/presentation/pages/splash_view.dart';
import 'package:splash_view/source/presentation/widgets/done.dart';
import 'package:sumang/Login/login_screen.dart';
import 'package:sumang/Login/signin.dart';
import 'package:sumang/Screens/all.dart';
import 'package:sumang/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
     // home: SignIn()
      home: HomeScreen()
  //      SplashView(
  //         //loadingIndicator: Lottie.asset('assets/images/indicator.zip'),
  //       logo: Container(
  //         width: 100,
  //         height: 100,
  //         child: Image.asset('assets/images/LOGOAPP.png')),
  //       done: Done(SignIn()),
  //      showStatusBar: true,
  //      duration: Duration(seconds: 10),
  //      //title: Text('ຍິນດີຕ້ອນຮັບ',style: GoogleFonts.notoSansLao(fontSize: 34,fontWeight: FontWeight.bold,color: Color(0xff284F5B)),),
  //   //     gradient: LinearGradient(
  //   // begin: Alignment.topCenter,
  //   // end: Alignment.bottomCenter,
  //   // colors: <Color>[Color(0xffF8C141), Colors.white]),
  // ),
    );
  }
}

