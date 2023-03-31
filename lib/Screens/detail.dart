import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sumang/Checkout/cart.dart';
import 'package:sumang/Checkout/checkout_screen.dart';
import 'package:sumang/models/destination.dart';
import 'package:sumang/models/dicountmodel.dart';

class DetailScreen extends StatefulWidget {
  final DisCountModel disCountModel;
 // final Destination destination;
  const DetailScreen({
    super.key,
    required this.disCountModel,
    
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<Map>sizeshirts=[
    {
      "name": "Size S",
      "name": "Size M",
      "name": "Size L",
      "name": "Size XL",
      "name": "Size 2XL",
    }
  ];
  bool? isChecked = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;
  bool? isChecked4 = false;
  bool? isChecked5 = false;
  bool? isChecked6 = false;
  bool? isChecked7 = false;
  bool? isChangecolor = false;
   bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
             leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,size: 30,color: Colors.blue,)),
          title: Center(child: Text('ລາຍລະອຽດ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          // leading: GestureDetector(
          //   onTap: () {
          //     Navigator.pop(context);
          //     //Navigator.push(context,MaterialPageRoute(builder: (_) => HomeScreen()),);
          //   },
          //   child: Icon(
          //     Icons.arrow_back_ios,
          //   ),
          // ),
          actions: [
            IconButton(
              onPressed:_toggleFavorite, icon: (_isFavorited?Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite_border_sharp,)),

            ),
            
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
            Container(
                child: Stack(
              children: [
                Image.asset(widget.disCountModel.imageUrl),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(widget.disCountModel.type,style: TextStyle(fontSize:18 ,fontWeight: FontWeight.bold),),
                 // SizedBox(width: 40,),
                ],
              ),
            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text("ລາຄາ:",style: TextStyle(fontSize:18 ,fontWeight: FontWeight.bold,color: Colors.black)),
                    SizedBox(width: 10,),
                    Text("${widget.disCountModel.description}",style: TextStyle(fontSize:18 ,fontWeight: FontWeight.bold,color: Colors.black)),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Text("ຂະໜາດ:",style: TextStyle(fontSize:18 ,fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                     SizedBox(width: 10,),
                     Text("Size S",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.bold),),
                            Checkbox(
                              
                              value: isChecked, onChanged: (bool? newValue){
                              setState(() {
                                isChecked = newValue;
                              });
                              
                            },
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                     SizedBox(width: 10,),
                     Text("Size M",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.bold),),
                            Checkbox(
                              
                              value: isChecked2, onChanged: (bool? newValue){
                              setState(() {
                                isChecked2 = newValue;
                              });
                              
                            },
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                     SizedBox(width: 10,),
                     Text("Size L",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.bold),),
                            Checkbox(
                              
                              value: isChecked3, onChanged: (bool? newValue){
                              setState(() {
                                isChecked3 = newValue;
                              });
                              
                            },
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            ),
                          ],
                        ),
                    
               
                      ],
                    ),



                    SizedBox(width: 40,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 25,),
                              Row(
                              children: [
                         Text("Size XL",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                                Checkbox(
                                  
                                  value: isChecked4, onChanged: (bool? newValue){
                                  setState(() {
                                    isChecked4 = newValue;
                                  });
                                  
                                },
                                activeColor: Colors.green,
                                checkColor: Colors.white,
                                ),
                              ],
                            ),
                              Row(
                              children: [
                         Text("Size 2XL",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.bold),),
                                Checkbox(
                                  
                                  value: isChecked5, onChanged: (bool? newValue){
                                  setState(() {
                                    isChecked5 = newValue;
                                  });
                                  
                                },
                                activeColor: Colors.green,
                                checkColor: Colors.white,
                                ),
                              ],
                            ),
                              Row(
                              children: [
                         Text("Size L",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                                Checkbox(
                                  
                                  value: isChecked6, onChanged: (bool? newValue){
                                  setState(() {
                                    isChecked6 = newValue;
                                  });
                                  
                                },
                                activeColor: Colors.green,
                                checkColor: Colors.white,
                                ),
                              ],
                            ),
                      ],
                      ),
                    )
                  ],
                    
                ),
              ),
              SizedBox(height: 20,),
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ລາຍລະອຽດ",style: TextStyle(fontSize:18 ,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(widget.disCountModel.details),
            ),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.push(context, MaterialPageRoute(builder: (_)=>Cart()));
            //   },
            //   child: Container(
            //     width: 370,
            //     height: 48,
            //     decoration: BoxDecoration(
            //       color: Color(0xffF5C003),
            //       borderRadius: BorderRadius.circular(12)
            //     ),
            //     child: Center(child: Text("ເພີ່ມສິນຄ້ານີ້້ໃສ່ກະຕ່າ ", style: TextStyle(
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //         color: Color(0xff284F5B)),)),
            //   ),
            // )
          ]),
        ),
          bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CheckList()),
              );
            },
            child: Text(
              'ເພີ່ມສິນຄ້າລົງໃນກະຕ່າ',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            style: TextButton.styleFrom(
              shadowColor: Colors.black,
              backgroundColor: Colors.grey,
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ),
      ),
        );
  }
void _toggleFavorite() {
  setState(() {
    if (_isFavorited) {

      _isFavorited = false;
    } else {
  
      _isFavorited = true;
    }
  });
}
}