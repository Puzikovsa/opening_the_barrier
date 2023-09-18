import 'package:flutter/material.dart';
import 'package:opening_the_barrier/models/phone.dart';
import 'package:opening_the_barrier/pages/added_phone_page.dart';
import 'package:provider/provider.dart';

class AccessWidget extends StatelessWidget {
  const AccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Provider.of<Phone>(context, listen: false).changeNumber(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return GestureDetector(
            child: Column(
              children: [
                Text(
                  Provider.of<Phone>(context).getNumber() ?? 'Здесь пока пусто',
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
          );
        });
  }
}
