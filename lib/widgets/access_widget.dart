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
          return Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.teal,
              ),
              borderRadius: BorderRadius.circular(30),
              color: Colors.greenAccent,
            ),
            child: GestureDetector(
              child: Column(
                children: [
                  Text(
                    Provider.of<Phone>(context).getNumber() ??
                        'Здесь пока пусто',
                    style: const TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Для изменения нажмите сюда',
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, AddedPhone.rout);
              },
            ),
          );
        });
  }
}
