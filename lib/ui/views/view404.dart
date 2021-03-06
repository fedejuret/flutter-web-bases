import 'package:bases_web/ui/shared/Custom_flat_button.dart';
import 'package:flutter/material.dart';

class View404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '404',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'No se encontrĂ³ la pagina',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          CustomFlatButton(
            text: 'Regresar',
            onPressed: () => Navigator.pushNamed(
              context,
              '/stateful',
            ),
          ),
        ],
      ),
    );
  }
}
