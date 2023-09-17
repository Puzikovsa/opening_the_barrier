import 'package:flutter/material.dart';
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
