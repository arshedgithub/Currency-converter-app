import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrenceyConverterMaterialPage extends StatelessWidget {
  const CurrenceyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context){
    final border = OutlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          style: BorderStyle.solid,
        ),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '0',
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Please Enter the amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: (){
                  if (kDebugMode) {
                    print('clicked');
                  }
                }, 
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50)),
                ),
                child: const Text('Convert'),
              ),
            )
          ],
        ),
      ),
    );
  }
}