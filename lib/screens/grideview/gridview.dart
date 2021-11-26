import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class categaryList extends StatefulWidget {
  const categaryList({Key? key}) : super(key: key);

  @override
  _categaryListState createState() => _categaryListState();
}

class _categaryListState extends State<categaryList> {
  final List<String> _listItem = [
    'https://image.freepik.com/free-photo/blue-school-bag-with-essential-supplies_23-2148207679.jpg',
    'https://image.freepik.com/free-photo/blue-school-bag-with-essential-supplies_23-2148207679.jpg',
    'https://image.freepik.com/free-photo/blue-school-bag-with-essential-supplies_23-2148207679.jpg',
    'https://image.freepik.com/free-photo/blue-school-bag-with-essential-supplies_23-2148207679.jpg',
    'https://image.freepik.com/free-photo/blue-school-bag-with-essential-supplies_23-2148207679.jpg',
    'https://image.freepik.com/free-photo/blue-school-bag-with-essential-supplies_23-2148207679.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Center(child: Text('eFind')),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Choose What you want"),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: _listItem
                    .map((item) => Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(item),
                                    fit: BoxFit.cover)),
                            child: Transform.translate(
                              offset: const Offset(0, -0),
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: const Icon(
                                    Icons.gamepad,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              )),
            ],
          ),
        ));
  }
}
