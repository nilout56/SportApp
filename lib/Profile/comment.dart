import 'package:flutter/material.dart';

class CommentsDrag extends StatefulWidget {
  @override
  _CommentsDragState createState() => _CommentsDragState();
}

class _CommentsDragState extends State<CommentsDrag> {
  double _bottomSheetPosition = 0;
  bool _isDragging = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,size: 30,color: Colors.blue,)),
        actions: [
          IconButton(onPressed: (){
      showModalBottomSheet(
          isScrollControlled: true,
         // isDismissible: true,
         //enableDrag: true,
         useSafeArea: true,
          backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => DraggableScrollableSheet(
          initialChildSize: 1,
          minChildSize: 0.25,
          maxChildSize: 1.0,
          builder: (context, controller) {
            return Container(
              decoration: BoxDecoration(
               color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        icon: Icon(Icons.close,size: 30,),
                        
                        onPressed: () => Navigator.pop(context),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Comments',),
                  ),
                  Expanded(
                    child: ListView.builder(
                      controller: controller,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ListTile(title: Text('Comment $index'));
                      },
                    ),
                  ),
                 
                ],
              ),
            );
          },
        ),
         );
          },  icon: Icon(Icons.comment))
        ],
      ),
      body: Stack(
        children: [
  
        ],
      ),
    );
  }
}