import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/Widgets/skelton.dart';
import 'package:techqrmaintance/Screens/home/widgets/grid_button.dart';
import 'package:techqrmaintance/Screens/home/widgets/task_summary.dart';
import 'package:techqrmaintance/Screens/portfolio/portfolio_screen.dart';
import 'package:techqrmaintance/application/bloccomplaint/complaintbloc_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';

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
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        context
            .read<ComplaintblocBloc>()
            .add(ComplaintblocEvent.getComplaintsTasks());
        context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
      },
    );
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => onPressProfile(context),
          child: Icon(
            Icons.account_circle_outlined,
            size: 35,
            color: Color(0xff165069),
          ),
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
              child: BlocBuilder<SpblocBloc, SpblocState>(
                builder: (context, spState) {
                  return BlocBuilder<ComplaintblocBloc, ComplaintblocState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Skeleton(
                                    color: Color(0xffe0f2f5),
                                    height: 22,
                                    width: 180,
                                  ),
                                  Skeleton(
                                    color: Color(0xffe0f2f5),
                                    height: 22,
                                    width: 40,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Skeleton(
                                    color: Color(0xffe0f2f5),
                                    height: 22,
                                    width: 180,
                                  ),
                                  Skeleton(
                                    color: Color(0xffe0f2f5),
                                    height: 22,
                                    width: 40,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Skeleton(
                                    color: Color(0xffe0f2f5),
                                    height: 22,
                                    width: 180,
                                  ),
                                  Skeleton(
                                    color: Color(0xffe0f2f5),
                                    height: 22,
                                    width: 40,
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      } else if (state.complaints.isEmpty) {
                        return Center(
                          child: Text(
                            "No tasks found",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        );
                      } else if (state.isFailure) {
                        return Center(
                          child: Text(
                            "Oops! Something went wrong. Please try again later.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        );
                      }
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ContainerTextRow(
                            title: "Tasks today:",
                            value: state.complaints
                                .where((task) => task.status == "unassigned")
                                .toList()
                                .length
                                .toString(),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ContainerTextRow(
                            title: "Pending Tasks:",
                            value: state.complaints
                                .where((task) =>
                                    task.status == "pending" &&
                                    task.assignedTechnicianId ==
                                        spState.userData.id)
                                .toList()
                                .length
                                .toString(),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ContainerTextRow(
                            title: "Completed Task:",
                            value: state.complaints
                                .where((task) =>
                                    task.status == "completed" &&
                                    task.assignedTechnicianId ==
                                        spState.userData.id)
                                .toList()
                                .length
                                .toString(),
                          ),
                        ],
                      );
                    },
                  );
                },
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

  void onPressProfile(BuildContext context) {
    Navigator.of(context).push(createRoute(PortfolioScreen()));
  }
}
