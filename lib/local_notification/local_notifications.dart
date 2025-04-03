
import 'dart:developer';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/subjects.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class LocalNotifications {
  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static final onClickNotification = BehaviorSubject<String>();

  // on tap notification
  static void onTapNotificaton(NotificationResponse notificationResponse) {
    onClickNotification.add(notificationResponse.payload!);
  }

  static Future init() async {
// initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    final DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings();
    final LinuxInitializationSettings initializationSettingsLinux =
        LinuxInitializationSettings(defaultActionName: 'Open notification');
    final WindowsInitializationSettings initializationSettingsWindows =
        WindowsInitializationSettings(
            appName: 'Flutter Local Notifications Example',
            appUserModelId: 'Com.Dexterous.FlutterLocalNotificationsExample',
            // Search online for GUID generators to make your own
            guid: 'd49b0314-ee7a-4626-bf79-97cdb8a991bb');
    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsDarwin,
            macOS: initializationSettingsDarwin,
            linux: initializationSettingsLinux,
            windows: initializationSettingsWindows);
    await _flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: onTapNotificaton,
        onDidReceiveBackgroundNotificationResponse: onTapNotificaton);
  }

  //show shudulded notification
  static Future showShuduldNotification({
    required String title,
    required String body,
    required String payload,
  }) async {
    try {
      tz.initializeTimeZones();
      var localtime = tz.local;
      await _flutterLocalNotificationsPlugin.zonedSchedule(
          2,
          title,
          body,
          payload: payload,
          tz.TZDateTime.now(localtime).add(Duration(seconds: 5)),
          NotificationDetails(
              android: AndroidNotificationDetails(
            "channel 1",
            "techmaintanceappchannel",
            channelDescription: "notification channel",
            importance: Importance.max,
            priority: Priority.high,
            ticker: "ticker",
            autoCancel: false,
          )),
          androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
          matchDateTimeComponents: DateTimeComponents.dateAndTime);
    } catch (e) {
      log(e.toString());
    }
  }

  static Future<bool?> requestExactAlarmPermission() async {
    return await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestExactAlarmsPermission();
  }

}
