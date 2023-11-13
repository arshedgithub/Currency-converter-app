import 'package:flutter/cupertino.dart';

class CurrenceyConverterCupertinoPage extends StatefulWidget {
  const CurrenceyConverterCupertinoPage({super.key});

  @override
  State<CurrenceyConverterCupertinoPage> createState() => _CurrenceyConverterCupertinoPageState();
}

class _CurrenceyConverterCupertinoPageState extends State<CurrenceyConverterCupertinoPage> {
  double result = 0;

  @override
  Widget build(BuildContext context){
    final TextEditingController textEditingController = TextEditingController();

    void convert(){
      result = double.parse(textEditingController.text) * 355;
      setState((){}); // rebuild
    }

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text('Currency Converter'),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LKR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                  color: CupertinoColors.white,
                ),
                placeholder: 'Please Enter the amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true
                ),
              ),
              const SizedBox(height: 10),
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: const Text('Convert'),
              )
            ],
          ),
        ),
      ),
    );
  }
}