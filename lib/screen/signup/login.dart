import 'package:blood/screen/signup/otp_verification.dart';
import 'package:flutter/material.dart';





class Login extends StatefulWidget {
  
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var otp ='OTP';

  @override
  Widget build(BuildContext context) {
   
    return Material(
      child: Container(
      
        decoration: const BoxDecoration(
          image: DecorationImage(
              image:AssetImage('assets/images/bg5.jpg'), 
              fit: BoxFit.cover
          )
        ),
        child:Column(children: [
          Container(
            margin: EdgeInsets.only(top: 50),
                height: 150,
            decoration:const BoxDecoration(
              image: DecorationImage(
                image:AssetImage('assets/images/logo.jpg')
              ),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(vertical: 15,horizontal: 20),
            child: Text('Noble To Save Life',style:TextStyle(
               fontSize:20,
              color: Colors.black,
              fontWeight: FontWeight.normal,
              backgroundColor: Colors.white,
              decoration:TextDecoration.none
    
            )),
          ),
          SizedBox(
            height: 30,
          ),
            RichText(text:const  TextSpan(
              text: 'We will send you an',
            style: TextStyle(
               fontSize:32,
              color: Colors.black,
              fontWeight: FontWeight.normal,
              backgroundColor: Colors.white,
              decoration:TextDecoration.none
            ),
             children:[
              TextSpan(
                text: ' OTP',style: TextStyle(
                   fontSize:40,
              color: Color(0xffeb222a),
              fontWeight: FontWeight.w500,
              backgroundColor: Colors.white,
              decoration:TextDecoration.none
                ),
              ),
             
             ]
            ),
           
    
            ),
              const Text(
                 'on you mobile',style: TextStyle(
                   fontSize:32,
              color: Colors.black,
              fontWeight: FontWeight.normal,
              backgroundColor: Colors.white,
              decoration:TextDecoration.none
                ),
              ),
               Container(
                margin: EdgeInsets.only(top: 30),
                width:MediaQuery.of(context).size.width*0.80,
                decoration: BoxDecoration(
                  border:Border.all(width:1),
                  borderRadius: BorderRadius.circular(25)

                ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 15),
                   child: TextFormField(
      
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Phone number',
                          
                        ),
            ),
                 ),
               ),
                 Padding(
                   padding: const EdgeInsets.only(top:25.0),
                   child: ElevatedButton(
                      
                     child: Text(
                       'GET OTP',
                       style: TextStyle(fontSize: 20.0, color: Color(0xffffffff)),
                     ),
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.black,
                       elevation: 0,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(25),
                       ),
                       padding:
                           const EdgeInsets.symmetric(vertical: 12, horizontal: 60),
                     ),
                     onPressed: (){
                   Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => OtpVerification()),
                  );
                },
                   ),
                 ),
        ],)
      ),
    );



    
  }
}
