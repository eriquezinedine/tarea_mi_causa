import 'package:flutter/material.dart';
import 'package:pregunta_cinco/controller/text_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = ControlarTexto();

    void abrirDialog() {
      textController.imprimirTexto();

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text(textController.imprimirTexto()),
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textController.controller,
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: abrirDialog,
                child: const Text('Calcular'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
