import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetPlatform.isAndroid ? const WidgetAndroid() : const WidgetIOS();
  }
}

class WidgetAndroid extends StatelessWidget {
  const WidgetAndroid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.green,
        ),
      ),
    );
  }
}

class WidgetIOS extends StatelessWidget {
  const WidgetIOS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.black,
        ),
      ),
    );
  }
}
