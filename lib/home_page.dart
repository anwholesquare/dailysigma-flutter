import 'package:flutter/material.dart';
import 'package:dailysigma/charts_page.dart';
import 'package:dailysigma/discover_page.dart';
import 'package:dailysigma/widgets/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    DiscoverPage(),
    ChartsPage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          enableFeedback: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.cloud,color: Color(0xFF505972),),
              label: '',
              tooltip: 'Discover',
              activeIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.withOpacity(0.3),
                        offset: Offset(0, 4),
                        blurRadius: 20),
                  ],
                ),
                child: 
                Icon(Icons.cloud,color: Color(0xff4A80F0),),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article,color: Color(0xFF505972),),
              label: '',
              tooltip: 'Wish',
              activeIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff4A80F0).withOpacity(0.3),
                        offset: Offset(0, 4),
                        blurRadius: 20),
                  ],
                ),
                child: Icon(Icons.article,color: Color(0xff4A80F0),),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings,color: Color(0xFF505972),),
              label: '',
              tooltip: 'Profile',
              activeIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff4A80F0).withOpacity(0.3),
                        offset: Offset(0, 4),
                        blurRadius: 20),
                  ],
                ),
                child:Icon(Icons.settings,color: Color(0xff4A80F0),),
              
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
          backgroundColor: Color(0xff1C2031),
        ),
      ),
    );
  }
}
