import 'package:dz_email/mail.dart';
import 'package:flutter/material.dart';
import 'package:dz_email/singin.dart';

class SingIn extends StatefulWidget {
  const SingIn({ Key? key }) : super(key: key);

  @override
  _SingInState createState() => _SingInState();
}
final _controllerOneSingin=TextEditingController();
final _controllerTwoSingin=TextEditingController();
final _controllerThreeSingin=TextEditingController();
String? errorTextSingIn;




class _SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    
    singInFun(){
      if(RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_controllerOneSingin.text)){
          Users newUser=Users(_controllerOneSingin.text,_controllerTwoSingin.text);
ListOfUsers.add(newUser);

Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=> const MailWidget()),
              );
        }
  }

  void _onTap(){
   for (int i = 0; i < ListOfUsers.length; i++) {
      if (_controllerOneSingin.text != ListOfUsers[i].email&&_controllerOneSingin.text!='') {
            
        setState(() {
          errorTextSingIn='Incorect email!';
        });
      }
    
      else{
        setState(() {
          errorTextSingIn=null;
        });
      }
    }

  }
void _onTapFirst(){
   setState(() {
     _controllerOneSingin.clear();
     errorTextSingIn=null;
   });

  }

    return Scaffold(
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text(
                  'Create Email',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                TextField(
                  controller: _controllerOneSingin,
                  onTap: _onTapFirst,
                  decoration: InputDecoration(
                    errorText: errorTextSingIn,
                    contentPadding: const  EdgeInsets.all(10),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Create Password',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                TextField(
                  onTap: _onTap,
                  controller: _controllerTwoSingin,
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
                const Text(
                  'Confirm Password',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                TextField(
                 
                  controller: _controllerThreeSingin,
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
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: singInFun,
                  child: const  SizedBox(
                    child:  Center(child: Text('Sing in')),
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
          
        ],
      ),
    );
    
  }
}