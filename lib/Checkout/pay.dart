import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sumang/Checkout/onepay.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  // late int _selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ຂັ້ນຕອນການຊຳລະເງິນ")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ທ່ານຕ້ອງການຊຳລະເງິນຜ່ານ',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: 370,
                height: 54,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 10.0,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/onepay.png'),
                      //  SizedBox(width: 10,),
                      Text("BCEL One (One-Pay)"),
                      Radio(
                          value: 1,
                          groupValue: 1,
                          onChanged: ((value) {
                            setState(() {});
                          }))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: 370,
                height: 54,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 10.0,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/money.png'),
                      //  SizedBox(width: 10,),
                      Text("Cash (ຈ່າຍເງິນສົດປາຍທາງ)"),
                      Radio(
                          value: 1,
                          groupValue: 0,
                          onChanged: ((value) {
                            setState(() {});
                          }))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "ລາຍການສິນຄ້າຂອງຂ້ອຍ",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
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
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffF5C003)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 50,
                        ),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add,
                                  size: 15,
                                )),
                            Text('1'),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.remove,
                                  size: 15,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.close_outlined,
                                    size: 30,
                                  )),
                            )
                          ],
                        ),
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
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffF5C003)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 50,
                        ),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add,
                                  size: 15,
                                )),
                            Text('1'),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.remove,
                                  size: 15,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.close_outlined,
                                    size: 30,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              height: 2,
              thickness: 1,
              endIndent: 2,
              indent: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("ລວມ",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  Text("205,700 LAK",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ],
              ),
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
                MaterialPageRoute(builder: (_) => OnePay()),
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
