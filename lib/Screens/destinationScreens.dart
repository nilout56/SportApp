import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sumang/Screens/details_product.dart';
import 'package:sumang/Screens/newproducts.dart';
import 'package:sumang/models/destination.dart';

import 'package:sumang/models/dicountmodel.dart';
import 'package:sumang/models/productmodel.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
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
                "ສິນຄ້າໃໝ່ຫຼ້າສຸດ",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewProducts()));
              }, child: Text('ເບິ່ງທັງໝົດ'))
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
            //width: 300,
            height: 207,
            //height: 320,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productsLists.length,
              itemBuilder: (BuildContext context, int index) {
                ProductsList productsList = productsLists[index];
                return Container(
                  margin: EdgeInsets.all(2.0),
                  width: 360.0,
                  height: 200,
                  child: Stack(
                    // alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        // bottom: 15.0,
                        child: Container(
                          //height: 300,
                          width: 300.0,
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
                        child: Row(children: [
                          GestureDetector(
                            onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DetailProducts(productList1: productsList,))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                height: 200.0,
                                width: 200.0,
                                image: AssetImage(productsList.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 20)),
                              Text(productsList.type,style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(productsList.description,style: TextStyle(fontSize: 20,color: Color(0xffF5C003)),),
                            ],
                          ),
                        ]),
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
