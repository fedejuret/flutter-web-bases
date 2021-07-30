import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bases_web/providers/counter_provider.dart';
import 'package:bases_web/ui/shared/Custom_flat_button.dart';
import 'package:bases_web/ui/shared/custom_app_menu.dart';

class CounterProviderView extends StatelessWidget {
  const CounterProviderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: _CounterProviderPageBody(),
    );
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  const _CounterProviderPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Contador Provider',
          style: TextStyle(fontSize: 20),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Contador: ${counterProvider.counter}',
              style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              text: 'Incrementar',
              color: Colors.green,
              onPressed: () => counterProvider.increment(),
            ),
            CustomFlatButton(
              text: 'Decrementar',
              color: Colors.red,
              onPressed: () => counterProvider.decrement(),
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
