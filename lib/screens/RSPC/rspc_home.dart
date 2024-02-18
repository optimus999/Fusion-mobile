import 'package:flutter/material.dart';
import 'package:fusion/Components/appBar.dart';
import 'package:fusion/screens/RSPC/closure_report.dart';
import 'package:fusion/screens/RSPC/view_inventory.dart';
import 'package:fusion/screens/RSPC/request_requirement.dart';
import 'package:fusion/screens/RSPC/view_project.dart';

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
        appBar: DefaultAppBar().buildAppBar(),
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
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 35, 
              ),
              Image.asset(
                 
                'assets/mypic.jpg',
                width: 200.0,
                height: 200.0,
              ),
              SizedBox(height: 20.0),
              Center(
                child: Text(
                  'Dr. Atul Gupta',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
              ),
              Center(
                child: Text(
                  'CSE',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(
                 height:  20,

              ),
              Padding(
                padding: EdgeInsetsDirectional.all(8.0),
                child: SizedBox(
                   width: 10,
                   height: 50,
                  child: ElevatedButton(
                    
                      onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => Closure_report()));
                      },
                      child: Text("Closure report"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))
                              )
                          ),
                          
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                   width: 10,
                   height: 50,
                  child: ElevatedButton(
                    
                      onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => View_project()));
                      },
                      child: Text("View Project"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))
                              )
                          ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                   width: 10,
                   height: 50,
                  child: ElevatedButton(
                    
                      onPressed: () {},
                      child: Text("Request Staff"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))
                              )
                          ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                   width: 10,
                   height: 50,
                  child: ElevatedButton(
                    
                      onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => Request_Requirement()));
                      },
                      child: Text("Request Requirement"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))
                              )
                          ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                   width: 10,
                   height: 50,
                  child: ElevatedButton(
                    
                       onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => View_Inventory()));
                      },
                      child: Text("View Inventory"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))
                              )
                          ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
