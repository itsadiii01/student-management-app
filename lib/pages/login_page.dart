
import 'package:college_portal/pages/register_page.dart';

import 'package:flutter/material.dart';
import 'package:college_portal/component/my_textfield.dart';
import 'package:college_portal/component/my_button.dart';

class LoginPage extends StatelessWidget {
 
  //  LoginPage ( {super.key, });

 //txt edtng cntrlrs
 final emailController = TextEditingController();

 final passwordController = TextEditingController ();

 void signUserIn(){}
  

  //sgn usr in
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       body: SafeArea(
         child: Center(
          child: SingleChildScrollView(
           child: Column(
            
            children: [
              const SizedBox(height: 5),
              
              
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                   
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0),
                      child: Image.asset('lib/images/bennett.png',width: 370,height: 150
                      ),
                    ),
                    
                  ],
                ),
              ),
              //SizedBox(height: 20),
    
              // Text('     WELCOME  🙏',style: TextStyle(fontSize: 20,
              // fontWeight: FontWeight.bold,
              // color: Color.fromARGB(255, 180, 14, 2)) ),
    
              SizedBox(height: 50),
    
              //username 
              Mytextfield(
                controller: emailController,
                hintText: 'Username',
                obscureText:  false,
              ),
    
              SizedBox(height: 30),
              
                
    
              
              // password 
               Mytextfield(
                controller: passwordController,
                hintText: 'password',
                obscureText: true,  
               ),
               
             SizedBox(height: 10),
              
            // frgt paswrd?  
           
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                
              
            
              
              //sign butt 
              Mybutton(
                text: "Sign In",
                onTap: signUserIn
                ),
    
    
                const SizedBox(height: 60),
    //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                    thickness: 1.0,
                    color: Colors.grey[400],
                  ), 
                  ),
                
                  Text('or continue with',style: TextStyle(fontSize: 17),),
                  Expanded(
                        child: Divider(
                    thickness: 1.0,
                    color: Colors.grey[400],
                  ) 
                      )
                  ],
                  ),
                ),
              
    
    
            
              
              
              SizedBox(height: 30,)
              ,
              //google+
              Center(child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal:20.0),
                 child: Row(
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 60),
                    child: Image.asset('lib/images/google.png',
                    height: 72),)
                    ,
                    Padding(padding: const EdgeInsets.only(left: 20,right: 20),
                    child:  Image.asset('lib/images/apple.png',
                    height: 72),),
                    Padding(padding: const EdgeInsets.all(0),
                    child: Image.asset('lib/images/micro.png',
                    height: 72),)
                  
               
               
                  ],
                           ),
               ),
               ),
    
               SizedBox(height: 60),
    
              
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member? '),
                  const SizedBox(width:5),

                  GestureDetector(
                    onTap:() {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(onTap: () {  }, showLoginPage: () {  },)),);
                      
           },
                    child: const Text('Register now',
                    style: TextStyle(color: Color.fromARGB(255, 223, 25, 4),
                    ),
                    ),
                  ),
                  
                ],
              )
            
             ],
             ),
         ),
       ),
      ),
    );
    }
}
