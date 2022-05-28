import 'package:acl_task/screens/login_screen.dart';
import 'package:acl_task/utils/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Utils {
  Utils._();
  static void goBackWithParam({BuildContext? context}) {
    showDialog(
        context: context!,
        builder: (BuildContext context) {
          return Dialog(
            child: SizedBox(
                width: Get.width,
                height: Get.height * 0.3,
                child: Column(
                  children: [
                    const Text(
                      "Go Back to Login Screen",
                      style: const TextStyle(fontSize: 25),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: const Text(
                        "I have passed context parameter for showing dialog",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen()),
                                    (route) => false);
                              },
                              child: const Text("Yes")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("No")),
                        ],
                      ),
                    )
                  ],
                )),
          );
        });
  }

  static void goBackUsingGetX() {
    Get.defaultDialog(
        title: "Go Back Login Screen",
        middleText: "This dialog is shown by Getx Default dialog",
        backgroundColor: Colors.teal,
        titleStyle: const TextStyle(color: Colors.white),
        middleTextStyle: const TextStyle(color: Colors.white),
        confirm: ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Confirm")),
        cancel: ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Cancel")),
        radius: 30);
    // Get.dialog(SizedBox(
    //     width: Get.width,
    //     height: Get.height * 0.3,
    //     child: Column(
    //       children: [
    //         Text("Go Back to Login Screen"),
    //         Row(
    //           children: [
    //             ElevatedButton(
    //                 onPressed: () {
    //                   Navigator.pushAndRemoveUntil(
    //                       Get.context!,
    //                       MaterialPageRoute(
    //                           builder: (context) => LoginScreen()),
    //                       (route) => false);
    //                 },
    //                 child: Text("Yes")),
    //             ElevatedButton(
    //                 onPressed: () {
    //                   Navigator.of(Get.context!).pop();
    //                 },
    //                 child: Text("No")),
    //           ],
    //         )
    //       ],
    //     )));
  }

  static void goBackUsingGlobalKey() {
    showDialog(
        context: Globals.navigatorKey.currentContext!,
        builder: (BuildContext context) {
          return Dialog(
            child: SizedBox(
                width: Get.width,
                height: Get.height * 0.3,
                child: Column(
                  children: [
                    const Text(
                      "Go Back to Login Screen",
                      style: const TextStyle(fontSize: 25),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: const Text(
                        "Here We create the global keys for store a context",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen()),
                                    (route) => false);
                              },
                              child: const Text("Yes")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("No")),
                        ],
                      ),
                    )
                  ],
                )),
          );
        });
  }

  static void storeMobileNumber({required String mobile_number}) {
    final box = GetStorage();
    box.write('mobile_number', mobile_number);
    var mobile_num = box.read("mobile_number");
  }

  static void clearMobileNumber() {
    final box = GetStorage();
    box.remove("mobile_number");
  }

  static bool isNewUser() {
    final box = GetStorage();
    var mobile_number = box.read("mobile_number");
    return (mobile_number == null || mobile_number == "") ? false : true;
  }
}
