import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sumang/Login/login_screen.dart';
import 'package:sumang/home_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 20),
            child: Column(
              children: [
               
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){}, child: Text("Forgot Password?")),
                  ],
                ),
                SizedBox(height: 10,),

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
                    child: Center(child: Text("Login With Email",style: GoogleFonts.notoSansLao(fontSize:18,fontWeight: FontWeight.bold,color: Colors.white),))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 200),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: GestureDetector(
                          onTap: () {
                           if (_formKey.currentState!.validate()) {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                          }
                          },
                          child: Container(
                        width: 356,
                        height: 43,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 2.0,
                              ),
                            ],
                          color: Color(0xff1877F2),
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Row(
                          children: [
                                          SizedBox(width: 10,),
                          CircleAvatar(
                            radius:15,
                            backgroundImage: AssetImage('assets/images/image 47.png'),),
                            SizedBox(width: 10,),
                          Text("Login With FaceBook",style: GoogleFonts.notoSansLao(fontSize:18,fontWeight: FontWeight.bold,color: Colors.white),),
                          ],
                        )),
                        ),
                      ),
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
                        color: Colors.white,
                         boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 2.0,
                              ),
                            ],
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: Row(
                        
                        children: [
                            SizedBox(width: 10,),
                          CircleAvatar(
                            radius:15,
                            backgroundImage: AssetImage('assets/images/image 48.png'),),
                            SizedBox(width: 10,),
                          Text("Login With Email",style: GoogleFonts.notoSansLao(fontSize:18,fontWeight: FontWeight.bold,color: Colors.grey),),
                        ],
                      )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have account yet?"),
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                      }, child: Text("Sign up."))
                    ],
                  )
                    ],
                  ),
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