import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

   final user = FirebaseAuth.instance.currentUser!.email;

  void signUserOut(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightGreenAccent,actions: [IconButton(onPressed: signUserOut, icon: const Icon(Icons.logout))]),
      body:  Center(
        child: Text("Logged In as $user"),
      ),
    );
  }
}
