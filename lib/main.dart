import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:techqrmaintance/Screens/area_manager/manager_home/manager_home_screen.dart';
import 'package:techqrmaintance/Screens/splash/splash_screen.dart';
import 'package:techqrmaintance/Screens/tasks/task_overview.dart';
import 'package:techqrmaintance/Screens/tasks/task_screen.dart';
import 'package:techqrmaintance/Screens/tasks/updatetaskscreen.dart';
import 'package:techqrmaintance/application/GetLocation/get_location_bloc.dart';
import 'package:techqrmaintance/application/authbloc/authbloc_bloc.dart';
import 'package:techqrmaintance/application/bloccomplaint/complaintbloc_bloc.dart';
import 'package:techqrmaintance/application/brandnadmodel/brand_and_model_bloc.dart';
import 'package:techqrmaintance/application/catagorybloc/catogory_bloc.dart';
import 'package:techqrmaintance/application/checkbloc/checkbloc_bloc.dart';
import 'package:techqrmaintance/application/complaintdetailbloc/complaintdetailbloc_bloc.dart';
import 'package:techqrmaintance/application/custbloc/customer_bloc.dart';
import 'package:techqrmaintance/application/deviceregbloc/deviceregbloc_bloc.dart';
import 'package:techqrmaintance/application/getidregbloc/getidregbloc_bloc.dart';
import 'package:techqrmaintance/application/logbloc/logbloc_bloc.dart';
import 'package:techqrmaintance/application/maintenancehistory/maintenancehistory_bloc.dart';
import 'package:techqrmaintance/application/modelandbrand/model_and_brand_bloc.dart';
import 'package:techqrmaintance/application/orgganizationbloc/oranization_bloc.dart';
import 'package:techqrmaintance/application/requestscanqrbloc/request_scan_qr_endpoind_bloc.dart';
import 'package:techqrmaintance/application/scanqrbloc/scan_qr_bloc_bloc.dart';
import 'package:techqrmaintance/application/servicereqbyidbloc/service_req_by_id_bloc.dart';
import 'package:techqrmaintance/application/servicesrequest/service_request_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/application/techlistbloc/tech_list_bloc.dart';
import 'package:techqrmaintance/application/techperfomancebloc/tech_perfomence_bloc.dart';
import 'package:techqrmaintance/application/updateservicebloc/update_service_req_bloc.dart';
import 'package:techqrmaintance/domain/core/di/injuctable.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();

// class Notification {
//   final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   Future<void> requestNotificationPermission() async {
//     final bool? granted = await _flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.requestNotificationsPermission();
//     if (granted != null && granted) {
//       print('Notification permission granted');
//     } else {
//       print('Notification permission denied');
//     }
//   }

//   Future<void> initialisenotification() async {
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings(
//             '@mipmap/ic_launcher'); // Replace with your app icon name
//     final InitializationSettings initializationSettings =
//         InitializationSettings(android: initializationSettingsAndroid);

//     await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
//   }

//   Future<void> shadulesendnotification(String title, String body) async {
//     const AndroidNotificationDetails androidPlatformChannelSpecifics =
//         AndroidNotificationDetails(
//       'channelId',
//       'channelName',
//       importance: Importance.max,
//       priority: Priority.high,
//     );
//     const NotificationDetails platformChannelSpecifics =
//         NotificationDetails(android: androidPlatformChannelSpecifics);

//     await _flutterLocalNotificationsPlugin.periodicallyShow(
//       0,
//       title,
//       body,
//       RepeatInterval.everyMinute,
//       platformChannelSpecifics,
//       androidScheduleMode: AndroidScheduleMode.exact,
//     );
//   }
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configinjuction();
  //await initializeNotifications();
  // final Notification notification = Notification();
  // await notification.initialisenotification();
  // await notification.requestNotificationPermission();
  // await notification.shadulesendnotification(
  //     'techni', 'check for pending tasks');
  runApp(const MyApp());
}

// Future<void> initializeNotifications() async {
//   const AndroidInitializationSettings androidInitializationSettings =
//       AndroidInitializationSettings('@mipmap/ic_launcher');

//   final InitializationSettings initializationSettings =
//       InitializationSettings(android: androidInitializationSettings);

//   await flutterLocalNotificationsPlugin.initialize(initializationSettings);
// }

// Future<void> schedulePeriodicNotifications() async {
//   const AndroidNotificationDetails androidNotificationDetails =
//       AndroidNotificationDetails(
//     "1",
//     'jjgfghfgj',
//     channelDescription: 'Repeating notification for updates',
//     importance: Importance.high,
//     priority: Priority.high,
//   );

//   const NotificationDetails notificationDetails =
//       NotificationDetails(android: androidNotificationDetails);

//   await flutterLocalNotificationsPlugin.periodicallyShow(
//     0, // Notification ID
//     'Task Reminder', // Title
//     'Check for pending tasks!', // Body
//     RepeatInterval.everyMinute, // Interval (closest available option to 10 seconds)
//     notificationDetails,
//     androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
//   );

// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getit<AuthblocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ComplaintblocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<LogblocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<SpblocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CheckblocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ComplaintdetailblocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<DeviceregblocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<GetidregblocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ScanQrBlocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CustomerBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<MaintenancehistoryBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<GetLocationBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<OranizationBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CatogoryBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<RequestScanQrEndpoindBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<BrandAndModelBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ModelAndBrandBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ServiceRequestBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ServiceReqByIdBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<TechPerfomenceBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<UpdateServiceReqBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<TechListBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
