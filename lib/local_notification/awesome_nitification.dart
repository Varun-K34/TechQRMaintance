import 'dart:developer';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class NotificationController {
  static ReceivedAction? initialAction;

  ///  *********************************************
  ///     INITIALIZATIONS
  ///  *********************************************
  ///
  static Future<void> initializeLocalNotifications() async {
    try {
      await AwesomeNotifications().initialize(
          "resource://mipmap/ic_launcher",
          [
            NotificationChannel(
                channelKey: 'alerts',
                channelName: 'Alerts',
                channelDescription: 'Notification tests as alerts',
                playSound: true,
                soundSource: 'resource://raw/callmeoriginalringtone',
                onlyAlertOnce: true,
                groupAlertBehavior: GroupAlertBehavior.Children,
                importance: NotificationImportance.High,
                defaultPrivacy: NotificationPrivacy.Private,
                defaultColor: Colors.deepPurple,
                ledColor: Colors.deepPurple)
          ],
          debug: true);

      // Get initial notification action is optional
      initialAction = await AwesomeNotifications()
          .getInitialNotificationAction(removeFromActionEvents: false);
    } catch (e) {
      log("Error initializing notifications: $e");
    }
  }

  static Future<void> requestNotificationPermissions() async {
    bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
    if (!isAllowed) {
      await AwesomeNotifications().requestPermissionToSendNotifications();
    }
    if (!isAllowed) {
      await AwesomeNotifications().shouldShowRationaleToRequest();
    }
  }

  static Future<void> myNotifyScheduleEvery5Seconds(
      {required String title,
      required String msg,
      required int interval}) async {
    await AwesomeNotifications().createNotification(
      schedule: NotificationInterval(
        interval: Duration(minutes: interval),
        timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
        repeats: true,
      ),
      content: NotificationContent(
        id: 1002,
        channelKey: 'alerts',
        title: '${Emojis.activites_reminder_ribbon} $title',
        body: msg,
        notificationLayout: NotificationLayout.BigPicture,
        color: Colors.black,
        backgroundColor: Colors.black,
      ),
    );
  }
}
