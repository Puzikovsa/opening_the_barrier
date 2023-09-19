import 'package:flutter/material.dart';
import 'package:opening_the_barrier/models/phone.dart';
import 'package:opening_the_barrier/pages/added_phone_page.dart';
import 'package:opening_the_barrier/pages/opening_gate_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  ChangeNotifierProvider.value(
      value: Phone(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal)
          .copyWith(secondary: Colors.limeAccent),
          ),
        home: const OpeningGate(),
        routes: {
          AddedPhone.rout: (context)  => const AddedPhone(),
        },
      ),
    );
  }
}
