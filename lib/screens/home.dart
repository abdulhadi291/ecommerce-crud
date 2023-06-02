import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Mega Mail"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Card(
                
                elevation: 2.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                       Expanded(
                        
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sale Sale',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Get upto 50% Sale',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      child: Image.network('https://t3.ftcdn.net/jpg/03/14/10/22/360_F_314102295_g0AD83R55Nnb4aKt22R8iWyaKoT50YmX.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                 
                  ],
                ),
              ),
            )
          ],
        ),
        
      ),
         bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
                        color: Colors.black,
),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,
                        color: Colors.black,
),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
                        color: Colors.black,
),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
