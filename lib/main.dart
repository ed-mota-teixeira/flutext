import 'package:flutext/models/text_cubit.dart';
import 'package:flutext/routes/constants.dart';
import 'package:flutext/routes/on_generate_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TextCubit(),
      child: MaterialApp(
        title: 'Text utility',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(useMaterial3: true),
        initialRoute: kHomeRoute,
        onGenerateRoute: (settings) => OnGenerateRoute.routes(settings),
      ),
    );
  }
}
