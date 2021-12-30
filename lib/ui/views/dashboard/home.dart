import 'package:flutter/material.dart';
import 'package:helloworld/ui/views/dashboard/list.dart';
import 'package:helloworld/ui/views/dashboard/mainlist/main_list_screen.dart';
import 'package:helloworld/ui/views/dashboard/tablayout.dart';
import 'package:helloworld/ui/views/dashboard/thirdtab/decrement_screen.dart';
import 'package:helloworld/ui/views/dashboard/thirdtab/increment_screen.dart';

class Home extends StatefulWidget {
  const Home();

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  bool isFabShow = true;

  /* final List<Widget> _widget = [
    List(),
    const TabLayout(),
    const Scaffold(),
    const Scaffold(),
  ];*/
  late PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
    // controller.addListener(() {return})
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: isFabShow
          ? FloatingActionButton(
              onPressed: () => {
                print('current index from fab '),
                _tapped(1),
              },
              backgroundColor: Colors.red,
              child: const Icon(
                Icons.add,
                color: Colors.black,
                size: 40,
              ),
            )
          : null,
      body: SafeArea(
        child: PageView(
          onPageChanged: (value) =>
              {print('current index from pageView '), _tapped(value)},
          controller: controller,
          children: [
            const MainListScreen(),
            const TabLayout(),
            IncrementScreen(),
            List(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "",
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "",
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Milap",
            backgroundColor: Colors.transparent,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: (index) => {
          print('current index from onTap '),
          _tapped(index),
          controller.animateToPage(_selectedIndex,
              duration: const Duration(milliseconds: 500), curve: Curves.ease),
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  void _tapped(int index) {
    setState(() {
      print('current index $index');
      _selectedIndex = index;
      isFabShow = _selectedIndex != 1;
    });
  }
}
