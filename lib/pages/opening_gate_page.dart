import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:opening_the_barrier/models/phone.dart';
import '../widgets/access_widget.dart';

class OpeningGate extends StatelessWidget {
  const OpeningGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Открывание шлагбаума',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 250,
              width: 100,
            ),
            const AccessWidget(),
            const SizedBox(
              height: 250,
              width: 100,
            ),
            FloatingActionButton.extended(
              onPressed: () {
                FlutterPhoneDirectCaller.callNumber(Phone.accessNumber!);
              },
              backgroundColor: Colors.limeAccent,
              splashColor: Colors.redAccent,
              icon: const Icon(Icons.phone,
              color: Colors.black,),
              label: const Text(
                'Открыть',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
