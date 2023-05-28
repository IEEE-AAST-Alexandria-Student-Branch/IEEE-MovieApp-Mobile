import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';
import 'package:ieee_movieapp/Constants/fonts.dart';

 List<String> images = <String>['images/Avatar.jpeg', 'images/Good doctor.jpeg', 'images/stranger things.jpg','images/The flash.jpg','images/the witcher 3.jpeg','images/Thor love and thunder.jpg'];
List<String> names = <String>['Avatar', 'Good doctor', 'stranger things','The flash','the witcher 3.','Thor love and thunder'];
 List<int> colorCodes = <int>[600, 500, 100];
class Movies extends StatelessWidget {

  const Movies({Key? key}) : super(key: key);

  @override
  Widget  build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
           title: Text("Notifications",style: TextStyle(color: txtColor,fontFamily: small)),
          elevation: 0,
          backgroundColor: primaryColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: fieldTxtColor,
            iconSize: 30,
            padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
          )
      ),
      body: ListView.builder(
        itemCount: images.length,
    itemBuilder: (BuildContext context, int index) {
          return Column(

             children: [
               SizedBox(
                   height: 20,
               ),
               Row(
            children: [
              SizedBox(
                width: 20,
              ),
               InkWell(
               onTap: () {
                 showModalBottomSheet(context: context,
                   //background color for modal bottom screen
                    backgroundColor: primaryColor,
                   //elevates modal bottom screen
                   elevation: 0,
                   // gives rounded corner to modal bottom screen
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(40.0),
                   ),
                     //did not know what to put inside bottom sheet
                     builder: (BuildContext context) {
                       return SizedBox(
                           height: 200,
                           child: Column(
                           children: const <Widget>[
                             Padding(padding:EdgeInsets.fromLTRB(0, 20, 270, 0) ,
                           child:
                               Text('Send to',style:TextStyle(color:txtColor,fontSize: 20),),)
                       ],
                       ),
                       );

                     },
                 );
               },
               child:Container(

                height: 120.0,
                width: 140.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        images[index]),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
               ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(
                     width:150,
                    child: Text(names[index],style: TextStyle(color: txtColor,fontFamily:medium, fontSize: 20  ),)

                  ),
                  Padding
                    ( padding:EdgeInsets.fromLTRB(0, 40, 0, 0),
                  //could not find right colors
                  child:Container(
                    width: 70,
                    height: 20,
                    color: Colors.redAccent,
                    child: Text("Action",style: TextStyle(color: Colors.black87 ,fontFamily:medium, fontSize: 20  ),
                  ),
                  ),
                  ),
                ],

              )


            ],
          ),
          ],
          );
    }

    )


    );
  }
}
