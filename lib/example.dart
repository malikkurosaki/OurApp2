
// import 'package:calendar_json/calendar_json.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// main() {
//   runApp(Coba());
// }

// class Coba extends StatelessWidget {
//   final day = <String>['Sunday', "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" ];
//   final calen = Calendar.json(DateTime.now().toString());
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           body: SafeArea(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Flexible(
//                   child: GridView.count(
//                     crossAxisCount: 7,
//                     children: [
//                       for(var cl in calen['perMonth'])
//                       Container(
//                         child: Center(
//                           child: Text(cl['date'].toString(),
//                             style: TextStyle(
//                               color: cl['type'] == 1?Colors.black: Colors.grey[300]
//                             ),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }