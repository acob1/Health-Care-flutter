import 'package:flutter/material.dart';

import '../models/message_model.dart';

class ViewPayees extends StatefulWidget {
  const ViewPayees({super.key});

  @override
  State<ViewPayees> createState() => _ViewPayeesState();
}

class _ViewPayeesState extends State<ViewPayees> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            // color: Color(0xff3A4D7F),
            ),
        child: ClipRRect(
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              final Message chat = chats[index];
              return Container(
                margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage(chat.sender.imageUrl),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              chat.sender.name,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              chat.dateme,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          chat.mymoney,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: chat.isRecieved
                                ? const Color.fromARGB(251, 5, 240, 95)
                                : const Color.fromARGB(255, 241, 3, 3),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
