import 'package:flutter/material.dart';
import './home_page.dart';
import './login.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
          appBar: AppBar(
          backgroundColor: Colors.blueAccent, // AppBar background color
          title: Text(
            'Signup',
            style: TextStyle(
              color: Colors.white,   // Title color
              fontSize: 20,          // Title font size
              fontWeight: FontWeight.bold, // Title font weight
            ),
          ),
        ),
       
      body:Padding(
      padding: const EdgeInsets.only(top: 150.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Sign up',
              style: TextStyle(
                fontSize: 35,
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 30,),
          Form(
            child: Column(
              children:[

                Padding(
                  padding: const EdgeInsets.only(
                    right: 35,
                    left: 35
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText:'Username',
                      border:OutlineInputBorder(),
                    ),
                    onChanged: (String value){
                  
                    },
                    validator:(value){
                      return value!.isEmpty ? 'Please enter usename' : null;
                    },
                  ),
                ),

              SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.only(
                    right:35,
                    left:35
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText:'Email',
                      border:OutlineInputBorder(),
                    ),
                    onChanged: (String value){
                  
                    },
                    validator:(value){
                      return value!.isEmpty ? 'Please enter email' : null;
                    },
                  ),
                ),

              SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.only(
                    right: 35,
                    left: 35
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText:'Password',
                      border:OutlineInputBorder(),
                    ),
                    onChanged: (String value){
                  
                    },
                    validator:(value){
                      return value!.isEmpty ? 'Please enter password' : null;
                    },
                  ),
                ),

            SizedBox(height: 30,),

            MaterialButton(
              onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=> Homepage(),
              ));
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Sign Up'),
            ),

              SizedBox(height: 15,),

            MaterialButton(
              onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=> Login(),
              ));
              },
              textColor: const Color.fromARGB(255, 35, 6, 183),
              child: Column(
                children: [
                  Text('Already signup?Login'),
                  Text('Already signup?Login'),

                ],
              ),
            ),
            
            



              ]
            ),
          )
        ],
        ),
       ),
      )
    );     
  }
}