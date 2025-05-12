// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
// import 'package:techqrmaintance/application/after_accept_reject_bloc/afte_accept_reject_bloc.dart';
// import 'package:techqrmaintance/application/servicesrequest/service_request_bloc.dart';
// import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
// import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
// import 'package:techqrmaintance/core/colors.dart';

// class NotificationScreen extends StatelessWidget {
//   const NotificationScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     WidgetsBinding.instance.addPostFrameCallback(
//       (_) async {
//         context
//             .read<ServiceRequestBloc>()
//             .add(ServiceRequestEvent.getServicesreq());
//         context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
//         context.read<SingleUserBloc>().add(
//               SingleUserEvent.singleUser(
//                 id: context.read<SpblocBloc>().state.userData.toString(),
//               ),
//             );
//       },
//     );
//     return Scaffold(
//       backgroundColor: Color(0xfff5f5f5),
//       appBar: AppBar(
//         backgroundColor: Color(0xfff5f5f5),
//         title: Text(
//           "Notifications",
//           style: TextStyle(
//             fontSize: 22,
//             color: primaryBlue,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: BlocConsumer<AfteAcceptRejectBloc, AfteAcceptRejectState>(
//         listener: (context, state) {
//           if (state.service.data != null) {
//             CustomSnackbar.shows(context, message: "success");
//             context
//                 .read<ServiceRequestBloc>()
//                 .add(ServiceRequestEvent.getServicesreq());
//           }
//         },
//         builder: (context, state) {
//           return BlocBuilder<SingleUserBloc, SingleUserState>(
//             builder: (context, spstate) {
//               return BlocBuilder<ServiceRequestBloc, ServiceRequestState>(
//                 builder: (context, state) {
//                   final servlist = state.servicelist
//                       .where(
//                         (service) =>
//                             service.assignedTechnician == spstate.user.id &&
//                             service.orgId == spstate.user.orgId &&
//                             service.status == "Pending Confirmation",
//                       )
//                       .toList();

//                   if (state.isLoading) {
//                     return Center(
//                       child: CircularProgressIndicator(color: primaryBlue),
//                     );
//                   }

//                   if (state.isFailure) {
//                     return Center(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.error_outline,
//                               size: 48, color: Colors.red),
//                           SizedBox(height: 16),
//                           Text(
//                             "Oops! Something went wrong.",
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                           SizedBox(height: 8),
//                           TextButton(
//                             onPressed: () {
//                               context.read<ServiceRequestBloc>().add(
//                                     ServiceRequestEvent.getServicesreq(),
//                                   );
//                             },
//                             child: Text("Try Again",
//                                 style: TextStyle(color: primaryBlue)),
//                           ),
//                         ],
//                       ),
//                     );
//                   }

//                   if (servlist.isEmpty) {
//                     return Center(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.notifications_off_outlined,
//                               size: 64, color: Colors.grey),
//                           SizedBox(height: 16),
//                           Text(
//                             "No notifications yet",
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.grey[700],
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   }

//                   return ListView.separated(
//                     itemCount: servlist.length,
//                     separatorBuilder: (context, index) => Divider(
//                       height: 1,
//                       color: Colors.grey[300],
//                       indent: 70,
//                     ),
//                     itemBuilder: (context, index) {
//                       final notification = servlist[index];

