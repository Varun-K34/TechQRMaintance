import 'dart:developer';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List gridList = [
    GridContainerButton(
      title: "SCAN QR",
      imagePath: 'assets/images/qr-code 1.png',
    ),
    GridContainerButton(
      title: "ADD DEVICE",
      imagePath: "assets/images/wireless-internet 1.png",
    ),
    GridContainerButton(
      title: "VIEW TASKS",
      imagePath: "assets/images/task 1.png",
    ),
    GridContainerButton(
      title: "SERVICE\nHISTORY",
      imagePath: "assets/images/documents 1.png",
    ),
  ];
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.account_circle_outlined,
          size: 35,
          color: Color(0xff165069),
        ),
        title: Text(
          "Welcome",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w500,
            color: Color(0xff165069),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
            child: Container(
              height: 170,
              width: 401,
              padding: EdgeInsets.only(right: 30, left: 20),
              decoration: BoxDecoration(
                  color: Color(0xff165069),
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContainerTextRow(
                    title: "Tasks today:",
                    value: "0",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ContainerTextRow(
                    title: "Pending Tasks:",
                    value: "0",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ContainerTextRow(
                    title: "Completed Task:",
                    value: "0",
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return gridList[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}

class GridContainerButton extends StatelessWidget {
  final String title;
  final String imagePath;

  const GridContainerButton({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (title) {
          case "SCAN QR":
            log("scan qr");
            break;

          case "ADD DEVICE":
            log("ADD DEVICE");
            break;

          case "VIEW TASKS":
            log("VIEW TASKS");
            break;

          case "SERVICE\nHISTORY":
            log("SERVICE HISTORY");
            break;
          default:
        }
      },
      child: Container(
        height: 17,
        width: 17,
        padding: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Color(0xff165069)),
        child: Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imagePath))),
            ),
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerTextRow extends StatelessWidget {
  final String title;
  final String value;
  const ContainerTextRow({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ))
      ],
    );
  }
}
