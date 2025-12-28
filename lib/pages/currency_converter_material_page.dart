// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

// Stateful vs Stateless

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() {
    return _CurrencyConverterMaterialPageState();
  } 
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {

  double result = 0;
  final TextEditingController  textEditingController = TextEditingController();

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text)*105.55;
    });
  }
  
  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0E13),

      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        toolbarHeight: 80,
        backgroundColor: const Color(0xFF161A22),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(14),
          ),
        ),
        title: const Text(
          "Currency Converter",
          style: TextStyle(
            fontFamily: "inter",
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color(0xFFEDEFF4),
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      
          children: [

        // currency output
            Text(
              // "0",
              // result.toString() + " INR",
              "${result} INR",
              style: const TextStyle(
                color: Color(0xFFEDEFF4),
                fontSize: 52,
                fontWeight: FontWeight.w700,
                letterSpacing: -1,
              ),
            ),

      
        // currency input
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 100, 50, 40),
      
              child: TextField(

                controller: textEditingController,

                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                
                cursorColor:  const Color(0xFF4FD1C5),

                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFF1C2130),
                  contentPadding: EdgeInsets.fromLTRB(22, 22, 22, 22),
                  
                  hint: const Text(
                    "INR  to  EUR",
                    style: TextStyle(
                      color: Color(0xFF7C8197),
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  label: const Text(
                    "Converter",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7C8197),
                    ),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color:  Color(0xFF7C8197),
                      width: 1.5,
                    )
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color(0xFF4FD1C5),
                      width: 1.5,
                    )
                  ),

                  prefixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(20,20,12,20),
                    child: const Icon(
                      Icons.currency_exchange,
                      color: Color(0xFF7C8197),
                      size:28,
                    ),
                  ),

                  suffix: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                    child: Text(
                      "EUR",
                      style: TextStyle(
                        color: Color(0xFF7C8197),
                      ),
                    ),
                  ),

                ),
                  
              ),
              
            ),
      
            Padding(
              padding: const EdgeInsets.all(8.0),

              child: TextButton(
                  onPressed: () {
                    convert();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF4FD1C5),
                    foregroundColor: const Color(0xFF0B0E13),
                    fixedSize: const Size(120, 52),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),

                  child: const Text(
                    "Convert",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.3,
                    ),
                  ),

            
                ),
            ),

          ], // Children
      
      ),
    );
  }
}


// class CurrencyConverterMaterialPageeee extends StatelessWidget {
//   const CurrencyConverterMaterialPageeee ({super.key});

//   @override
//   Widget build(BuildContext context) {

//     double result = 0;
//     final TextEditingController  textEditingController = TextEditingController();

//     return Scaffold(
//       backgroundColor: const Color(0xFF0B0E13),

//       appBar: AppBar(
//         centerTitle: true,
//         elevation: 1,
//         toolbarHeight: 80,
//         backgroundColor: const Color(0xFF161A22),
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(14),
//           ),
//         ),
//         title: const Text(
//           "Currency Converter",
//           style: TextStyle(
//             fontFamily: "inter",
//             fontWeight: FontWeight.w600,
//             fontSize: 20,
//             color: Color(0xFFEDEFF4),
//           ),
//         ),
//       ),

//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
      
//           children: [

//         // currency output
//             Text(
//               // "0",
//               result.toString(),
//               style: const TextStyle(
//                 color: Color(0xFFEDEFF4),
//                 fontSize: 52,
//                 fontWeight: FontWeight.w700,
//                 letterSpacing: -1,
//               ),
//             ),

      
//         // currency input
//             Padding(
//               padding: const EdgeInsets.fromLTRB(50, 100, 50, 40),
      
//               child: TextField(

//                 controller: textEditingController,

//                 keyboardType: const TextInputType.numberWithOptions(
//                   decimal: true,
//                 ),
                
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                 ),
                
//                 cursorColor:  const Color(0xFF4FD1C5),

//                 decoration: InputDecoration(
//                   filled: true,
//                   fillColor: const Color(0xFF1C2130),
//                   contentPadding: EdgeInsets.fromLTRB(22, 22, 22, 22),
                  
//                   hint: const Text(
//                     "INR  to  EUR",
//                     style: TextStyle(
//                       color: Color(0xFF7C8197),
//                       fontSize: 17,
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),

//                   label: const Text(
//                     "Converter",
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w400,
//                       color: Color(0xFF7C8197),
//                     ),
//                   ),

//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(16),
//                     borderSide: BorderSide(
//                       color:  Color(0xFF7C8197),
//                       width: 1.5,
//                     )
//                   ),

//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                     borderSide: BorderSide(
//                       color: Color(0xFF4FD1C5),
//                       width: 1.5,
//                     )
//                   ),

//                   prefixIcon: Padding(
//                     padding: const EdgeInsets.fromLTRB(20,20,12,20),
//                     child: const Icon(
//                       Icons.currency_exchange,
//                       color: Color(0xFF7C8197),
//                       size:28,
//                     ),
//                   ),

//                 ),
                  
//               ),
              
//             ),
      
//             Padding(
//               padding: const EdgeInsets.all(8.0),

//               child: TextButton(
//                   onPressed: () {
//                     result = double.parse(textEditingController.text)*105.55;
//                     build(context);
//                   },
//                   style: TextButton.styleFrom(
//                     backgroundColor: const Color(0xFF4FD1C5),
//                     foregroundColor: const Color(0xFF0B0E13),
//                     fixedSize: const Size(120, 52),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(14),
//                     ),
//                   ),

//                   child: const Text(
//                     "Convert",
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w700,
//                       letterSpacing: 0.3,
//                     ),
//                   ),
            
//                 ),
//             ),
      
//           ], // Children
      
//       ),
//     );
//   }
// }