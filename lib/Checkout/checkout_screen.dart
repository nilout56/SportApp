import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sumang/Checkout/pay.dart';

class CheckList extends StatefulWidget {
  const CheckList({super.key});

  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ກະຕ່າຂອງຂ້ອຍ")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 390,
              height: 178,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 10.0,
                    ),
                  ]),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/image3.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Daily Moisturizing Lotion',
                        style: TextStyle(fontSize: 16),
                      ),
                   
                      Text('180ML'),
                   
                      Text(
                        '85.000 LAK',
                        style: TextStyle(fontSize: 20, color: Color(0xffF5C003)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 390,
              height: 178,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 10.0,
                    ),
                  ]),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/image2.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Loreal water cleanser',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text('450ML'),
                      Text(
                        '145.000 LAK',
                        style: TextStyle(fontSize: 20, color: Color(0xffF5C003)),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.discount)),
                Text("ລະຫັດສ່ວນຫຼຸດ",style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: Row(
                    children: [
                      Text("ທີ່ຢູ່ສຳລັບການຈັດສົ່ງ",style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 118,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Color(0xffEFEFEF),
                        borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text("ບ້ານ")),
                    ),
                    Container(
                      width: 118,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Color(0xffEFEFEF),
                        borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text("ເມືອງ")),
                    ),
                    
                    Container(
                      width: 118,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Color(0xffEFEFEF),
                        borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text("ແຂວງ")),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 170,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              borderRadius: BorderRadius.circular(10)),
                              child: Center(child: Text("ເບີໂທ")),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 372,
                      height: 66,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: Image.asset('assets/images/map.jpg',fit: BoxFit.cover,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ຄ່າຂົນສົ່ງ"),
                      Text("10,000 LAK"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ອາກອນ"),
                      Text("2,000 LAK"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ສ່ວນຫຼຸດ"),
                      Text("15%"),
                        ],
                      ),
                    ),
                      Divider(
                        color: Colors.black,
                        height: 4,
                        thickness: 2,
                        endIndent: 2,
                        indent: 1,
                      ),
          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("ລວມ", style: TextStyle(fontSize: 20,)),
          Text("205,700 LAK", style: TextStyle(fontSize: 20, )),
            ],
          ),
          ],
        ),
      ),
          bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Pay()),
              );
            },
            child: Text(
              'ຖັດໄປ',
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
