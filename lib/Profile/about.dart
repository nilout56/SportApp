import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ກ່ຽວກັບພວກເຮົາ",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
              //    ShaderMask(
              //   shaderCallback: (rectangle){
              //     return LinearGradient(
              //       colors: [
              //         Colors.teal,Colors.transparent
              //       ],
              //       begin: Alignment.bottomCenter,
              //       end: Alignment.topCenter,
              //     ).createShader(Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
              //   },
              //   blendMode: BlendMode.dstIn,
              //   child: Image.asset('assets/images/teacher.jpeg'),
              // ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/teacher.jpeg'),
                    radius: 50,
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ປ.ອ ສະຫວາດ ໄຊປະດິດ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("ອາຈານທີ່ປຶກສາ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("ສະມາຊິກໃນກຸ່ມ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
         Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/xaisana.jpeg'),
                    radius: 50,
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ທ້າວ ໄຊຊະນະ ແກ້ວດວງດີ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("ນັກສຶກສາ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    Text("ພາກວິຊາວິສະວະກຳຄອມພິວເຕີແລະ\nເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
         Row(
              children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                      Text("ທ້າວ ໄຊຢົງ ທອງລີ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("ນັກສຶກສາ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                      Text("ພາກວິຊາວິສະວະກຳຄອມພິວເຕີແລະ\nເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                   ],
                                 ),
                   ),
                SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/xaiyong.jpeg'),
                    radius: 50,
                  ),
                ),
             
              ],
            ),
                SizedBox(width: 20,),
               Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/phim.jpeg'),
                    radius: 50,
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ທ້າວ ພິມພອນ ບຸນກວ້າງ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("ນັກສຶກສາ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    Text("ພາກວິຊາວິສະວະກຳຄອມພິວເຕີແລະ\nເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
                 Row(
              children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                      Text("ທ້າວ ສຸດຖະໜອມ ໂລ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("ນັກສຶກສາ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                      Text("ພາກວິຊາວິສະວະກຳຄອມພິວເຕີແລະ\nເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                   ],
                                 ),
                   ),
                SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/lo.jpeg'),
                    radius: 50,
                  ),
                ),
             
              ],
            ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ຈຸດປະສົງຂອງແອັບ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                SizedBox(height: 20,),
                Text("ແອັບນີ້ຈະເປັນການຮວບຮວມເອົາແບຣນສິນຄ້າເຄື່ອງສຳອາງທີ່ມີປະສິດທິພາບແລະເປັນແບຣນຂອງແທ້ເພຶ່ອສ້າງຄວາມສະດວກສະບາຍໃຫ້ກັບກຸ່ມລູກຄ້າຂອງຮ້ານແລະຄວາມທັນສະໄໝຂອງຮ້ານຖືວ່າເປັນອີກທາງເລືອກໜຶ່ງທີ່ອຳນວຍຄວາມສະດວກໃຫ້ແກ່ທຸກຄົນທີ່ມັກຮັກໃນຄວາມສວຍຄວາມງາມເຮັດໃຫ້ເຂົ້າເຖິງສິນຄ້າໄດ້ງ່າຍຂື້ນເພາະແອບນີ້ຈະຊ່ວຍໃຫ້ກຸ່ມລູກຄ້າສາມາດເລືອກຊື້ເຄື່ອງສຳອາງໄດ້ຢ່າງສະດວກສະບາຍປະຢັດເວລາແລະໄດ້ຮັບສິນຄ້າທີ່ມີຄຸນນະພາບແລະທີ່ສຳຄັນໃນແອບກໍຈະມີໂປຣໂມຊັ່ນຕ່າງໆເສີມເຂົ້າມາອີກ.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
              ],
            ),
          )
          ]
        ),
      ),
    );
  }
}