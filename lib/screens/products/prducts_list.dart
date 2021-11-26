// import 'dart:ui';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class ProductsList extends StatefulWidget {
//   const ProductsList({Key? key}) : super(key: key);

//   @override
//   _ProductsListState createState() => _ProductsListState();
// }

// class _ProductsListState extends State<ProductsList> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: ListView(
//             children: [
//               buildHeader(),
//               const SizedBox(
//                 height: 20,
//               ),
//               buildSearch(),
//               const SizedBox(
//                 height: 30,
//               ),
//               bulidCategary(),
//               const SizedBox(
//                 height: 10,
//               ),
//               Expanded(
//                 child: buildProductsList(),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildHeader() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
//         const Text(
//           "Products List",
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
//         ),
//         IconButton(onPressed: () {}, icon: const Icon(Icons.search_sharp))
//       ],
//     );
//   }

//   Widget buildSearch() {
//     return Container(
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           color: Colors.white,
//           boxShadow: kElevationToShadow[6]),
//       child: const Padding(
//         padding: EdgeInsets.all(5.0),
//         child: TextField(
//           decoration: InputDecoration(
//               hintText: "|  Search Your Products",
//               border: InputBorder.none,
//               prefixIcon: Icon(
//                 Icons.search,
//               ),
//               contentPadding: EdgeInsets.all(20)),
//         ),
//       ),
//     );
//   }

//   Widget bulidCategary() {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Text(
//               "Categary",
//               style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
//             ),
//             InkWell(
//               onTap: () {
//                 Navigator.pushNamed(context, "write your route");
//               },
//               child: const Text(
//                 "See All",
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: const [
//             CategariesList(
//                 color: Colors.pinkAccent,
//                 title: "title",
//                 assetsPath: 'assets/svg/icontest.png'),
//             CategariesList(
//                 color: Colors.white10,
//                 title: "title",
//                 assetsPath: 'assets/svg/icontest.png'),
//             CategariesList(
//                 color: Colors.white,
//                 title: "title",
//                 assetsPath: 'assets/svg/icontest.png'),
//             CategariesList(
//                 color: Colors.white,
//                 title: "title",
//                 assetsPath: 'assets/svg/icontest.png'),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget buildProductsList() {
//     return Column(
//       children: const [
//         Categarylist(
//             ttile: "ttile",
//             decription: "decription",
//             Finalprice: "Finalprice",
//             AssetsPath: "assets/svg/icontest.png",
//             Lastprice: "Lastprice"),
//         Categarylist(
//             ttile: "ttile",
//             decription: "decription",
//             Finalprice: "Finalprice",
//             AssetsPath: "assets/svg/icontest.png",
//             Lastprice: "Lastprice"),
//         Categarylist(
//             ttile: "ttile",
//             decription: "decription",
//             Finalprice: "Finalprice",
//             AssetsPath: "assets/svg/icontest.png",
//             Lastprice: "Lastprice"),
//         Categarylist(
//             ttile: "ttile",
//             decription: "decription",
//             Finalprice: "Finalprice",
//             AssetsPath: "assets/svg/icontest.png",
//             Lastprice: "Lastprice"),

//         // Expanded(
//         //     flex: 1,
//         //     child: Categarylist(
//         //         ttile: "ttile",
//         //         decription: "decription",
//         //         Finalprice: "Finalprice",
//         //         AssetsPath: "assets/svg/icontest.png",
//         //         Lastprice: "Lastprice")),
//         // Expanded(
//         //   child: Categarylist(
//         //       ttile: "ttile",
//         //       decription: "decription",
//         //       Finalprice: "Finalprice",
//         //       AssetsPath: "assets/svg/icontest.png",
//         //       Lastprice: "Lastprice"),
//         // ),
//         // Expanded(
//         //   child: Categarylist(
//         //       ttile: "ttile",
//         //       decription: "decription",
//         //       Finalprice: "Finalprice",
//         //       AssetsPath: "assets/svg/icontest.png",
//         //       Lastprice: "Lastprice"),
//         // ),
//       ],
//     );
//   }
// }

// class CategariesList extends StatelessWidget {
//   final String title;
//   final Color color;
//   final String assetsPath;
//   const CategariesList(
//       {Key? key,
//       required this.title,
//       required this.assetsPath,
//       required this.color})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 70,
//           width: 70,
//           decoration: BoxDecoration(
//               color: this.color,
//               boxShadow: kElevationToShadow[3],
//               borderRadius: BorderRadius.circular(10)),
//           child: Image.asset(this.assetsPath),
//         ),
//         const SizedBox(
//           height: 5,
//         ),
//         Text(this.title)
//       ],
//     );
//   }
// }

// class Categarylist extends StatelessWidget {
//   final String ttile;
//   final String decription;
//   final String Finalprice;
//   final String AssetsPath;
//   final String Lastprice;
//   const Categarylist(
//       {Key? key,
//       required this.ttile,
//       required this.decription,
//       required this.Finalprice,
//       required this.AssetsPath,
//       required this.Lastprice})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 170,
//       width: double.infinity,
//       child: Card(
//         elevation: 5,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         child: Stack(
//           children: [
//             Positioned(
//               top: 10,
//               left: 150,
//               child: Text(
//                 this.ttile,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.w700,
//                   fontSize: 30,
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 40,
//               left: 150,
//               child: Text(this.decription),
//             ),
//             Positioned(
//                 child: ClipRRect(
//               child: Image(image: AssetImage(this.AssetsPath)),
//             )),
//             Positioned(bottom: 30, left: 150, child: Text(this.Lastprice)),
//             Positioned(
//                 bottom: 10,
//                 left: 150,
//                 child: Text(
//                   this.Finalprice,
//                   style: const TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w700,
//                       color: Colors.pink),
//                 )),
//             const Positioned(bottom: 20, right: 10, child: Text("Color"))
//           ],
//         ),
//       ),
//     );
//   }
// }
