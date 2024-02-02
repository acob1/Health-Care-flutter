import 'package:flutter/material.dart';

import '../widgets/disease_type.dart';
import '../widgets/more_docWidgets.dart';
import '../widgets/my_health_doc.dart';
import '../widgets/my_row_topdocs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            right: 20,
            left: 20,
          ),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "Aexander",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/profile_pic.jpg'),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Expanded(
                  child: Container(

                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xff3A4D7F),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            image: AssetImage('images/kkkkkoay.png'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Self Check up Covid-19",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Contain several list of question",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "to check your physical condition",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
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
                    fillColor: const Color(0xff3A4D7F),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'e.g what can we do for you',
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 202, 202, 202)),
                    labelText: 'How can I help?',
                    labelStyle: const TextStyle(color: Colors.white)),
              ),
              const SizedBox(
                height: 40,
              ),
              const DiseaseType(),
              const MyRowTopdocs(),
              const SizedBox(
                height: 81,
              ),
              const MoreDocWidgets()
            ],
          ),
        ),
      ),
    );
  }
}
