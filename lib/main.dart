import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:host_group_chat/on_gennerate_route.dart';

import 'feature/presentation/pages/login_page.dart';
import 'firebase_options.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Group chat",
        theme: ThemeData(
          primarySwatch: Colors.green,

        ),
        onGenerateRoute: OnGenerateRoute.route,
        initialRoute: "/",
        routes: {
          "/": (context) {
            return LoginPage();
          }
        }
    );
  }
}
