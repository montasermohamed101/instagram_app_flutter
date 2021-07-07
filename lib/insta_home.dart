import 'package:flutter/material.dart';
import 'package:insta_app/insta_body.dart';

class InstaHome extends StatelessWidget {

  final topBar = AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.camera_alt),
    title: SizedBox(
      height: 35.0,child: Image.asset("assets/images/insta_logo.png"),),
    actions: [
      Padding(padding: const EdgeInsets.only(right: 12.0),
      child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: InstaBody(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){}, icon:Icon(Icons.home)),
              IconButton(onPressed: (){}, icon:Icon(Icons.search)),
              IconButton(onPressed: (){}, icon:Icon(Icons.add_box)),
              IconButton(onPressed: (){}, icon:Icon(Icons.favorite,color: Colors.blue,)),
              IconButton(onPressed: (){}, icon:Icon(Icons.account_box)),
            ],
          ),
        ),
      ),
    );
  }
}
