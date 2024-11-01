import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_taffakur/bloc/home_bloc.dart';
import 'package:task_taffakur/component/card_item.dart';
import 'package:task_taffakur/page/add_card_page.dart';
import 'package:task_taffakur/page/home_page.dart';

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
      title: 'Taffakur task',
      initialRoute: '/',
      // routes: {
      // '/': (context) => const HomePage(),
      // '/add-card': (context) => const AddCardPage()
      // },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => HomeBloc(),
        child: const HomePage(),
      ),
    );
  }
}
