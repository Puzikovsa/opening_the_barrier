import 'package:flutter/material.dart';
import 'package:opening_the_barrier/models/phone.dart';
import 'package:opening_the_barrier/pages/opening_gate_page.dart';
import 'package:provider/provider.dart';

class AddedPhone extends StatefulWidget {
  static const String rout = '/added_phone';

  const AddedPhone({super.key});

  @override
  State<AddedPhone> createState() => _AddedPhoneState();
}

class _AddedPhoneState extends State<AddedPhone> {
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Номер телефона',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Введите номер телефона',
              ),
              keyboardType: TextInputType.phone,
              controller: _phoneController,
            ),
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {
            Provider.of<Phone>(context, listen: false)
                .addNumber(_phoneController.text);
            Navigator.of(context).pop();
          },
          label: const Text(
            'Установить',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          icon: const Icon(
            Icons.add,
            color: Colors.black,
          ),
          style: ElevatedButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Theme.of(context).colorScheme.secondary,
          ),
        )
      ]),
    );
  }
}
