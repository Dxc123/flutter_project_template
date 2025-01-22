import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:get/get.dart';

import '../../../../generated/l10n.dart';
import '../../../../generated/locales.g.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.LoginPages_sign_in_apple.tr),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              EasyLoading.showToast("status");
            },
            child: Text(S.current.sign_in_apple),
          )
        ],
      ),
      body: EasyRefresh.builder(
        onRefresh: () {},
        onLoad: () {},
        childBuilder: (BuildContext context, ScrollPhysics physics) {
          return ListView.builder(
              physics: physics,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  margin: const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 10),
                  color: Colors.red,
                );
              });
        },
      ),
    );
  }
}
