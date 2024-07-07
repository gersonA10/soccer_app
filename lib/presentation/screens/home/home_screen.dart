import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_app/presentation/screens/ligues/ligues_sceen.dart';

class HomeScreen extends StatelessWidget {

  static const path = '/home';
  static const name = 'home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Matchs"),
        actions: [
          TextButton(onPressed: ()=> context.push(LiguesScreen.path), child: const Text("Ligues"),)
        ],
      ),

      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            height: 110,
            child: const Card(
              color: Color.fromARGB(255, 255, 255, 255),
              elevation: 5,
              shadowColor: Colors.black54,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    //Vamos a realizar el primer lado
                  Text("Team 1"),
                  CircleAvatar(),

                  //Parte del centro
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("07:30", style: TextStyle(fontSize: 13, color: Colors.red, fontWeight: FontWeight.bold,),),
                      Text("31 OCT", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.bold),),
                      Text("Emirates Stadium, London", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  
                  //Vamos a realizar el segundo lado
                  CircleAvatar(),
                  Text("Team 2")

                ],
              )
            ),
          );
        },
      ),
    );
  }
}