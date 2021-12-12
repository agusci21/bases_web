import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Contador: $counter',
            style: const TextStyle(fontSize: 80),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                  text: 'Incrementar',
                  onPressed: () => setState(() {
                        counter++;
                      })),
              CustomFlatButton(
                  text: 'Decrementar',
                  color: Colors.red,
                  onPressed: () => setState(() {
                        counter--;
                      })),
            ],
          )
        ],
      ),
    );
  }
}
