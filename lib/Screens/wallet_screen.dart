import 'package:flutter/material.dart';
import 'package:healthcare/models/message_model.dart';

import '../widgets/accountbal_widget.dart';
import '../widgets/smallcons_widget.dart';
import '../widgets/viewpayees.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  final searchName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          right: 20,
          left: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Wallets",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      "You have 3 active wallets",
                      style: TextStyle(
                          color: Colors.white24,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 140,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff3A4D7F),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "New wallets",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            const AccountBal(),
            const SmallContainers(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Activity",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.white),
                ),
              ],
            ),
            TextFormField(
              controller: searchName,
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff3A4D7F),
                  ),
                ),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                fillColor: const Color(
                  0xff3A4D7F,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
                hintText: 'Search for a name, date, amount',
                hintStyle: const TextStyle(
                  color: Color.fromARGB(
                    255,
                    202,
                    202,
                    202,
                  ),
                ),
                labelText: 'Search',
                labelStyle: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const ViewPayees()
          ],
        ),
      ),
    );
  }
}
