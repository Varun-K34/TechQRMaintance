import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/home/widgets/grid_button.dart';
import 'package:techqrmaintance/Screens/home/widgets/task_summary.dart';

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
