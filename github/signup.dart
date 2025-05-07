import 'package:firebase/login%20page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget
{

  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup>
{
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  void signup() async
  {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text.toString(), password: pass.text.toString());
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

                image:AssetImage("asset/3.jpg")

            )
        ),

        child: Column
          (
          children:
          [
            SizedBox(height:250 ,),

            Padding
              (
              padding: const EdgeInsets.only(left: 50,right: 50),

              child: TextFormField
                (
                controller: email,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(labelText: "EMAIL-Adress",border: OutlineInputBorder(),prefixIcon: Icon(Icons.mail)),

              ),


            ),

            SizedBox(height:20 ,),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: TextFormField
                (
                  controller: pass,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(labelText: "Password",border: OutlineInputBorder(),prefixIcon: Icon(Icons.lock_outline,)
                  )
              ),




            ),
            SizedBox(height: 30,),

            Row(

              children:
              [
                SizedBox(width: 70,),
                Icon(Icons.check_box_outlined,color: Colors.white,),
                SizedBox(width: 10,),
                Text("remember for 30 days",style: TextStyle(color: Colors.white),)
              ],


            ),

            SizedBox(height: 10,),

            Padding
              (
              padding: const EdgeInsets.only(top: 20),

              child: Container
                (
                height: 50,width: 400,color: Colors.pink,

                child: TextButton(onPressed: ()
                {
                  signup();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Signing With email:${email.text},pass:${pass.text}",style: TextStyle(backgroundColor: Colors.deepOrange,color: Colors.white),)));

                 Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));

                }, child:Text("Sign Up",style: TextStyle(color: Colors.white),)
                ),


              ),

            ),



          ],

        ),


      ),

    );

  }
}
