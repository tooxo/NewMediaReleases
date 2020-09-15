import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Notifications {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  Future<dynamic> onDidReceiveLocalNotification(
      int a, String b, String c, String d) {}

  Future<dynamic> selectNotification(String a) {}

  void init() async {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    var initializationSettingsAndroid =
        AndroidInitializationSettings('launch_background');
    var initializationSettingsIOS = IOSInitializationSettings(
        onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    var initializationSettings = InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);
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

  void testNotification() async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'release notifications',
        'release notifications',
        'notifies of releases',
        importance: Importance.Max,
        priority: Priority.High,
        ticker: 'ticker');
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
        0, 'plain title', 'plain body', platformChannelSpecifics,
        payload: 'item x');
  }

  void scheduleNotifications(DateTime scheduledDate) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'release notifications',
        'release notifications',
        'notifies of releases',
        importance: Importance.Max,
        priority: Priority.High,
        ticker: 'ticker');
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    NotificationDetails platformChannelSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.schedule(0, 'scheduled title',
        'scheduled body', scheduledDate, platformChannelSpecifics,
        androidAllowWhileIdle: true);
  }
}
