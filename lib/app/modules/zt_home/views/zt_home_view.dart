import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/zt_home_controller.dart';

class ZtHomeView extends StatefulWidget {
  const ZtHomeView({super.key});

  @override
  State<ZtHomeView> createState() => _ZtHomeViewState();
}

class _ZtHomeViewState extends State<ZtHomeView>with AutomaticKeepAliveClientMixin {
  final controller = Get.put(ZtHomeController());
  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    Get.delete<ZtHomeController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const Placeholder();
  }
}

class MyUserModel {
  int? id;
  String? name;

  MyUserModel({this.id, this.name});

  MyUserModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}

class RxUserModel {
  final id = 0.obs;
  final nome = 'nome'.obs;
}

class UserModel {
  UserModel({id, nome});

  final rx = RxUserModel();

  get nome => rx.nome.value;
  set nome(value) => rx.nome.value = value;

  get id => rx.id.value;
  set id(value) => rx.id.value = value;

  UserModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.nome = json['nome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    return data;
  }
}
