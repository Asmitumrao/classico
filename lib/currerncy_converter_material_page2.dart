import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Enter Amount",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 20, 0),
                fontSize: 34,
                fontWeight: FontWeight.w900,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: const  InputDecoration(
                  hintText: "Please enter the value", // works like placeholder
                  hintStyle: TextStyle(
                    color: Color.fromARGB(61, 41, 39, 39),
                  ),
                  prefixIcon: Icon(Icons.paid),
                  filled: true,
                  fillColor: Color.fromARGB(182, 155, 156, 214),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(110.0)),
                  ),
                ),
                keyboardType: TextInputType.number,
                controller: TextEditingController(), // Add a controller here
              ),
            ),
            TextButton(
              onPressed: () {
                if(kDebugMode){
                  print("this is a function");
                }
              },
              child: Text("Press me"),
            )
          ],
        ),
      ),
    );
  }
}
