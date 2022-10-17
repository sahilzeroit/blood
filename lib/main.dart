// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home:  MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int selectedItemIndex = 0;

//   List<Widget> _widgets = [
//     Text("Home", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.amber),),
//     Text("Calls", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.blueAccent),),
//     Text("Chats", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.black ),),
//     Text("Review", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.black ),),

//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text("Blood")),
//         backgroundColor: Color.fromARGB(255, 196, 18, 6),
//         actions: [
//           IconButton(onPressed: (){}, icon: Icon(Icons.search))
//         ],
//       ),
//       body: Container(

//         child:
//           _widgets[selectedItemIndex],
//         ),

//       bottomNavigationBar: BottomNavigationBar(
//         // backgroundColor: Color.fromARGB(255, 228, 21, 6),
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(

//               icon: Icon(Icons.home),
//             label: 'Home'
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Color.fromARGB(255, 241, 5, 5),
//               icon: Icon(Icons.call),
//             label: 'Call'
//           ),

//           BottomNavigationBarItem(
//               icon: Icon(Icons.chat),
//             label: "Chat"
//           ),

//           BottomNavigationBarItem(
//               icon: Icon(Icons.reviews),
//             label: "Review"
//           )
//         ],
//         currentIndex: selectedItemIndex,
//         onTap: (int index){
//           setState(() {
//             selectedItemIndex = index;
//           });
//         }

//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: const EdgeInsets.all(0),
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 238, 38, 16),
//               ), //BoxDecoration
//               child: UserAccountsDrawerHeader(
//                 decoration: BoxDecoration(color: Color.fromARGB(255, 224, 8, 8)),
//                 accountName: Text(
//                   "Gourav bhabhoria",
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 accountEmail: Text("gouravbhbahoria@gmail.com"),
//                 currentAccountPictureSize: Size.square(50),
//                 currentAccountPicture: CircleAvatar(
//                   backgroundColor: Color.fromARGB(255, 246, 20, 20),
//                   child: Text(
//                     "A",
//                     style: TextStyle(fontSize: 30.0, color: Colors.blue),
//                   ), //Text
//                 ), //circleAvatar
//               ), //UserAccountDrawerHeader
//             ), //DrawerHeader
//             Container(

//               child: ListTile(
//                 leading: const Icon(Icons.map,size: 30,),

//                 title: const Text(' Map View ',),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ),
//             ListTile(
//               leading: const Icon(Icons.man,size: 30),
//               title: const Text(' My Profile '),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.bloodtype,size: 30),
//               title: const Text(' Requests '),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.donut_large,size: 30),
//               title: const Text(' Refer Friend '),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.history,size: 30,),
//               title: const Text('Donate History '),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.logout,size: 30,),
//               title: const Text('LogOut'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'dart:ui';

