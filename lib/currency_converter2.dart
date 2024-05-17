
import 'package:flutter/material.dart';



class CurrencyConverterMaterialPage2 extends StatefulWidget{

  //constructor
  const CurrencyConverterMaterialPage2({super.key});

  @override
   State<CurrencyConverterMaterialPage2> createState() => _CurrencyConverterMaterialPage();
}

class _CurrencyConverterMaterialPage extends State<CurrencyConverterMaterialPage2>{


   //variable
    final TextEditingController textEditingController = TextEditingController();
    double result=0; 

    //function
    void convert(){
      
      setState(() {result=double.parse(textEditingController.text)*81;});
    } 

  @override
  Widget build(BuildContext context) {


    
    // ----------------------------------------text area
  Widget text = Text(
    'INR $result',
    style: const TextStyle(
      color: Color.fromARGB(255, 0, 20, 0),
      fontSize: 34,
      fontWeight: FontWeight.w900,
    ),
  );


    // -----------------------------------------------this is the text box for input
  final Widget textBox = TextField(
    controller: textEditingController,
    decoration: const  InputDecoration(
      hintText: "Enter Ammount in Dollars", // works like pace holder
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
    onPressed: convert,
    style: const ButtonStyle(
      textStyle: MaterialStatePropertyAll(TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w900,
        ),
      ),
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

//  final Widget textButton = TextButton(
//       onPressed: convert,
//       style: TextButton.styleFrom(
//         textStyle: const TextStyle(
//           fontSize: 20.0,
//           fontWeight: FontWeight.w900,
//         ),
//         backgroundColor: Colors.amber,
//         surfaceTintColor: Colors.black,
//         minimumSize: const Size(double.infinity, 50),
        
//       ),
//       child: const Text("Press me"),
//     );
  



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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              text,
              const SizedBox(height: 15,),
              textBox,
              const SizedBox(height: 15,),
              elevatedButton,
            ],
          ),
        ),
      ),
    );
  }
}
