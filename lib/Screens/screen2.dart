import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sixth/Screens/listscreen2.dart';

class ScreenTwo extends StatelessWidget {
  ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    int currentSelectedIndex = 3;
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Store'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (2.5 / 2),
            ),
            itemCount: 7,
            itemBuilder: (context, index) {
              return cardmake(
                  icon: icon[index],
                  iconbgcolor: iconbglist[index],
                  text: titles[index],
                  index: index);
            }),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          currentIndex: currentSelectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey[600],
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon:
                    Icon(Icons.receipt_long_outlined, color: Colors.grey[600]),
                label: 'Orders'),
            BottomNavigationBarItem(
              icon: Icon(Icons.border_all_outlined, color: Colors.grey[600]),
              label: 'Products',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.auto_awesome_motion, color: Colors.grey[600]),
                label: 'Manage'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined, color: Colors.grey[600]),
                label: 'Account'),
          ]),
    );
  }

  cardmake(
      {required icon, required iconbgcolor, required text, required index}) {
    return Container(
      child: Card(
        elevation: 5,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              rowmake(index, iconbgcolor, icon),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}

rowmake(index, iconbgcolor, icon) {
  if (!isnewlist[index]) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: iconbgcolor,
      ),
      child: icon,
      height: 45,
      width: 45,
    );
  } else {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: iconbgcolor,
          ),
          child: icon,
          height: 45,
          width: 45,
        ),
        Container(
          height: 20,
          width: 40,
          color: Colors.green,
          child: Center(
              child: Text(
            'NEW',
            style: TextStyle(color: Colors.white),
          )),
        )
      ],
    );
  }
}
