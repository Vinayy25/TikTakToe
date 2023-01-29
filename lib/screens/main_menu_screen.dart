import 'package:flutter/material.dart';
import 'package:tik_tak_toe/responsive/responsive.dart';
import 'package:tik_tak_toe/screens/create_room_screen.dart';
import 'package:tik_tak_toe/screens/join_room_screen.dart';
import 'package:tik_tak_toe/widgets/custom_button.dart';

class MainMenu extends StatefulWidget {
  static String routeName = '/mainMenu/';
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => MainMenuState();
}

class MainMenuState extends State<MainMenu> {
  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomButton(onTap: () => createRoom(context), text: 'Create Room'),
            SizedBox(
              height: 20,
            ),
            CustomButton(onTap: () => joinRoom(context), text: 'Join Room'),
          ],
        ),
      ),
    );
  }
}
