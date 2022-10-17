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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  int selectedItemIndex = 0;
 
  List<Widget> _widgets = [
    Text("Home", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.amber),),
    Text("Calls", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.blueAccent),),
    Text("Chats", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.black ),),
    Text("Review", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.black ),),
 
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Blood")),
        backgroundColor: Color.fromARGB(255, 196, 18, 6),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
      ),
      body: Container(
        child: Center(
          child: _widgets[selectedItemIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 228, 21, 6),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            
              icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.call),
            label: 'Call'
          ),
 
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
            label: "Chat"
          ),
          
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
            label: "Review"
          )
        ],
        currentIndex: selectedItemIndex,
        onTap: (int index){
          setState(() {
            selectedItemIndex = index;
          });
        }
        
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 238, 38, 16),
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color.fromARGB(255, 224, 8, 8)),
                accountName: Text(
                  "Gourav bhabhoria",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("gouravbhbahoria@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 246, 20, 20),
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            Container(
              
              
              child: ListTile(
                leading: const Icon(Icons.map,size: 30,),
                
                title: const Text(' Map View ',),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            ListTile(
              leading: const Icon(Icons.man,size: 30),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.bloodtype,size: 30),
              title: const Text(' Requests '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.donut_large,size: 30),
              title: const Text(' Refer Friend '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.history,size: 30,),
              title: const Text('Donate History '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout,size: 30,),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
