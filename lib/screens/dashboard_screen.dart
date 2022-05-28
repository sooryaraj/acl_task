import 'package:acl_task/utils/utils.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: const EdgeInsets.all(10.0),
        child: Scaffold(
          appBar: AppBar(
            title: Text("Title"),
          ),
          body: SizedBox(
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "This is a Dashboard Screen",
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Utils.clearMobileNumber();
                          Utils.goBackWithParam(context: context);
                        },
                        child: const Text("Go back with param")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Utils.clearMobileNumber();
                          Utils.goBackUsingGetX();
                        },
                        child: const Text("Go back using GetX")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Utils.clearMobileNumber();
                          Utils.goBackUsingGlobalKey();
                        },
                        child: const Text("Go back using GlobalKey")),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
