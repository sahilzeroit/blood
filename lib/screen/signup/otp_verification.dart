import 'package:blood/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';




class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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
           const Text(
                 'OTP has been sent to',style: TextStyle(
                   fontSize:28,
              color: Colors.black,
              fontWeight: FontWeight.normal,
              backgroundColor: Colors.white,
              decoration:TextDecoration.none
                ),
              ),
              SizedBox(
                height: 10,
              ),
            RichText(text:const  TextSpan(
              text: '1234567890',
            style: TextStyle(
                 fontSize:35,
              color: Color(0xffeb222a),
              fontWeight: FontWeight.w500,
              backgroundColor: Colors.white,
              decoration:TextDecoration.none
             
            ),
             children:[
              TextSpan(
                text: ' via SMS',style: TextStyle(
                  fontSize:28,
              color: Colors.black,
              fontWeight: FontWeight.normal,
              backgroundColor: Colors.white,
              decoration:TextDecoration.none
                ),
              ),
             
             ]
            ),
           
    
            ),
             SizedBox(height: 20),
            OtpTextField(
                  
                  fillColor:const Color(0xffccf88d),
                  filled: true,
                    numberOfFields: 4,
                    fieldWidth: 60,
                    
                    borderRadius: const	BorderRadius.all(Radius.circular(14.0),
                    
                    ),
                    textStyle: TextStyle(fontSize: 20),
                    
                        
                      showFieldAsBox: true, 
          
  ),
           Padding(
                   padding: const EdgeInsets.only(top:15.0),
                   child: ElevatedButton(
                      
                     child: Text(
                       'Resend OTP',
                       style: TextStyle(
                        fontSize: 25.0, 
                         color: Color(0xffeb222a),
                         fontWeight: FontWeight.w300,
                         ),
                     ),
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                       elevation: 0,
                     
                     
                     ),
                     onPressed: (){},
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top:25.0),
                   child: ElevatedButton(
                      
                     child: Text(
                       'VERIFY',
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
                    MaterialPageRoute(builder: (context) => HomePage()),
                   );
                   },
                   ),
                 ),
                 
        ],)
      ),
    );



    
  }
}
