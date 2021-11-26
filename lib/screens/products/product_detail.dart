// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class productDetails extends StatefulWidget {
//   const productDetails({Key? key}) : super(key: key);

//   @override
//   _productDetailsState createState() => _productDetailsState();
// }

// class _productDetailsState extends State<productDetails> {
//   int actindex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             title(),
//             const SizedBox(
//               height: 25,
//             ),
//             name(),
//             const SizedBox(
//               height: 10,
//             ),
//             CarouselSlider.builder(
//               itemCount: urlImages.length,
//               itemBuilder: (context, index, realIndex) {
//                 final urlImage = urlImages[index];
//                 return buildImage(urlImage, index, context);
//               },
//               options: CarouselOptions(
//                   height: 300,
//                   autoPlay: true,
//                   reverse: false,
//                   autoPlayInterval: const Duration(seconds: 2),
//                   enlargeCenterPage: true,
//                   onPageChanged: (index, reason) =>
//                       setState(() => actindex = index)),
//             ),
//             const SizedBox(
//               height: 2,
//             ),
//             sildebar(),
//             const SizedBox(
//               height: 30,
//             ),
//             bulidprice(),
//             const SizedBox(
//               height: 20,
//             ),
//             buildDescription(),
//             const SizedBox(
//               height: 10,
//             ),
//             Expanded(child: buildChoosecolors()),
//             const SizedBox(
//               height: 0,
//             ),
//             buildButton()
//           ],
//         ),
//       ),
//     );
//   }

//   Widget title() {
//     return const Center(
//       child: Text(
//         "Product Details",
//         style: TextStyle(
//             fontWeight: FontWeight.w600,
//             color: Colors.black,
//             letterSpacing: 2,
//             fontSize: 20),
//       ),
//     );
//   }

//   Widget name() {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [
//           Text(
//             "Cotton Shirt",
//             style: TextStyle(
//                 fontWeight: FontWeight.w600,
//                 color: Colors.black,
//                 letterSpacing: 2,
//                 fontSize: 20),
//           ),
//           Text(
//             "This is 100% cottn shirt",
//             style: TextStyle(
//               color: Colors.black45,
//               fontSize: 15,
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   final urlImages = [
//     'https://image.freepik.com/free-psd/club-text-effect-neon_23-2149109602.jpg',
//     'https://image.freepik.com/free-psd/purple-blue-text-effect-neon_23-2149109609.jpg',
//     'https://image.freepik.com/free-psd/creative-neon-text-effect_23-2149115297.jpg',
//   ];

//   Widget buildImage(String urlImage, int index, context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       decoration: BoxDecoration(
//         color: Colors.amber,
//         boxShadow: kElevationToShadow[6],
//         borderRadius: BorderRadius.circular(20),
//         image: DecorationImage(
//             image: NetworkImage(
//               urlImage,
//             ),
//             fit: BoxFit.fill),
//       ),
//       child: const Positioned(
//         child: Text(
//           "text here",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//     );
//   }

//   Widget sildebar() {
//     return Center(
//         child: AnimatedSmoothIndicator(
//       activeIndex: actindex,
//       count: urlImages.length,
//       effect: const WormEffect(
//         spacing: 8.0,
//         dotWidth: 10.0,
//         dotHeight: 10.0,
//         paintStyle: PaintingStyle.stroke,
//         strokeWidth: 1.5,
//         dotColor: Colors.grey,
//         activeDotColor: Colors.redAccent,
//       ),
//     ));
//   }

//   Widget bulidprice() {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Row(
//         children: const [
//           Text(
//             "112\$",
//             style: TextStyle(
//                 fontSize: 25,
//                 fontWeight: FontWeight.w700,
//                 color: Colors.pinkAccent),
//           ),
//           SizedBox(
//             width: 20,
//           ),
//           // Text(
//           //   "112\$",
//           //   style: TextStyle(
//           //       fontSize: 15, fontWeight: FontWeight.w300, color: Colors.grey),
//           // ),
//           // SizedBox(
//           //   width: 250,
//           // ),
//           // Text(
//           //   "5 in stock",
//           //   style: TextStyle(
//           //       fontSize: 15, fontWeight: FontWeight.w300, color: Colors.grey),
//           // )
//         ],
//       ),
//     );
//   }

//   Widget buildDescription() {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [
//           Text(
//             "Descripton",
//             style: TextStyle(
//                 fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             ";lsjfdl;ajsdf;sjf;sdfj;sfj;adfiekowp;jfsm;df;;sfk;sjf;sajffjdjf;lfjmldfjopejfs;dmfjfnf.sdfnlsjfndfnlofjfdnfj",
//             style: TextStyle(
//                 fontSize: 15, fontWeight: FontWeight.w300, color: Colors.grey),
//           )
//         ],
//       ),
//     );
//   }

//   Widget buildChoosecolors() {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Row(
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               Text(
//                 "Choose Color",
//                 style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.grey),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 "Light Blue",
//                 style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.black),
//               ),
//             ],
//           ),
//           Row(
//             children: [],
//           )
//         ],
//       ),
//     );
//   }

//   Widget buildButton() => Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Center(
//             child: Row(children: <Widget>[
//           Expanded(
//             child: Container(
//               height: 40,
//               margin: const EdgeInsets.all(25),
//               // ignore: deprecated_member_use
//               child: OutlineButton(
//                 child: const Text(
//                   'Add to Card',
//                   style: TextStyle(fontSize: 20.0),
//                 ),
//                 borderSide: const BorderSide(
//                     color: Colors.red, style: BorderStyle.solid, width: 1),
//                 onPressed: () {},
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               height: 40,
//               margin: const EdgeInsets.all(25),
//               // ignore: deprecated_member_use
//               child: FlatButton(
//                 child: const Text(
//                   'Buy Now',
//                   style: TextStyle(fontSize: 20.0),
//                 ),
//                 color: Colors.redAccent,
//                 textColor: Colors.white,
//                 onPressed: () {},
//               ),
//             ),
//           ),
//         ])),
//       );
// }
