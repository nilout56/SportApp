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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite_sharp))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
            Container(
                child: Stack(
              children: [
                Hero(
                    tag: widget.disCountModel.imageUrl,
                    child: Image.asset(widget.disCountModel.imageUrl)),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(widget.disCountModel.type,style: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold),),
                 // SizedBox(width: 40,),
              Text(widget.disCountModel.description,style: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold,color: Color(0xffF5C003))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.disCountModel.title,style: TextStyle(fontSize:14 ,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ລາຍລະອຽດ",style: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(widget.disCountModel.details),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Cart()));
              },
              child: Container(
                width: 370,
                height: 48,
                decoration: BoxDecoration(
                  color: Color(0xffF5C003),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(child: Text("ເພີ່ມສິນຄ້ານີ້້ໃສ່ກະຕ່າ ", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff284F5B)),)),
              ),
            )
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
              'ຊື້ຕອນນີ້',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff284F5B)),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color(0xffF5C003),
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ),
      ),
        );
  }
}
