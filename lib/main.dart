import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/ui/theme/config.dart';
import 'package:helloworld/ui/theme/custom_theme.dart';
import 'package:helloworld/ui/views/dashboard/article_detail_screen.dart';
import 'package:helloworld/ui/views/dashboard/home.dart';
import 'package:helloworld/ui/views/dashboard/thirdtab/decrement_screen.dart';
import 'package:helloworld/ui/views/data/main_screen_dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp();

  //1
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('AppLifecycleState: $state');
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print("deactivate");
    super.deactivate();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
      home: const Home(),
      onGenerateRoute: (settings) {
        if (settings.name == ArticleDetailScreen.routeName) {
          final args = settings.arguments as MainScreenDummyData;
          return MaterialPageRoute(
            builder: (context) {
              return ArticleDetailScreen(data: args);
            },
          );
        }
        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
    );
  }
}

