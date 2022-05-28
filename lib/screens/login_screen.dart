import 'package:acl_task/utils/route_paths.dart' as routes;
import 'package:acl_task/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: const EdgeInsets.all(10.0),
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Title"),
          ),
          body: const LoginBody(),
        ));
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _mobileNumberController = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              height: Get.height,
              width: Get.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: Container(
                width: Get.width,
                margin:
                    const EdgeInsetsDirectional.only(start: 0, end: 0, top: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          TextField(
                            controller: _mobileNumberController,
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blueAccent, width: 2.0),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blueAccent, width: 2.0)),
                              labelStyle: TextStyle(
                                  color: Colors.blueAccent, fontSize: 15),
                              prefixIcon: Icon(
                                Icons.phone_android,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              child: SizedBox(
                                width: Get.width * 0.7,
                                height: 58,
                                child: const Center(
                                  child: Text(
                                    "Verify",
                                    style: TextStyle(fontSize: 24),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blueAccent),
                              ),
                              onPressed: () {
                                print(_mobileNumberController.text);
                                Utils.storeMobileNumber(
                                    mobile_number:
                                        _mobileNumberController.text);
                                Get.toNamed(routes.dashboardScreen);
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
