


import 'package:flutter/material.dart';
import 'package:tik_tak_toe/widgets/custom_text.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName = '/createRoom/';
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
 
  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size; 
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const CustomText(
              shadows: [
                Shadow(
                  blurRadius: 40,
                  color: Colors.blue,
                )
              ],
              text: 'Create room',
              fontSize: 70,
            ),
            SizedBox(height: size.height*0.08,),
             
          ],
        ),
      ),
    );
  }
}
