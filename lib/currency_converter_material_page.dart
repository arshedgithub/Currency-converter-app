import 'package:flutter/material.dart';

class CurrenceyConverterMaterialPage extends StatelessWidget {
  const CurrenceyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context){
    // final border = 

    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '0',
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Please Enter the amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.black
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}