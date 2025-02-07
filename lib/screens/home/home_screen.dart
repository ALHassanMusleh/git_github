import 'package:flutter/material.dart';
import 'package:flutter_basics/models/magazine_dm.dart';
import 'package:flutter_basics/screens/home/home_screen_title.dart';
import 'package:flutter_basics/screens/home/home_tile.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';
  HomeScreen({super.key});

  // List<String> magazinesPath = ['assets/images/السيارات.jpg', 'assets/images/السيارات.jpg','assets/images/السيارات.jpg',];
  // List<String> magazinesTitle = ['Sports', 'Health', 'Cars',];

  List<MagazineModel> magazines = [
    MagazineModel(imagePath: 'assets/images/السيارات.jpg', title: 'Sports'),
    MagazineModel(imagePath: 'assets/images/السيارات.jpg', title: 'Cars'),
    MagazineModel(imagePath: 'assets/images/السيارات.jpg', title: 'Health'),
    MagazineModel(imagePath: 'assets/images/السيارات.jpg', title: 'test '),
  ];
  Function x = () {
    print('Hello');
  };

  @override
  Widget build(BuildContext context) {
    x();
    Color purple = Color(0xff781fa9);
    TextStyle defaultSAtyle = TextStyle(
      fontSize: 25,
      color: Colors.white,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Title',
          style: TextStyle(
            fontSize: 18,
            color: Colors.green,
          ),
        ),
        elevation: 0,
        // leading: Icon(
        //   Icons.arrow_back,
        // ),
        actions: [
          Icon(
            Icons.phone,
          ),
          Icon(
            Icons.arrow_back,
          ),
        ],
        centerTitle: true,
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
      ),
      body: Column(
        children: [
          Row(
            children: [
              HomeScreenTitle(
                text: 'Magazines',
              ),
              Container(
                width: 4,
              ),
              HomeScreenTitle(
                text: 'News',
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              // itemBuilder: myItemBuilder,
              itemBuilder: (BuildContext context, int index) =>
                  // print(index);
                  // MagazineModel model = magazines[index];
                  HomeTile(
                title: magazines[index].title,
                imagePath: magazines[index].imagePath,
              ),
              itemCount: magazines.length,
            ),
          ),
        ],
      ),
    );
  }

  // Widget myItemBuilder(BuildContext context, int index) {
  //   print(index);
  //   MagazineModel model = magazines[index];
  //   return HomeTile(
  //     title: model.title,
  //     imagePath: model.imagePath,
  //   );
  // }

  // arrow function
  int add(int n1, int n2) => n1 + n2;
}
