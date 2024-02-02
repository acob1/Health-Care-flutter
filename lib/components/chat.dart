import 'package:flutter/material.dart';

import '../models/message_model.dart';
import '../widgets/category_selector.dart';
import '../widgets/favorite_contact.dart';
import '../widgets/recent_chats.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return
        // const SafeArea(
        //   child: Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        //     child: Column(children: [
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Icon(
        //             Icons.menu,
        //             color: Colors.white,
        //           ),
        //           Text(
        //             "Shop Medicine",
        //             style: TextStyle(
        //                 color: Colors.white,
        //                 fontSize: 30,
        //                 fontWeight: FontWeight.bold),
        //           ),
        //           Icon(
        //             Icons.search,
        //             color: Colors.white,
        //           ),
        //         ],
        //       ),
        //       SizedBox(
        //         height: 40,
        //       ),
        //     ]),
        //   ),
        // );
        Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: const Color(0xff23355F),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),
        // title: const Center(
        //   child: Text(
        //     'Chats',
        //     style: TextStyle(
        //         fontSize: 28.0,
        //         fontWeight: FontWeight.bold,
        //         color: Colors.white),
        //   ),
        // ),
        elevation: 0.0,
        // actions: <Widget>[
        //   IconButton(
        //     icon: const Icon(Icons.search),
        //     iconSize: 30.0,
        //     color: Colors.white,
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: Column(
        children: <Widget>[
          const CategorySelector(),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff3A4D7F),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: const Column(
                children: <Widget>[
                  FavoriteContacts(),
                  RecentChats(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
