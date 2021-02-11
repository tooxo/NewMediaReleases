import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:new_media_releases/music/music_types.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class Notifications {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  Future<dynamic> onDidReceiveLocalNotification(
      int a, String b, String c, String d) {}

  Future<dynamic> selectNotification(String a) {}

  void init() async {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    tz.initializeTimeZones();
    tz.setLocalLocation(
        tz.getLocation(await FlutterNativeTimezone.getLocalTimezone()));
    // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    var initializationSettingsAndroid =
        AndroidInitializationSettings('@android:drawable/ic_lock_idle_alarm');
    var initializationSettingsIOS = IOSInitializationSettings(
        onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: selectNotification);
  }

  void requestPermissionsApple() async {
    var result = await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  void scheduleNotifications(Duration timeUntil, MusicalEntry entry) async {
    const androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'release notifications',
        'release notifications',
        'notifies of releases',
        importance: Importance.max,
        priority: Priority.high,
        ticker: 'ticker');
    const iOSPlatformChannelSpecifics = IOSNotificationDetails();
    NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.zonedSchedule(
      0,
      'scheduled title',
      'scheduled body',
      tz.TZDateTime.now(tz.local).add(timeUntil),
      platformChannelSpecifics,
      androidAllowWhileIdle: true,
      payload: entry.id,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  void removeNotification(String id) async {
    List<PendingNotificationRequest> notifications =
        await flutterLocalNotificationsPlugin.pendingNotificationRequests();

    for (PendingNotificationRequest pending in notifications)
      if (pending.payload.contains(id))
        await flutterLocalNotificationsPlugin.cancel(pending.id);
  }

  Future<bool> notificationAlreadyScheduled(String id) async {
    List<PendingNotificationRequest> notifications =
        await flutterLocalNotificationsPlugin.pendingNotificationRequests();

    for (PendingNotificationRequest pending in notifications)
      if (pending.payload.contains(id)) return true;
    return false;
  }
}
