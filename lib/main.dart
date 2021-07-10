import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:star_wars_app/routes/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences pref = await SharedPreferences.getInstance();
  
  runApp(MyApp(pref: pref,),);
}

class MyApp extends StatelessWidget {
  MyApp({Key key, this.pref}) : super(key: key);
  final SharedPreferences pref;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Star Wars',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        return MyRouter.onGenerateRoute(settings, pref);
      },
      navigatorKey: MyRouter.navigator,
    );
  }
}
