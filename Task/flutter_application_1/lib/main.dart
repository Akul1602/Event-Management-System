
import 'package:flutter/material.dart';

void main() {
  runApp(const SnookHeroesApp());
}

class SnookHeroesApp extends StatelessWidget {
  const SnookHeroesApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snooker Heroes',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

  class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

    Widget Build(BuildContext context)
    {
      return Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.black,
            ),
            Column(
              mainAxisAlignment: 
              MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'C:UsersakulkOneDriveDesktoplogo.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                const SizedBox(height: 20),
                Center(child: Image.asset(
                  'C:UsersakulkOneDriveDesktopPool table.png'
                  width: 300,
                  height: 300,
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                  ],
                ),
              ],
            ),
            const Align(alignment: Alignment.bottomCenter,)
            child: Padding(padding: const EdgeInsets.all(16.0), child: Column(MainAxisSize:
            MainAxisSize.min, children:context[
              ElevatedButton(onPressed: () {}, style:
              ElevatedButton.textStyle(
                primary:
                 Colors.amber,
                 minimumSize: Size(double.infinity, 50),
                 shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(30),
                 ),
                 ),
                 child: Text('Sign up'),
                 ),
                 SizedBox(height:10),
                 ElevatedButton(onPressed: () {},
                 style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  minimumSize:
                  Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    BorderRadius.circular(30),
                  ),
                 ),
                 child: Text('Sign In'),
                  ),
                  ],
                 ),
                ),
              ),
            ]
          ),
        );
    }
  }

  class SignUpScreen extends StatelessWidget{
  const SignUpScreen({super.key});

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(padding: const
      EdgeInsets.all(16.0)
      child: Column(
        crossAxisAlignment: context
        CrossAxisAlignment.start,
        children: [
          Text("What's your mobile number"?,
          style: const TextStyle(fontSize: 24),),
          const SizedBox(height: 10),
          const Text("We'll need to confirm it by sending a text",
          style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 20),
          const Row(children: [CountrySelector(), Expanded(child: TextField(keyboardType: TextInputType.phone, decoration: InputDecoration( labelText: 'Mobile Number', border: UnderlineInputBorder(),
          ),
          ),
          ),
          ],
          ),
          const Spacer(),
          ElevatedButton(onPressed: () {},
          style: ElevatedButton.styleFrom( backgroundColor: Colors.amber,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          ),
          child: const Text('Next'),
          ),
        ],
      ),
    ),
  );
  }
  }
  class CountrySelector extends StatelessWidget {
  const CountrySelector({super.key});

    @override
    Widget build(BuildContext context)
    {
      return DropdownButton<String>(value:'+91',
      items: const [DropdownMenuItem(value: '+91',child: Text('+91'),
      )
      ],
      onChanged: (value) {},
      );
    }
    
  }
//         backgroundColor: Color(0xFFD2A04A),  //setting up the background colour
//         body: Center(
//         child: Container(
//         width: 200,
//         height:200,
//           decoration: ,
//         BoxDecoration(
//           color: Colors.black,
//           borderRadius: 
//           BorderRadius.circular(20),
//           ),
//             child: Column(
//               mainAxisAlignment: 
//         MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'SH',
//                       style: TextStyle(
//                         color:
//                           Colors.amber,
//                               fontSize: 50,
//                               fontWeight:
//                               FontWeight.bold,  
//                             ),
//                           ),
//                           SizedBox(height: 10),
//                           Stack(
//                             alignment: 
//                             Alignment.center,
//                             children: [
//                               Divider(
//                                 thickness: 2,
//                                 color: 
//                                 Colors.amber,
//                               ),
//                               Positioned(
//                                 top: -5,
//                                 right: 50,
//                                 child: 
//                                 CircleAvatar(
//                                   radius: 10
//                                   backgroundColor: Colors.red,
//                                   ,)
//                               ),
//                             ],
//                           )
//                           SizedBox(
//                             height: 20),
//                             Text(
//                               'Snook Heroes'
//                               style:TextStyle(
//                                 color:
//                                 Colors.red,
//                                 fontSize: 20,
//                                 fontWeight:
//                                 FontWeight.bold,
//                                 shadows: [
//                                   Shadow(
//                                     offset: 
//                                     Offset(2.0, 2.0),
//                                     blurRadius: 3.0,
//                                     color: Color(
//                                       Colors.white,
//                                       ),
//                                 ],
//                 ),
//                 ), 
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
