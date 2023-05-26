import 'package:flutter/cupertino.dart';

class ControlarTexto {
  ControlarTexto();

  final TextEditingController controller = TextEditingController();

  TextEditingController get getController => controller;

  String imprimirTexto() {
    String texto = controller.text;
    int contadorPares = 0;
    int contadorImpares = 0;
    String caracteresImpares = "";
    for (int i = 0; i < texto.length; i++) {
      String caracter = texto[i];
      if (caracter != " " && num.tryParse(caracter) != null) {
        if (int.parse(caracter) % 2 == 0) {
          contadorPares++;
        } else {
          contadorImpares++;
          caracteresImpares += caracter;
        }
      }
    }

    int contadorTotal = texto.length;

    return "Cantidad de caracteres pares: $contadorPares \n"
        "Cantidad de caracteres impares: $contadorImpares \n"
        "Cantidad total de caracteres: $contadorTotal \n"
        "Caracteres impares: $caracteresImpares \n";
  }
}
