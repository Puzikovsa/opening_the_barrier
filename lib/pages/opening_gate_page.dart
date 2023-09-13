import 'package:flutter/material.dart';
import 'package:opening_the_barrier/models/phone.dart';
import 'added_phone_page.dart';

class OpeningGate extends StatefulWidget {
  const OpeningGate({super.key});

  @override
  State<OpeningGate> createState() => _OpeningGateState();
}

class _OpeningGateState extends State<OpeningGate> {
  @override
  Widget build(BuildContext context) {
    String? phoneAccess = Phone.accessNumber ?? 'Здесь пока пусто';

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
            GestureDetector(
              child: Column(
                children: [
                  Text(phoneAccess,
                    style: const TextStyle(
                      fontSize: 26,
                    ),
                  ),

                  const Text('Для изменения нажмите сюда'),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, AddedPhone.rout);
              },
            ),
            const SizedBox(
              height: 250,
              width: 100,
            ),
            FloatingActionButton.extended(
              onPressed: () {},
              backgroundColor: Colors.green,
              label: const Text(
                'Открыть',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
