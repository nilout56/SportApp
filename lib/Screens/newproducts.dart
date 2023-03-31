import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:sumang/data/imagedata.dart';
import 'package:sumang/data/imagedata_1.dart';
import 'package:sumang/models/dicountmodel.dart';

class NewProducts extends StatelessWidget {
  const NewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,size: 30,color: Colors.blue,)),
        title: Text("ສິນຄ້າໃໝ່ຫຼ້າສຸດ",style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGridView.countBuilder(
          itemCount: imageLists.length,
          crossAxisCount: 2,
          itemBuilder: (context, index) => ImageCard(
            imageData: imageLists[index],
          ),
          staggeredTileBuilder: (index) => StaggeredTile.count(1, index.isEven ? 1.4 : 1.8),
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({required this.imageData});

  final ImageData1 imageData;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image.asset(imageData.imageUrl, fit: BoxFit.cover),
    );
  }
}
