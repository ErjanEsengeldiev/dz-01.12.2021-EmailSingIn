import 'dart:math';

import 'package:dz_email/myapp.dart';
import 'package:dz_email/singin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'firstdz.dart';

class Users {
  String email;
  String password;

  Users(this.email, this.password);
}

List<Users> ListOfUsers = [
  Users('admin', '123'),
  
];

String? errorText;


class MailWidget extends StatefulWidget {
  const MailWidget({Key? key}) : super(key: key);

  @override
  _MailWidgetState createState() => _MailWidgetState();
}

class _MailWidgetState extends State<MailWidget> {
  final _controllerOne = TextEditingController();
  final _controllerTwo = TextEditingController();
bool s = false;
  void logInFunc() {
    for (int i = 0; i < ListOfUsers.length; i++) {
      if (_controllerOne.text == ListOfUsers[i].email &&
          _controllerTwo.text == ListOfUsers[i].password) {
            setState(() {
              
            });
             Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FirstDz()),
          
          
        );
        break;
      }
      else if (_controllerOne.text != ListOfUsers[i].email &&
          _controllerTwo.text != ListOfUsers[i].password){

        setState(() {
          s = true;
          // errorText='Incorect email';
        });
      }
    }
  }
  // void _onTap(){
  //  for (int i = 0; i < ListOfUsers.length; i++) {
  //     if (_controllerOne.text != ListOfUsers[i].email&&_controllerOne.text!='') {
            
  //       setState(() {
  //         errorText='There is no such email in the database. Please sing in';
  //       });
  //     }
    
  //     else{
  //       setState(() {
  //         errorText=null;
  //       });
  //     }
  //   }

  // }
  void _onTapForFirst(){
   setState(() {
     _controllerOne.clear();
     _controllerTwo.clear();
     errorText=null;
     s=false;
   });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(left: 20, right: 20),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(9)),
                color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Email',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    s ==true?const Text("Не правильный логин или пароль",style: TextStyle(color: Colors.red),):const SizedBox(),
                    
                  ],
                ),
                TextFormField(                  
                  onTap: _onTapForFirst,
                  controller: _controllerOne,
                  decoration:  InputDecoration(
                    errorText: errorText!=null?errorText!:null,

                    contentPadding: EdgeInsets.all(10),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                     Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                                       ),
                     Text(
                  'Forgot password?',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
                  ],
                ),
                
                TextField(
                  // onTap: _onTap,
                  controller: _controllerTwo,
                  obscureText: true,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: logInFunc,
                  child: const SizedBox(
                    child: TextLogIn(),
                    width: double.infinity,
                    height: 50,
                  ),
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Dont have an account?',
                textAlign: TextAlign.end,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SingIn()),
                  );
                },
                child: const Text(
                  ' Sing in',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TextLogIn extends StatelessWidget {
  const TextLogIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Log in',
      ),
    );
  }
}
