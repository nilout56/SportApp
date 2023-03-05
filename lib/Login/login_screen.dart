import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sumang/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  String _email = "";
  bool passwordVisible = false;

  @override
  void initState() {
    // passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("ລົງທະບຽນ",style: GoogleFonts.notoSansLao(fontSize:20,fontWeight: FontWeight.bold,),)),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 20),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                  
                    borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                     style: GoogleFonts.notoSansLao(fontWeight: FontWeight.bold),
                    controller: nameController,
                    decoration:  InputDecoration(
                      
                      border: OutlineInputBorder(
                        
                    borderRadius:BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),topLeft: Radius.circular(20),topRight: Radius.circular(20))

                      ),
                       labelStyle: GoogleFonts.notoSansLao(fontWeight: FontWeight.bold),
                  hintStyle: GoogleFonts.notoSansLao(fontWeight: FontWeight.bold),
                      labelText: "ຊື່",
                      hintText: "ກະລຸນາປ້ອນຊື່ຂອງທ່ານ",
                      prefixIcon: Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "ກະລຸນາປ້ອນຊື່ຂອງທ່ານ";
                      } else if (value.length < 5) {
                        return "ຊື່ຂອງທ່ານບໍ່ຖືກຕ້ອງ";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  style: GoogleFonts.notoSansLao(fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),topLeft: Radius.circular(20),topRight: Radius.circular(20))
                      
                    ),
                     labelStyle: GoogleFonts.notoSansLao(fontWeight: FontWeight.bold),
                    hintStyle: GoogleFonts.notoSansLao(fontWeight: FontWeight.bold),
                    labelText: "ອີເມວ",
                    hintText: "ກະລຸນາປ້ອນອີເມວຂອງທ່ານ",
                    
                    prefixIcon: Icon(Icons.email),
                  ),
                  initialValue: _email,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "ກະລຸນາປ້ອນອີເມວຂອງທ່ານ";
                    } else if (!value.contains("@")) {
                      return "ອີເມວຂອງທ່ານບໍ່ຖືກຕ້ອງ";
                    } else if (!value.contains(".")) {
                      return "ອີເມວຂອງທ່ານບໍ່ຖືກຕ້ອງ";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  style: GoogleFonts.notoSansLao(fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    labelStyle: GoogleFonts.notoSansLao(fontWeight: FontWeight.bold),
                    hintStyle: GoogleFonts.notoSansLao(fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),topLeft: Radius.circular(20),topRight: Radius.circular(20))
                    ),
                    labelText: "ເບີໂທ",
                    hintText: "ກະລຸນາປ້ອນເບີໂທຂອງທ່ານ",
                    prefixIcon: Icon(Icons.phone),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "ກະລຸນາປ້ອນເບີໂທຂອງທ່ານ";
                    } else if (value.length < 8) {
                      return "ເບີໂທຂອງທ່ານບໍ່ຖືກຕ້ອງ";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  style: GoogleFonts.notoSansLao(fontWeight: FontWeight.bold),
                  // create decoration with password visible icon on suffix
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),topLeft: Radius.circular(20),topRight: Radius.circular(20))

                    ),
                     labelStyle: GoogleFonts.notoSansLao(fontWeight: FontWeight.bold),
                    hintStyle: GoogleFonts.notoSansLao(fontWeight: FontWeight.bold),
                    labelText: "ລະຫັດຜ່ານ",
                    hintText: "ກະລຸນາປ້ອນລະຫັດຜ່ານຂອງທ່ານ",
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                    ),
                  ),
                  obscureText: !passwordVisible,
                  // obscuringCharacter: "*",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "ກະລຸນາປ້ອນລະຫັດຜ່ານຂອງທ່ານ";
                    } else if (value.length < 8) {
                      return "ລະຫັດຜ່ານຂອງທ່ານຢ່າງນ້ອຍຕ້ອງ 8 ຕົວອັກສອນ";
                    } else if (!value.contains(RegExp(r'[A-Z]'))) {
                      return "ລະຫັດຜ່ານຂອງທ່ານຕ້ອງມີຕົວອັກສອນທີ່ເປັນຕົວອັກສອນໃຫຍ່ກ່ວາຫນຶ່ງ";
                    } else if (!value.contains(RegExp(r'[0-9]'))) {
                      return "ລະຫັດຜ່ານຂອງທ່ານຕ້ອງມີຕົວອັກສອນທີ່ເປັນຕົວເລກ";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),

                GestureDetector(
                  onTap: () {
                       if (_formKey.currentState!.validate()) {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                  }
                  },
                  child: Container(
                    width: 356,
                    height: 43,
                    decoration: BoxDecoration(
                      color: Color(0xffF5C003),
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Center(child: Text("ເຂົ້າສູ່ລະບົບ",style: GoogleFonts.notoSansLao(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),))),
                ),
                // create text widget to show name and email from textfield
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
