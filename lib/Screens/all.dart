import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:sumang/Screens/detail.dart';
import 'package:sumang/data/imagedata.dart';
import 'package:sumang/models/dicountmodel.dart';

class AllProductScreen1 extends StatefulWidget {
  const AllProductScreen1({super.key});

  @override
  State<AllProductScreen1> createState() => _AllProductScreen1State();
}

class _AllProductScreen1State extends State<AllProductScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,size: 30,color: Colors.blue,)),
        title: Text("ສິນຄ້າທັງໝົດ",style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Container(
       // height: 200,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             // crossAxisCount: 3,
             crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 3 : 4,
                childAspectRatio: 1 / 1.5,
                //crossAxisSpacing: 5,
                //mainAxisSpacing: 5
                ),
            itemCount: disCountModels.length,
            itemBuilder: (BuildContext, index) {
                 DisCountModel disCountModel = disCountModels[index];
                return  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 160.0,
                    child: Stack(
                     // alignment: Alignment.topCenter,
                      children: [
                        Container(
                          height: 190,
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
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  height: 120.0,
                                  width: 150.0,
                                  image: AssetImage(disCountModel.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
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
            }
            
            ),
      ),
    );
      
    
  }
}
class ImageCard extends StatelessWidget {
  const ImageCard({required this.imageData});

  final ImageData imageData;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image.asset(imageData.imageUrl, fit: BoxFit.cover),
    );
  }
}