import 'package:flutter/material.dart';
import 'package:tik_tak_toe/screens/create_room_screen.dart';
import 'package:tik_tak_toe/screens/join_room_screen.dart';
import 'package:tik_tak_toe/screens/main_menu_screen.dart';
import 'package:tik_tak_toe/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: bgColor),
      home: const MainMenu(),
      routes: {
        MainMenu.routeName: (context) => const MainMenu(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
        CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
      },
      initialRoute: MainMenu.routeName,
    );
  }
}
