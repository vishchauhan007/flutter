import 'package:firebase/home%20page.dart';
import 'package:firebase/login%20page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp
    (
    options: FirebaseOptions
      (
        apiKey: "AIzaSyD1Q06IKJriK9AkvMYVV2gngp9HmlRQ9wA",
        appId: "1:277154567919:android:93080a2dc2d6e8dbe0ad1a",
        messagingSenderId: "277154567919",
        projectId: "backimage-54f29"
    )
  );


runApp(MaterialApp(home: first(),));
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder
      (
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot)
        {
          if(snapshot.hasData)
            {
              return home();
            }
          else
            {
              return login();

            }
        }
    );
  }
}

