import 'package:flutter/material.dart';

class RspcHome extends StatelessWidget {
  const RspcHome({Key? key}) : super(key: key);

  @override
  // Widget build(BuildContext context) {
  //   // return Scaffold(
  //   //   body: Column(children: [
  //   //     Container(
  //   //        height: 300,
  //   //         width: 300,
  //   //         color: Colors.blue,
  //   //     )
  //   //   ]),
  //   // );


  // }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          title: Text(
            'Fusion',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Add your search functionality here
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                // Add your notification functionality here
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Add your drawer item 1 functionality here
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Add your drawer item 2 functionality here
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/your_image.jpg',
                width: 150.0,
                height: 150.0,
              ),
              SizedBox(height: 20.0),
              Text(
                'Mr. Atul Gupta',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'CSE',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}