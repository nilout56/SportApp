import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sumang/Screens/allproducts.dart';
import 'package:sumang/Screens/detail.dart';
import 'package:sumang/models/destination.dart';

import 'package:sumang/models/dicountmodel.dart';

class DisCount extends StatefulWidget {
  const DisCount({super.key});

  @override
  State<DisCount> createState() => _DisCountState();
}

class _DisCountState extends State<DisCount> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "ສິນຄ້າທີ່ນິຍົມ",
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0),
              ),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AllProGrid()));
              }, child: Text('ເບິ່ງທັງໝົດ'))
            ],
          ),
        ),
              SizedBox(height: 10.0,),
        Container(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: disCountModels.length,
              itemBuilder: (BuildContext context, int index) {
                DisCountModel disCountModel = disCountModels[index];
                return  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 150.0,
                    child: Stack(
                     // alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                         // bottom: 15.0,
                          child: Container(
                            height: 300,
                            width: 200.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                        
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                            GestureDetector(
                              onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DetailScreen(disCountModel: disCountModel,))),
                              child: Hero(
                                tag: disCountModel.imageUrl,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    height: 113.0,
                                    width: 154.0,
                                    image: AssetImage(disCountModel.imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(disCountModel.type,style: TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),),
                             Text(disCountModel.description,style: TextStyle(color: Color(0xffF5C003,),fontSize:18 ),),
                               ],
                             ),
                       
                          ]
                          ),
                        )
                      ],
                    ),
                  );
                
              },
            ))
      ],
    );
  }
}