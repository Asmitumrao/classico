
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class CurrencyConverterMaterialPage extends StatelessWidget {

  // constructor
   const CurrencyConverterMaterialPage({super.key});




  @override
  Widget build(BuildContext context) {


    //variable
    final TextEditingController textEditingController = TextEditingController();
    double result=0;   


    // ----------------------------------------text area
  Widget text = Text(
    result.toString(),
    style: const TextStyle(
      color: Color.fromARGB(255, 0, 20, 0),
      fontSize: 34,
      fontWeight: FontWeight.w900,
    ),
  );


    // -----------------------------------------------this is the text box for input
  Widget textBox = TextField(
    controller: textEditingController,
    decoration: const  InputDecoration(
      hintText: "pease enter the value", // works like pace holder
      hintStyle: TextStyle(
        color: Color.fromARGB(60, 239, 238, 238),
      ),
      prefixIcon: Icon(Icons.paid),
      filled: true,
      fillColor: Color.fromARGB(182, 155, 156, 214),
      border: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.blueGrey,
        ),
        borderRadius: BorderRadius.all(Radius.circular(110.0)),
      ),
    ),
    keyboardType: TextInputType.number,
  );

 



//------------------------------------------------------- this a text button to calculate
final Widget elevatedButton = ElevatedButton(
    onPressed: () {
      if (kDebugMode) // this tells us that is we are in debug mode or not
      {
        result=double.parse(textEditingController.text)*81;
      }
    },
    style: const ButtonStyle(
      textStyle: MaterialStatePropertyAll(TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w900,
      )),
      backgroundColor: MaterialStatePropertyAll(Colors.amber),
      foregroundColor: MaterialStatePropertyAll(Colors.black),
      elevation: MaterialStatePropertyAll(10),
      surfaceTintColor: MaterialStatePropertyAll(Colors.black),
      overlayColor: MaterialStatePropertyAll(Color.fromARGB(255, 249, 158, 3)),
      minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50)),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    ),
    child: const Text("Press me"),
  );
 //------------------------------------------------------- this a text button to calculate

  // Widget textButton = TextButton(
  //   onPressed: () {
  //     if (kDebugMode) // this tells us that is we are in debug mode or not
  //     {
  //       print("this is a function");
  //     }
  //   },
  //   style: const ButtonStyle(
  //       textStyle: MaterialStatePropertyAll(TextStyle(
  //         fontSize: 20.0,
  //         fontWeight: FontWeight.w900,
  //       )),
  //       backgroundColor: MaterialStatePropertyAll(Colors.amber),
  //       foregroundColor: MaterialStatePropertyAll(Colors.black),
  //       overlayColor:
  //           MaterialStatePropertyAll(Color.fromARGB(255, 249, 158, 3)),
  //       minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50))),
  //   child: const Text("Press me"),
  // );



// ---------------------------------------------------scaffold----------------
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text(
            'CURRENCY CONVERTER APP',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          actions: const [
            Icon(Icons.paid),
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            text,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textBox,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: elevatedButton,
            ),
          ],
        ),
      ),
    );
  }
}
