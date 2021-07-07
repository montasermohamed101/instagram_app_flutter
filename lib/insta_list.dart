import 'package:flutter/material.dart';
import 'package:insta_app/insta_story.dart';

class InstaList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 11,
        itemBuilder:(context,index) => index ==0?
        SizedBox(
          child: InstaStories(),
          height: deviceSize.height * 0.2,
        )
            : Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(16.0,16.0,8.0,16.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage('https://s3-eu-west-1.amazonaws.com/static.jbcgroup.com/amd/pictures/29953ed3b015591ead4fc68b3c5ca0d6.JPG'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Hero",style: TextStyle(fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                  IconButton(
                    onPressed: (){}, icon: Icon(Icons.more_vert),),
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Image.network("https://img.freepik.com/free-photo/beautiful-tropical-beach-sea-ocean-with-white-cloud-blue-sky-copyspace_74190-8663.jpg?size=626&ext=jpg",
              fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.favorite,color: Colors.red,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Icon(
                        Icons.comment,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Icon(
                        Icons.send,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),

                    ],
                  ),
                  Icon(
                    Icons.bookmark,color: Colors.grey,),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Liked by Hero, Super and 528,331 others",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16.0,16.0,0.0,8.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          "https://s3-eu-west-1.amazonaws.com/static.jbcgroup.com/amd/pictures/29953ed3b015591ead4fc68b3c5ca0d6.JPG"
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                 Expanded(
                   child: TextField(
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       hintText: "Add a comment ...",
                     ),
                   ),
                 ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "1 Day Ago",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
    );
  }
}
