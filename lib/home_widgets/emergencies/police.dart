import 'package:flutter/material.dart';

class Police extends StatelessWidget {
  const Police({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(colors: [
                Color.fromARGB(116, 57, 53, 197),
                Color.fromARGB(115, 33, 30, 233),
                Color.fromARGB(115, 4, 0, 255),
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white.withOpacity(0.5),
                  backgroundImage:
                      Image.asset('assets/images/police.jpg').image,
                  // child:
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Expanded(
                  child: Column(
                    children:  [
                      const Text(
                        "Nepal Police",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: Colors.black),
                      ),

                      const Text(
                        "100",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w800,
                            color: Colors.black),
                      ),
                      // Row(
                      //   children:[
                      //     Image.asset("assets/images/police.jpg",height: 60,),

                      //   ]
                      // )
                      Image.asset("assets/images/call.png",width: 140,)
                    ],
                  ),
                  
                ),
                
              )
            ],
          ),
          
        ),
      ),
    );
  }
}
