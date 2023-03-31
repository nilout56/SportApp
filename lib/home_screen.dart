import 'dart:io';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sumang/Profile/profile.dart';
import 'package:sumang/Screens/all.dart';
import 'package:sumang/Screens/destinationScreens.dart';
import 'package:sumang/Screens/destination_scroll.dart';
import 'package:sumang/Screens/discount.dart';
import 'package:sumang/Search/search_Screen.dart';
import 'package:sumang/data/menu_items.dart';
import 'package:sumang/models/menuItem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
      bool showBtmAppBr = true;
  
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // PopupMenuItem<MenuItem> buildItem(MenuItem item) =>PopupMenuItem(child: Text(item.text));
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
             SizedBox(
            width: 10,
          ),
       
        
        ],
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.black, // Change Custom Drawer Icon Color
                    ),
                    onPressed: () {
                 
                      Scaffold.of(context).openDrawer();
                    },
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ),
                ),
              ],
            );
          },
        ),
      ),
      body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                       DisCount(),
                 
                  //DestinationScreens(),
                  SizedBox(
                    height: 20,
                  ),
                  Products(),
                  SizedBox(
                    height: 20,
                  ),
                  ProductList(),
                  SizedBox(
                    height: 20,
                  ),
              
                
                ],
              ),
            ),
          ),
          drawer: NavigationDrawer(),


    

      //     bottomNavigationBar: AnimatedContainer(
        
      //   child: BottomAppBar(
      //     notchMargin: 8.0,
      //     shape: const CircularNotchedRectangle(),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         IconButton(
                
      //           onPressed: () {
      //              Navigator.push(context,MaterialPageRoute(builder: (_) => HomeScreen()),);
      //           },
      //           icon: const Icon(
                  
      //             Icons.home,
                  
      //           ),
      //         ),
      //         IconButton(
      //           onPressed: () {
      //             Navigator.push(context,MaterialPageRoute(builder: (_) => SearchScreen()),);
      //           },
      //           icon: const Icon(
      //             Icons.search,
      //           ),
      //         ), 
      
      //         IconButton(
      //           onPressed: () {
      //              Navigator.push(context,MaterialPageRoute(builder: (_) => AllProductScreen1()),);
      //           },
      //           icon: const Icon(
      //             Icons.store,
      //           ),
      //         ),
      //         IconButton(
      //           onPressed: () {
      //             Navigator.push(context,MaterialPageRoute(builder: (_) => ProfileScreen()),);
      //           },
      //           icon: const Icon(
      //             CupertinoIcons.person_crop_circle,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      //   duration: const Duration(
      //     milliseconds: 800,
      //   ),
      //   curve: Curves.easeInOutSine,
      //   height: showBtmAppBr ? 70 : 0,
      // ),
    );
   
  }
}
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: Color.fromARGB(21, 255, 198, 41),
        width: 250,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );
  Widget buildHeader(BuildContext context) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              spreadRadius: 0,
             // blurRadius: 2,
              color: Colors.transparent,
              offset: Offset(0, 2),
            ),
          ],
        ),
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/me.jpeg'),
              ),
           // Logo(Logos.flutter),
            SizedBox(height: 22),
            Text(
              'Nilout stls',
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
            Text(
              'version 1.0.0',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ],
        ),
      );

  Widget buildMenuItems(BuildContext context) => Wrap(
        runSpacing: 20,
        children: [
          ListTile(
            tileColor: Color(0xFF725E75),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            leading: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: const Text(
              'ໂປຣໄຟລ໌',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              
                  Navigator.push(context,MaterialPageRoute(builder: (_) => ProfileScreen()),);
                
             // Navigator.push(
                  // context,
                  // MaterialPageRoute(
                  //     builder: (BuildContext context) => FirstScreen()));
            },
          ),
          ListTile(
            tileColor: Color(0xFF725E75),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            leading: const Icon(Icons.settings, color: Colors.white),
            title: const Text(
              'ການຕັ້ງຄ່າ',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (BuildContext context) => SelectLanguage()));
            },
          ),
          ListTile(
            
            tileColor: Color(0xFF725E75),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            leading: const Icon(Icons.star, color: Colors.white),
            title: const Text(
              'ໃຫ້ຄະແນນ',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (BuildContext context) => DetailScreen()));
            },
          ),
          ListTile(
            tileColor: Color(0xFF725E75),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            leading: const Icon(Icons.privacy_tip, color: Colors.white),
            title: const Text(
              'ນະໂຍບາຍສ່ວນຕົວ',
              style: TextStyle(color: Colors.white),
            ),
          ),
        
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 170),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.white,
                primary: Colors.white,
                padding: EdgeInsets.only(top: 10, bottom: 10, right: 25, left: 15),
              ),
              onPressed: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                } else {
                  exit(0);
                }
              },
              child: Row(
                children: [
                  Icon(Icons.logout,color: Colors.red,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('ອອກຈາກລະບົບ',style: TextStyle(fontSize: 18,color: Color(0xff2D453D),fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
          )
        ],
      );
}