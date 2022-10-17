import 'package:bachaau/utils/quotes.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  Function? onTap;
  int? quoteIndex;
  CustomAppBar({super.key,  this.onTap, this.quoteIndex});

   // const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       onTap!();
   },
      // {
      //   onTap!();
      // },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Text(quoteslist[quoteIndex!],
          style: const TextStyle(fontSize:20, fontWeight:FontWeight.w500, letterSpacing: 1 ),),
        ),
      ),
    
    );
  }
}
 

