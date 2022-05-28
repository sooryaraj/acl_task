import 'package:acl_task/utils/global.dart';
import 'package:acl_task/utils/route_paths.dart' as routes;
import 'package:acl_task/utils/router.dart' as router;
import 'package:acl_task/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() {
  init();
  runApp(const MyApp());
}

var isNewUser = false;

void init() async {
  await GetStorage.init();
  isNewUser = Utils.isNewUser();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ACL',
      theme: ThemeData(
        backgroundColor: Colors.grey[800],
        primarySwatch: Colors.blueGrey,
      ),
      navigatorKey: Globals.navigatorKey,
      onGenerateRoute: router.generateRoute,
      initialRoute: isNewUser ? routes.loginScreen : routes.dashboardScreen,
    );
  }
}
