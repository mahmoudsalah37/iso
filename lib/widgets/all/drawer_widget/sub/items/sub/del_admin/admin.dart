// import 'package:flutter_web/material.dart';
// import 'package:iso/models/page_model.dart';
// import 'package:iso/packages/font_size/auto_size_text.dart';
// import 'package:iso/packages/provider/provider.dart';
// import 'package:iso/widgets/all/view_page.dart';
// import '../../../../../../../styles/drawer_widget/items/style_item.dart';

// class Admin extends StatefulWidget {
//   _AdminState createState() => _AdminState();
// }

// class _AdminState extends State<Admin> {
//   bool show = false;
//   @override
//   Widget build(BuildContext context) {
//     final page = Provider.of<PageModel>(context);

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
//           child: InkWell(
//             child: Row(
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.only(right: 8.0),
//                   child: SizedBox(
//                       height: 20.0,
//                       width: 20.0, // fixed width and height
//                       child: Image.asset('icons/bag.png')),
//                 ),
//                 Expanded(
//                   child: AutoSizeText(
//                     'Admin',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold
//                     ),
//                     minFontSize: 8.0,
//                     maxFontSize: 25.0,
//                   ),
//                 ),
//                 Text(
//                   '>',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ],
//             ),
//             onTap: () {
//               setState(() {
//                 show = !show;
//               });
//             },
//           ),
//         ),
//         //sub
//         Visibility(
//           visible: show,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'Dashboard',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     page.setViewPage(ViewPage(0, 0));
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'Custom Data',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'Custom Notification',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'Support Ticket',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'Export',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'Role',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'User',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'User Role',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'Role Action',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'Site',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'Resource Planing',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'Product Stage',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'Asset',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'Resource Type',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'Asset Type',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'Reminder Configuration',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'Management System Type',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'Off Day',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//               InkWell(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
//                   child: Text(
//                     'Holiday List',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 onTap: () {
//                   setState(() {
//                     ViewPage(0, 0);
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
