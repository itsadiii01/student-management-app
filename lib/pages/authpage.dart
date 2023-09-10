// import 'package:bu_portal2/pages/login_page.dart';

// import 'package:flutter/material.dart';


// import 'homepage.dart';
// class AuthPage extends StatelessWidget {
//   const AuthPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<User?>(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot){
//           //usr login
//           if (snapshot.hasData){
//             return HomePage();

//           }


//           //nt logdin
//           else{
//             return LoginPage();
//           }
        
//         },
//       ),
//     );
//   }
// }