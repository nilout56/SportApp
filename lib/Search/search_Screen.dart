import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ຄົ້ນຫາ"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                keyboardAppearance: Brightness.dark,
                textInputAction: TextInputAction.done,
                autofocus: false,
                decoration: InputDecoration(
                  
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(
                      Icons.search,
                      size: 35,
                    ),
                  ),
                  hintText: 'ຄົ້ນຫາ...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("ໝວດໝູ່",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
            Container(
              width: 339,
              height: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
               boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 10.0,
                          ),
                        ],
              ),
              child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.sanitizer)),
                            Text("Skin Care", style: TextStyle( fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.face_retouching_natural)),
                            Text("Makeup Face",style: TextStyle( fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.face_3)),
                            Text("Cleansing",style: TextStyle( fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.assistant)),
                            Text("Mask",style: TextStyle( fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){
      
                               // Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutScreen()));
                            }, icon: Icon(Icons.auto_awesome)),
                            GestureDetector(
                              onTap: (){
                               // Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutScreen()));
                              },
                              child: Text("Sun Care",style: TextStyle( fontWeight: FontWeight.bold),)),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.face_retouching_natural)),
                            Text("Body&Hair",style: TextStyle( fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.face)),
                            Text("Supplements",style: TextStyle( fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    ),
              
            ),
      
          ],
        ),
      ),
    );
  }
}
