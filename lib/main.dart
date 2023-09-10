import 'package:college_portal/pages/authpage.dart';
import 'package:college_portal/pages/login_page.dart';

import 'package:flutter/material.dart';




 Future<void>  main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
// );
 
   runApp(const MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
           
           home: LoginPage());
    
  }
}