import 'package:demo22/themes.dart';
import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int count = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Home",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          if (count > 0) {
                            count--;
                          }
                        });
                      },
                      icon: const Icon(Icons.remove)),
                  Text(count.toString()),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          count++;
                        });
                      },
                      icon: const Icon(Icons.add)),
                ],
              )
            ],
          ),
        );
      case 1:
        return const Center(
          child: Text(
            "Calls",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        );
      case 2:
        return const Center(
          child: Text(
            "Profile",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        );
      case 3:
        return ChangeThemes(isDark: false);

      default:
        return const Text("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text(
          "First Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: _getDrawerItemWidget(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: 'Call',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.change_circle_rounded),
                label: 'Change Themes',
                backgroundColor: Colors.blue),
          ]),
      drawer: Drawer(
        child: ListView(children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Abhi"),
            accountEmail: Text("Abhinav@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 62, 187, 250),
              child: Text(
                "A",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {},
          ),
          const Divider(thickness: 2),
          ListTile(
            title: const Text('About Us'),
            onTap: () {},
          ),
          const Divider(thickness: 2),
          ListTile(
            title: const Text('Contact Us'),
            onTap: () {},
          ),
          const Divider(
            thickness: 2,
          ),
          ListTile(
            title: const Text('Log Out'),
            onTap: () {},
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count = 0;
          });
        },
        child: const Icon(Icons.restore),
      ),
    );
  }
}
