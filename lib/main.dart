import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:healthcare/Screens/cart.dart';
import 'package:healthcare/Screens/wallet_screen.dart';
import 'package:healthcare/Screens/chat.dart';
import 'package:healthcare/Screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),

        primaryColor: const Color(0xff23355F),
        // const Color(0xff3A4D7F),
        hintColor: const Color(0xFFFEF9EB),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // ignore: non_constant_identifier_names
  static final List<Widget> _NavScreens = <Widget>[
    const HomePage(),
    const Chat(),
    const WalletScreen(),
    const Cart()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: const Color(0xff3A4D7F),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: GNav(
            backgroundColor: const Color(0xff3A4D7F),
            activeColor: const Color.fromARGB(255, 2, 19, 59),
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            gap: 8,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.chat_bubble_rounded,
                text: 'Chat',
              ),
              GButton(
                icon: Icons.account_balance_wallet,
                text: 'Wallet',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
      backgroundColor: const Color(0xff23355F),
      body: Center(
        child: _NavScreens.elementAt(_selectedIndex),
      ),
    );
  }
}
