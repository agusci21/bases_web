import 'package:flutter/material.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';


class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {

  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        const Text('Contador Stateful', style: TextStyle( fontSize: 20 )),
        
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Contador: $counter',
              style: const TextStyle( fontSize: 80, fontWeight: FontWeight.bold),
            ),
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              text: 'Incrementar', 
              onPressed: () => setState(() => counter ++ )
            ),

            CustomFlatButton(
              text: 'Decrementar', 
              onPressed: () => setState(() => counter -- )
            ),

          ],
        ),
      ],
    );
  }
}