//                       return ListTile(
//                         contentPadding:
//                             EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                         leading: CircleAvatar(
//                           radius: 26,
//                           backgroundColor: primaryBlue,
//                           child: Text(
//                             notification.id.toString(),
//                             style: TextStyle(
//                               color: primaryWhite,
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         title: Row(
//                           children: [
//                             Expanded(
//                               child: Text(
//                                 notification.device!.category!.name.toString(),
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 16,
//                                   color: Colors.black87,
//                                 ),
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ),
//                           ],
//                         ),
//                         subtitle: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             SizedBox(height: 4),
//                             Row(
//                               children: [
//                                 Expanded(
//                                   child: Text(
//                                     'Preferred Date: ${notification.preferredTimeslot}',
//                                     style: TextStyle(
//                                       color: Colors.grey[700],
//                                       fontSize: 14,
//                                     ),
//                                     maxLines: 1,
//                                     overflow: TextOverflow.ellipsis,
//                                   ),
//                                 ),
//                                 Container(
//                                   padding: EdgeInsets.symmetric(
//                                       horizontal: 8, vertical: 2),
//                                   decoration: BoxDecoration(
//                                     color: primaryBlue,
//                                     borderRadius: BorderRadius.circular(12),
//                                   ),
//                                   child: Text(
//                                     notification.status.toString(),
//                                     style: TextStyle(
//                                       color: primaryWhite,
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: 8),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 TextButton(
//                                   onPressed: () {
//                                     context.read<AfteAcceptRejectBloc>().add(
//                                         AfteAcceptRejectEvent.accept(
//                                             servid:
//                                                 notification.id.toString()));
//                                   },
//                                   child: Text(
//                                     "Accept",
//                                     style: TextStyle(color: primaryBlue),
//                                   ),
//                                 ),
//                                 SizedBox(width: 8),
//                                 TextButton(
//                                   onPressed: () {
//                                     // Handle reject action
//                                     context.read<AfteAcceptRejectBloc>().add(
//                                         AfteAcceptRejectEvent.reject(
//                                             servid:
//                                                 notification.id.toString()));
//                                   },
//                                   child: Text(
//                                     "Reject",
//                                     style: TextStyle(color: Colors.red),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                   );
//                 },
//               );
//             },
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: primaryBlue,
//         child: Icon(Icons.refresh, color: primaryWhite),
//         onPressed: () {
//           context
//               .read<ServiceRequestBloc>()
//               .add(ServiceRequestEvent.getServicesreq());
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
import 'package:techqrmaintance/application/after_accept_reject_bloc/afte_accept_reject_bloc.dart';
import 'package:techqrmaintance/application/servicesrequest/service_request_bloc.dart';
import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        context
            .read<ServiceRequestBloc>()
            .add(ServiceRequestEvent.getServicesreq());
        context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
        context.read<SingleUserBloc>().add(
              SingleUserEvent.singleUser(
                id: context.read<SpblocBloc>().state.userData.toString(),
              ),
            );
      },
    );
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
              color: Color(0xFF0A4D68), size: 20),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Notifications",
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF0A4D68),
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded, color: Color(0xFF0A4D68)),
            onPressed: () {
              context
                  .read<ServiceRequestBloc>()
                  .add(ServiceRequestEvent.getServicesreq());
            },
          ),
        ],
      ),
      body: BlocConsumer<AfteAcceptRejectBloc, AfteAcceptRejectState>(
        listener: (context, state) {
          if (state.service.data != null) {
            CustomSnackbar.shows(context,
                message: "Request updated successfully");
            context
                .read<ServiceRequestBloc>()
                .add(ServiceRequestEvent.getServicesreq());
          }
        },
        builder: (context, state) {
          return BlocBuilder<SingleUserBloc, SingleUserState>(
            builder: (context, spstate) {
              return BlocBuilder<ServiceRequestBloc, ServiceRequestState>(
                builder: (context, state) {
                  final servlist = state.servicelist
                      .where(
                        (service) =>
                            service.assignedTechnician == spstate.user.id &&
                            service.orgId == spstate.user.orgId &&
                            service.status == "Pending Confirmation",
                      )
                      .toList();

                  if (state.isLoading) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircularProgressIndicator(
                            color: Color(0xFF0A4D68),
                            strokeWidth: 3,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            "Loading notifications...",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  if (state.isFailure) {
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error_outline_rounded,
                              size: 60,
                              color: Colors.red[400],
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              "Oops! Something went wrong.",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF0A4D68),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "We couldn't load your notifications.",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[700],
                              ),
                            ),
                            const SizedBox(height: 24),
                            ElevatedButton(
                              onPressed: () {
                                context
                                    .read<ServiceRequestBloc>()
                                    .add(ServiceRequestEvent.getServicesreq());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF0A4D68),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 12),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                elevation: 2,
                              ),
                              child: const Text(
                                "Try Again",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }

                  if (servlist.isEmpty) {
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.all(24),
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(24),
                              decoration: const BoxDecoration(
                                color: Color(0xFFE7F2F8),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.notifications_off_outlined,
                                size: 48,
                                color: Color(0xFF0A4D68),
                              ),
                            ),
                            const SizedBox(height: 24),
                            const Text(
                              "No Notifications",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF0A4D68),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "You don't have any pending requests at the moment.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }

                  return ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: servlist.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      final notification = servlist[index];
                      final deviceName =
                          notification.device?.category?.name?.toString() ??
                              "Unknown Device";
                      final formattedDate =
                          notification.preferredTimeslot ?? "Not specified";

                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.08),
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Header with ID and Status
                            Container(
                              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0xFFF0F0F0),
                                    width: 1,
                                  ),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Request ID Circle
                                  Container(
                                    width: 38,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF0A4D68),
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0xFF0A4D68)
                                              .withOpacity(0.2),
                                          spreadRadius: 0,
                                          blurRadius: 6,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "#${notification.id}",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 14),

                                  // Title and Date
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          deviceName,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color: Color(0xFF0A4D68),
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.calendar_today_rounded,
                                              size: 14,
                                              color: Color(0xFF7A8C98),
                                            ),
                                            const SizedBox(width: 6),
                                            Text(
                                              formattedDate,
                                              style: const TextStyle(
                                                fontSize: 13,
                                                color: Color(0xFF7A8C98),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  // Status Badge
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFF6E0),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0xFFF29727)
                                              .withOpacity(0.1),
                                          spreadRadius: 0,
                                          blurRadius: 4,
                                          offset: const Offset(0, 1),
                                        ),
                                      ],
                                    ),
                                    child: const Text(
                                      "Pending Confirmation",
                                      style: TextStyle(
                                        color: Color(0xFFF29727),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Request Details
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(16, 12, 16, 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (notification.jobType != null)
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 24,
                                            height: 24,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFE7F2F8),
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                            child: const Icon(
                                              Icons.cases_outlined,
                                              size: 14,
                                              color: Color(0xFF0A4D68),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            "Job Type:",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xFF7A8C98),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          Expanded(
                                            child: Text(
                                              " ${notification.jobType}",
                                              style: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF2B3A4A),
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (notification.selectedIssue != null)
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 24,
                                            height: 24,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFE7F2F8),
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                            child: const Icon(
                                              Icons.warning_amber_rounded,
                                              size: 14,
                                              color: Color(0xFF0A4D68),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            "Issue:",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xFF7A8C98),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          Expanded(
                                            child: Text(
                                              " ${notification.selectedIssue?.join(', ') ?? ''}",
                                              style: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF2B3A4A),
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (notification.issueDescription != null &&
                                      notification.issueDescription!.isNotEmpty)
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 4),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 24,
                                            height: 24,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFE7F2F8),
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                            child: const Icon(
                                              Icons.description_outlined,
                                              size: 14,
                                              color: Color(0xFF0A4D68),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            "Description:",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xFF7A8C98),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          Expanded(
                                            child: Text(
                                              " ${notification.issueDescription}",
                                              style: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF2B3A4A),
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),

                            // Action Buttons
                            Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      context.read<AfteAcceptRejectBloc>().add(
                                          AfteAcceptRejectEvent.accept(
                                              servid:
                                                  notification.id.toString()));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text('Service accepted'),
                                          backgroundColor: Colors.green,
                                        ),
                                      );

                                      Navigator.of(context).pop();
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 14),
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFEAF7EC),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(16),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.check_circle_outline_rounded,
                                            color: Color(0xFF4CAF50),
                                            size: 18,
                                          ),
                                          const SizedBox(width: 8),
                                          const Text(
                                            "Accept",
                                            style: TextStyle(
                                              color: Color(0xFF4CAF50),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      context.read<AfteAcceptRejectBloc>().add(
                                          AfteAcceptRejectEvent.reject(
                                              servid:
                                                  notification.id.toString()));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text('Service rejected'),
                                          backgroundColor: Colors.red,
                                        ),
                                      );

                                      Navigator.of(context).pop();
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 14),
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFFEEAEA),
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(16),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.cancel_outlined,
                                            color: Color(0xFFE53935),
                                            size: 18,
                                          ),
                                          const SizedBox(width: 8),
                                          const Text(
                                            "Reject",
                                            style: TextStyle(
                                              color: Color(0xFFE53935),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
