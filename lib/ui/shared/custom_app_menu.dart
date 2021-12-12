// ignore_for_file: prefer_const_constructors

import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
              text: 'Contador Stateful',
              onPressed: () => Navigator.pushNamed(context, '/stateful'),
              color: Colors.black),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
              text: 'Contador Provider',
              onPressed: () => Navigator.pushNamed(context, '/provider'),
              color: Colors.black),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
              text: 'Otra pagina',
              onPressed: () => Navigator.pushNamed(context, '/404'),
              color: Colors.black)
        ],
      ),
    );
  }
}