import 'package:flutter/material.dart';
import 'package:bv1/screens/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bv1/bloc/internet_bloc/internet_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';



void main() async{

  await dotenv.load(fileName: ".env");

  runApp(BlocProvider(
    create: (context) => InternetBloc(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
