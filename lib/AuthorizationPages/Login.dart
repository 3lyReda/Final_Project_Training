import 'package:flutter/material.dart';
import './register_screen.dart';
import '../screens/NavigationPage.dart';




class Login extends StatelessWidget {

var formKey = GlobalKey<FormState>();
  Login({Key? key}) : super(key: key);

var passwordController=TextEditingController();
var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(

    body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [


            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 40,
              ),

              child: Form(
                key: formKey,
               child: Column(

                 children: [

                   const Image(height: 150,
                       width: 150,
                       image: NetworkImage("https://i.pinimg.com/564x/b0/c9/2f/b0c92f2bbbc1dfaa1f077c8bd42804ea.jpg")
                   ),

                   const Text(
                     'Login',
                     style: TextStyle(
                       fontSize: 50
                     ),
                   ),

                   const SizedBox(
                     height: 20,
                     width: 30,
                   ),

                   TextFormField(
                      controller: emailController ,

                     validator: ((value) {
                       if(value!.isEmpty){
                         return "email address must not be empty";
                       }
                       return null;
                     }

                     ),
                     keyboardType: TextInputType.emailAddress,

                     decoration: const InputDecoration(

                         border: OutlineInputBorder(
                           borderRadius:BorderRadius.all(Radius.circular(30)) ,
                         ),
                       prefixIcon: Icon(Icons.email),
                       labelText: 'EmailAddress',
                       labelStyle: TextStyle(color: Colors.grey)
                     ),
                   ) ,
                   const SizedBox(
                     height: 20,
                   ),


                   TextFormField(
                     controller: passwordController,
                     keyboardType: TextInputType.visiblePassword,
                     validator: (value) {
                       if(value!.isEmpty){
                         return 'Password ot be empty ';
                       }
                       return null;
                     },
                     decoration:  const InputDecoration(
                       // enabledBorder: ,
                       border: OutlineInputBorder(

                         borderRadius:BorderRadius.all(Radius.circular(30)) ,
                       ),
                       prefixIcon: Icon(Icons.lock),
                       labelText: 'Password ',
                         labelStyle: TextStyle(color: Colors.grey),

                              ),
                   ),
                   SizedBox(height: 20,),

                   GestureDetector(
                     onTap: (){
                       if(formKey.currentState!.validate()){
                         Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const NavigationPage(),));}

                     },
                     child: Container(
                       alignment: Alignment.center,
                       height: 50.0,
                       width: MediaQuery.of(context).size.width,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(30.0),
                         color:const Color(0xFF4F1EF3),
                       ),
                       child: const Text(
                         "Login",
                         style: TextStyle(color: Colors.white,fontSize: 20.0, fontWeight: FontWeight.w600),
                       ),
                     ),
                   ),

                   Row(
                     children: [
                       const Text('I do not have an account'),
                       TextButton(
                           onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder:(context) => RegisterScreen(),));
                       }, child: const Text('Register'))

                     ],
                   )

                 ],
               ),
              ),
             ),
          ],
        ),
      ),
    ),
    );
  }
