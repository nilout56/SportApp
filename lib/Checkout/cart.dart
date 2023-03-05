import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
            "ກະຕ່າຂອງຂ້ອຍ",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
            )
          ]),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 200),
            child: Center(
              child: Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      size: 100,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("ທ່ານຍັງບໍ່ທັນໄດ້ເພີ່ມສິນຄ້າເຂົ້າກະຕ່າເທື່ອ"),
                    SizedBox(height: 10,),
                    Container(
                      width: 100,
                      height: 24,
                      decoration:BoxDecoration(
                        color: Color(0xffF5C003),
                        borderRadius: BorderRadius.circular(16)
                        
                      ),
                      child: Center(child: Text("ຄົ້ນຫາສິນຄ້າ")),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
