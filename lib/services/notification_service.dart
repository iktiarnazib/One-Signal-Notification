import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:onesignalnoti/pages/notification_page.dart';

class NotificationService {
  //initiate the global navigator state
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Future<void> initialize() async {
    OneSignal.initialize('4f6135f6-78b3-4d5f-aa5e-f5fc88b8a651');

    //requesting permission (by default false)
    OneSignal.Notifications.requestPermission(false);

    OneSignal.Notifications.addClickListener(_handleClick);
  }

  static void _handleClick(OSNotificationClickEvent event) {
    navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (context) => NotificationPage(
          title: event.notification.title ?? '',
          description: event.notification.body ?? '',
          largeIconURL: event.notification.largeIcon ?? '',
          bigPictureURL: event.notification.bigPicture ?? '',
        ),
      ),
    );
  }
}
