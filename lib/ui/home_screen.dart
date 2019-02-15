import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final _widgetOptions = [
    Text(
      "Home",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 40, color: Colors.grey),
    ),
    Text(
      "Notify",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 40, color: Colors.grey),
    ),
    Text(
      "Map",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 40, color: Colors.grey),
    ),
    Text(
      "Profile",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 40, color: Colors.grey),
    ),
    Text(
      "Setup",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 40, color: Colors.grey),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 10,
        child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Home"),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.blue,
              primaryColor: Colors.white,
              textTheme: Theme.of(context).textTheme.copyWith(
                  caption: TextStyle(color: Colors.lightBlueAccent[200]))),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.view_quilt),
                title: Container(
                  height: 0.0,
                ),
                
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: Container(
                  height: 0.0,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                title: Container(
                  height: 0.0,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Container(
                  height: 0.0,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Container(
                  height: 0.0,
                ),
              ),
            ],
          ),
        )
        ),
      ),
      
    );
    
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
