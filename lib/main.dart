
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './AuthorizationPages/Login.dart';
import './Providers/CategoryProvider.dart';
import './Providers/home_provider.dart';
import './Providers/register_provider.dart';


void main() => runApp(const MyApp());

class  MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>MultiProvider (
    providers: [
      ChangeNotifierProvider(
          create: (context)=>CategoryProvider()),
      ChangeNotifierProvider(
          create: (context)=>HomeProvider()),
      ChangeNotifierProvider(
          create: (context)=>RegisterProvider()),
    ],
    child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),

    )
  );
  }

