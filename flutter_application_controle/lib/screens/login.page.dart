import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {

   LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey=GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController(); 

  final TextEditingController _passwordController = TextEditingController();

  bool _passwordVisible=false;

  String? _validateEmail(String? value){
    if(value==null||value.isEmpty){
      return 'Please enter your email';
    }
    final emailPattern=r'^[^@]+@[^@]+\.[^@]+';
    final regex=RegExp(emailPattern);
    if(!regex.hasMatch(value)){
      return 'Enter a valid email address';
    }
    return null;
  }

    String? _validatePassword(String? value){
    if(value==null||value.isEmpty){
      return 'Please enter your password';
    }
    
    if(value.length<6){
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('Login page', style: TextStyle(color: Colors.white, fontSize: 40),
         ),
         centerTitle: true,
         backgroundColor: Colors.purple,

      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child:Form(key: _formkey, child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [Image.asset("lib/images/logo.png",height: 120, width: 120,),
          SizedBox(height: 30),
          Text("Welcome Back",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20,color: Colors.lightBlue),
          ),
          SizedBox(height: 30),
          TextFormField(
            controller: _emailController,
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: Icon(Icons.email)),
          keyboardType: TextInputType.emailAddress,
          validator: _validateEmail,
          ),
          SizedBox(height: 30),
            TextFormField(
            controller: _passwordController,
            obscureText: !_passwordVisible,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: Icon(Icons.password),
         
          suffixIcon: IconButton(
            onPressed :(){
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            }, 
            icon: Icon(_passwordVisible?Icons.visibility:Icons.visibility_off))),
           keyboardType: TextInputType.visiblePassword,
          validator: _validatePassword,
          
          ),
          SizedBox(height: 30),
          ElevatedButton(onPressed: (){
            if(_formkey.currentState!.validate()){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Login')),
              );
              Navigator.pushNamed(context, "/home");
            }
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Colors.teal,
          ),
           child:const Text(
            'login',
            style: TextStyle(fontSize: 18, color : Colors.white),

           ),
           ),
           SizedBox(height: 30),
           TextButton(
            onPressed: (){
              Navigator.pushNamed(context, '/register');
            },
           child: const Text(
            'dont have ana account ? Register here ',
            style:  TextStyle(color: Colors.blueGrey),
           ),
           ),
           
          
          ],
        )),
        ),
    );
  }
}