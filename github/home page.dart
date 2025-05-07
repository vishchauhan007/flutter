import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  void logout() async
  {
    FirebaseAuth.instance.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
          body: Container

      (
      height: double.infinity,width: double.infinity,

      decoration: BoxDecoration

      (

      image: DecorationImage

      (

      fit:BoxFit.cover ,

      image:AssetImage("asset/2.jpg")

    )

    ),

            child: Column
              (
              children:
              [
                SizedBox(height: 400,),
                ElevatedButton(onPressed: ()
                    {
                      logout();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("logout is sucess",style: TextStyle(backgroundColor: Colors.deepOrange,color: Colors.white),)));

                    }, child:Text("log out",style: TextStyle(color: Colors.pink),) )

              ],
            ),

          ),




    );
  }
}
