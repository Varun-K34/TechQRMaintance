import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/core/colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryWhite,
          title: Text(
            "Notifications",
            style: TextStyle(
              fontSize: 24,
              color: primaryBlue,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: List.generate(
            10,
            (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                      color: primaryBlue,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "Device name",
                          style: TextStyle(
                            color: primaryWhite,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: Column(
                          children: [
                            Text(
                              "Scheduled: tomorrow at 10:00 AM",
                              style: TextStyle(
                                color: primaryWhite,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "Technician assignment pending",
                              style: TextStyle(
                                color: primaryWhite,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        leading: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 26,
                            vertical: 13,
                          ),
                          decoration: BoxDecoration(
                            color: primaryWhite,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            "${index + 1}",
                            style: TextStyle(
                              color: primaryBlack,
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomMaterialButton(
                            height: 10,
                            width: 150,
                            text: "Track",
                            buttonColor: primaryWhite,
                            textColor: primaryBlack,
                            onPressed: () {},
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
