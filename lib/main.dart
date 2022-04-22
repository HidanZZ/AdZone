import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/screens/home/home_screen.dart';
import 'package:stylish/screens/home/test.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Flutter Way',
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        primarySwatch: Colors.blue,
        fontFamily: "Gordita",
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Home> {
  int _selectedIndex = 0;
  final screens = [HomeScreen(), Test(), Test()];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   // leading: IconButton(
        //   //   onPressed: () {},
        //   //   icon: SvgPicture.asset("assets/icons/menu.svg"),
        //   // ),
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       SvgPicture.asset("assets/icons/Location.svg"),
        //       const SizedBox(width: defaultPadding / 2),
        //       Text(
        //         "15/2 New Texas",
        //         style: Theme.of(context).textTheme.bodyText1,
        //       ),
        //     ],
        //   ),
        //   actions: [
        //     IconButton(
        //       icon: SvgPicture.asset("assets/icons/Notification.svg"),
        //       onPressed: () {},
        //     ),
        //   ],
        // ),
        // body: screens[_selectedIndex],
        body: PageTransitionSwitcher(
            transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
                SharedAxisTransition(
                    transitionType: SharedAxisTransitionType.horizontal,
                    animation: primaryAnimation,
                    secondaryAnimation: secondaryAnimation,
                    child: child),
            child: screens[_selectedIndex]),
        bottomNavigationBar: FlashyTabBar(
          animationCurve: Curves.linear,
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            FlashyTabBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                activeColor: primaryColor,
                inactiveColor: secondaryColor),
            FlashyTabBarItem(
                icon: Icon(Icons.camera),
                title: Text('Scan'),
                activeColor: primaryColor,
                inactiveColor: secondaryColor),
            FlashyTabBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
                activeColor: primaryColor,
                inactiveColor: secondaryColor),
          ],
        ));
  }
}
