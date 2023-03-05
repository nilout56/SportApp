import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sumang/Profile/about.dart';
import 'package:sumang/home_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
    bool showBtmAppBr = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: [],
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: Text(
                "ໂປຣໄຟລ໌",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
        body: Stack(
          children: [
            // ShaderMask(
            //   shaderCallback: (rectangle){
            //     return LinearGradient(
            //       colors: [
            //         Colors.black,Colors.transparent
            //       ],
            //       begin: Alignment.topCenter,
            //       end: Alignment.bottomCenter,
            //     ).createShader(Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
            //   },
            //   blendMode: BlendMode.dstIn,
            //   child: Image.asset('assets/images/xaisana.jpeg'),
            // ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 150),
                child: Column(
                  children: [
                    Container(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/teacher.jpeg',
                          ),
                          radius: 50,
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 60, horizontal: 60),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add_a_photo))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Dr. Svath Saypadith",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              
            ],
          ),
          scroll(),
        ]),
        bottomNavigationBar: AnimatedContainer(
        
        child: BottomAppBar(
          notchMargin: 8.0,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                
                onPressed: () {
                   Navigator.push(context,MaterialPageRoute(builder: (_) => HomeScreen()),);
                },
                icon: const Icon(
                  
                  Icons.home,
                  
                ),
              ),
              IconButton(
                onPressed: () {
                 // Navigator.push(context,MaterialPageRoute(builder: (_) => MenuScreen()),);
                },
                icon: const Icon(
                  Icons.search,
                ),
              ), 
      
              IconButton(
                onPressed: () {
                   //Navigator.push(context,MaterialPageRoute(builder: (_) => CheckoutScreen()),);
                },
                icon: const Icon(
                  Icons.store,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (_) => ProfileScreen()),);
                },
                icon: const Icon(
                  CupertinoIcons.person_crop_circle,
                ),
              ),
            ],
          ),
        ),
        duration: const Duration(
          milliseconds: 800,
        ),
        curve: Curves.easeInOutSine,
        height: showBtmAppBr ? 70 : 0,
      ),
        );
  }
  
  scroll() {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 1.0,
      minChildSize: 0.6,
      builder:(context,scrollController){
      return Container(
       
        clipBehavior: Clip.hardEdge,
                 // margin: EdgeInsets.fromLTRB(0, 160, 0, 0),
                  // height: 600,
                  // width: double.infinity,
                  decoration: ShapeDecoration(
                      color: Colors.white,
                      shadows: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0,1.0),
                          blurRadius: 2.0,
                        ),
                      ],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ))),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 5,
                                width: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                color: Colors.black12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                            Text("ແກ້ໄຂໂປຣໄຟລ໌", style: TextStyle( fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.discount)),
                            Text("ລະຫັດສ່ວນຫຼຸດ",style: TextStyle( fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.location_on)),
                            Text("ຕຳແໜ່ງ",style: TextStyle( fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.language)),
                            Text("ພາສາ",style: TextStyle( fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){
                  
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutScreen()));
                            }, icon: Icon(Icons.info)),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutScreen()));
                              },
                              child: Text("ກ່ຽວກັບ",style: TextStyle( fontWeight: FontWeight.bold),)),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.logout)),
                            Text("ອອກຈາກລະບົບ",style: TextStyle( fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
    }
    );
  }
}
