import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_app/modul/Auth/binding/auth_binding.dart';
import 'package:simple_app/modul/Auth/view/login_view.dart';
import 'package:simple_app/modul/konten/binding/konten_controller.dart';
import 'package:simple_app/modul/konten/view/list_contact_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Simple App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
            name: '/login',
            page: () => const halamanLogin(),
            binding: AuthBinding()),
        GetPage(
            name: '/halaman_beranda',
            page: () => const HalamanList(),
            binding: KontenBinding()),
      ],
      initialRoute: '/login',
    );
  }
}
