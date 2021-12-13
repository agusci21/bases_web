import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';


class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const CustomAppMenu(),

          const Spacer(),

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

          const Spacer(),
        ],
      ),
    );
  }
}