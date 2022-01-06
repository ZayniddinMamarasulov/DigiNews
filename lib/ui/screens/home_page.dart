// import 'package:flutter/material.dart';
//
// import '../utils/bouncing.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   bool _visibility = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Home page')),
//       backgroundColor: Colors.yellow,
//       body: SafeArea(
//         child: SizedBox(
//           width: double.infinity,
//           child: Column(
//             children: [
//               AnimatedOpacity(
//                 opacity: _visibility ? 1.0 : 0,
//                 duration: const Duration(milliseconds: 1000),
//                 child: Container(
//                   width: 200.0,
//                   height: 200.0,
//                   color: Colors.blue,
//                 ),
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       _visibility = !_visibility;
//                     });
//                   },
//                   child: const Text("Click")),
//               const SizedBox(height: 120),
//               BounceScreen(
//                 child: const Text(
//                   "Hello !",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 35,
//                   ),
//                 ),
//               ),
//               BounceScreen(
//                 child: Container(
//                   width: 120,
//                   height: 60,
//                   child: const Text("Button"),
//                   color: Colors.red,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
