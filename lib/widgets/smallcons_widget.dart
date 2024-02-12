import 'package:flutter/material.dart';

class SmallContainers extends StatelessWidget {
  const SmallContainers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 30),
            width: 70,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff3A4D7F),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_box_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20),
            width: 70,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff3A4D7F),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.paid,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Pay",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20),
            width: 70,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: const Color(0xff3A4D7F),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.request_page_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Request",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20),
            width: 70,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff3A4D7F),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.description_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Details",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