import 'package:blood/screen/bottomscreen/Page1.dart';
import 'package:blood/screen/bottomscreen/Page2.dart';
import 'package:blood/screen/bottomscreen/Page3.dart';
import 'package:blood/screen/bottomscreen/Page4.dart';
import 'package:blood/screen/drawerscreen/About.dart';
import 'package:blood/screen/drawerscreen/Ambulance.dart';
import 'package:blood/screen/drawerscreen/Bloodbank.dart';
import 'package:blood/screen/drawerscreen/Hospital.dart';
import 'package:blood/screen/drawerscreen/Languages.dart';
import 'package:blood/screen/drawerscreen/Logout.dart';
import 'package:blood/screen/drawerscreen/MapView.dart';
import 'package:blood/screen/drawerscreen/MyProfile.dart';
import 'package:blood/screen/drawerscreen/Privacy.dart';
import 'package:blood/screen/drawerscreen/Rate.dart';
import 'package:blood/screen/drawerscreen/ReferFriend.dart';
import 'package:blood/screen/drawerscreen/Requests.dart';
import 'package:blood/screen/drawerscreen/notification.dart';
import 'package:blood/screen/signup/login.dart';
import 'package:blood/screen/signup/otp_verification.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom NavBar Demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 240, 9, 9),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
       
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffC4DFCB),
        appBar: AppBar(
          title: Text(
            "Blood Donation",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: "monospace"),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 218, 45, 33),
        ),
        body: pages[pageIndex],
        bottomNavigationBar: buildMyNavBar(context),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 213, 41, 29),
          child: ListView(
            // scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(0),
            children: [
              Container(
                  color: Color.fromARGB(255, 162, 45, 45),
                  child: DrawerHeader(
                      child: Image.asset(
                          "assets/images/blood.png"))),
              // const DrawerHeader(
              //     decoration: BoxDecoration(

              //         color: Color.fromARGB(255, 183, 177, 177),
              //         ),
              //     child: UserAccountsDrawerHeader(
              //       decoration:
              //           BoxDecoration(color: Color.fromARGB(255, 241, 233, 233)),
              //       accountName: Text(
              //         "Gourav bhabhoria",
              //         style: TextStyle(fontSize: 18),
              //       ),
              //       accountEmail: Text("gouravbhbahoria@gmail.com"),
              //       currentAccountPictureSize: Size.square(50),
              //       currentAccountPicture: CircleAvatar(
              //         backgroundColor: Color.fromARGB(255, 246, 20, 20),
              //         child: Text(
              //           "A",
              //           style: TextStyle(fontSize: 30.0, color: Colors.blue),
              //         ), //Text
              //       ), //circleAvatar
              //     )),
              //DrawerHeader
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: ListTile(
                    leading: const Icon(
                      Icons.map,
                      size: 32,
                      color: Colors.white,
                    ),
                    title: const Text(
                      ' Map View ',
                    style: TextStyle(fontSize: 17,color: Colors.white),),
                    onTap: () {
                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MapView()),
                  );
                },
                    
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.man, size: 32,color: Colors.white,),
                title: const Text(' My Profile ', style: TextStyle(fontSize: 17,color: Colors.white)),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MyProfile()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.request_quote_sharp, size: 32,color: Colors.white,),
                title: const Text(' Requests ',style: TextStyle(fontSize: 17,color: Colors.white)),
                onTap: () {
                 Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Requests()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.donut_large, size: 32,color: Colors.white),
                title: const Text(' Refer Friend ',style: TextStyle(fontSize: 17,color: Colors.white)),
                onTap: () {
                 Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ReferFriend()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.medical_services,
                  size: 32,
                  color: Colors.white
                ),
                title: const Text('Ambulance Service ',style: TextStyle(fontSize: 17,color: Colors.white)),
                onTap: () {
                   Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Ambulance()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.local_hospital,
                  size: 32,
                  color: Colors.white,
                ),
                title: const Text('Hospital Service',style: TextStyle(fontSize: 17,color: Colors.white)),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Hospital()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.bloodtype,
                  size: 32,
                  color: Colors.white,
                ),
                title: const Text('Blood Bank Service',style: TextStyle(fontSize: 17,color: Colors.white)),
                onTap: () {
                   Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Bloodbank()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.language,
                  size: 32,
                  color: Colors.white,
                ),
                title: const Text('Languages',style: TextStyle(fontSize: 17,color: Colors.white)),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Languages()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.account_box_rounded,
                  size: 32,
                  color: Colors.white,
                ),
                title: const Text('About us',style: TextStyle(fontSize: 17,color: Colors.white)),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => About()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.rate_review,
                  size: 32,
                  color: Colors.white,
                ),
                title: const Text('Rate us',style: TextStyle(fontSize: 17,color: Colors.white)),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Rate()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.notification_add,
                  size: 32,
                  color: Colors.white,
                ),
                title: const Text('Notifications',style: TextStyle(fontSize: 17,color: Colors.white)),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => notification()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.privacy_tip,
                  size: 32,
                  color: Colors.white,
                ),
                title: const Text('Privacy',style: TextStyle(fontSize: 17,color: Colors.white)),
                onTap: () {
                 Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Privacy()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                  size: 32,
                  color:Colors.white
                ),
                title: const Text('LogOut',style: TextStyle(fontSize: 17,color: Colors.white)),
                onTap: () {
                 Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
            ],
          ),
        ));
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Color.fromARGB(255, 232, 225, 225),
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.work_rounded,
                    color: Color.fromARGB(255, 237, 234, 234),
                    size: 35,
                  )
                : const Icon(
                    Icons.work_outline_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.widgets_rounded,
                    color: Color.fromARGB(255, 212, 200, 200),
                    size: 35,
                  )
                : const Icon(
                    Icons.widgets_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 255, 249, 249),
                    size: 35,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}
