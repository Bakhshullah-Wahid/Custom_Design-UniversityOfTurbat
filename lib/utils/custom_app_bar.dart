// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  String? namePage;
  String? projectName;
  String? projectSecondName;
  CustomAppBar({
    super.key,
    this.namePage,
    this.projectName,
    this.projectSecondName,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 65.5);
  @override
  State<CustomAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
        actions: [
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width * 1.0,
            decoration: const BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // add your customized logo of your App
                      Image.asset('assets/images/uotlogo.png', scale: 8),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${widget.projectName}",
                            style: const TextStyle(fontSize: 15),
                          ),
                          Text(
                            "${widget.projectSecondName}",
                            style: const TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.008,
                        width: MediaQuery.of(context).size.width * 0.25,
                        color: const Color.fromARGB(255, 1, 97, 205),
                        child: const Text(""),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.035,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 1, 97, 205),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        child: Center(
                          child: Text(
                            '${widget.namePage}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.007,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 1, 97, 205),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        child: const Text(""),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.005,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 1, 97, 205),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        child: const Text(""),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 1, 97, 205),
        toolbarHeight: MediaQuery.of(context).size.height * 0.15,
      ),
    );
  }
}
