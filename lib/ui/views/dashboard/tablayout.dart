import 'package:flutter/material.dart';
import 'package:helloworld/ui/views/dashboard/android_tab.dart';
import 'package:helloworld/ui/views/dashboard/ios_tab.dart';
import 'package:helloworld/ui/views/login/login_screen.dart';
import 'package:helloworld/ui/views/register/register_user_screen.dart';

class TabLayout extends StatefulWidget {
  const TabLayout({Key? key}) : super(key: key);

  @override
  State<TabLayout> createState() => _TabLayoutState();
}

class _TabLayoutState extends State<TabLayout> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.dashboard),
              title: Text(
                'dashboard',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text(
                'login',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyStatelessWidget()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.app_registration),
              title: const Text(
                'register',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterUserScreen(data: 'milap',)),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        flexibleSpace: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              text: "ANDROID",
              icon: Icon(Icons.android),
            ),
            Tab(
              text: "IOS",
              icon: Icon(Icons.phone_iphone),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          AndroidTab(),
          const IosTab(),
        ],
      ),
    );
  }
}
