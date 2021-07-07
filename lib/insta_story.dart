import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {

  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Stories',style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: [
         Icon(Icons.play_arrow),
          Text('Watch All',style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ],
  );

  final stories = Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:15,
        itemBuilder: (context,index)=> Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://s3-eu-west-1.amazonaws.com/static.jbcgroup.com/amd/pictures/29953ed3b015591ead4fc68b3c5ca0d6.JPG'),
                ),
              ),
              margin: const  EdgeInsets.symmetric(horizontal: 8.0),
            ),

            index == 0 ?Positioned(right: 10.0,
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 10.0,
                child: Icon(Icons.add,size: 14.0,color: Colors.white,),
              ),
            ) : Container(),
          ],
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          topText,
          stories,
        ],
      ),
    );
  }
}
