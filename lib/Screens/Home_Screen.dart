import 'package:flutter/material.dart';
import 'package:food_delivery_ui/Screens/Appbar.dart';
import 'package:food_delivery_ui/Screens/Dummy_data/data.dart';
import 'package:food_delivery_ui/Screens/customTile.dart';
import 'package:food_delivery_ui/Screens/device_size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      backgroundColor: Color(0xFFF1E6FF),
        body: SingleChildScrollView(
          child: Column(     // it is for the whole screen
            mainAxisAlignment: MainAxisAlignment.start,
            children: [  //it is for 1st child ,2nd child(top categories), 3rd child(Recommend...)
              Container(   // is is for whole 1ST CHILD
                height: 390,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)
                  ),
                ),
                child: Column(    //is used because there is multiple child,i.e, black one & white one
                  children: [     // ,,
                    CustomAppbar(),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          CustomTile(icon: Icon(Icons.repeat), text: 'Repeat last order'),
                          SizedBox(
                            height: 15,
                          ),
                          Divider(thickness: 4,color: Colors.grey.shade400,),

                          SizedBox(
                            height: 15,
                          ),

                          CustomTile(icon: Icon(Icons.question_mark_rounded), text: 'Help me choose'),

                          SizedBox(
                            height: 15,
                          ),

                          Divider(thickness: 4,color: Colors.grey.shade400,),

                          SizedBox(
                            height: 15,
                          ),

                          CustomTile(icon: Icon(Icons.notifications), text: 'Surprise me')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                height: displayHeight(context)*0.18,
                width: displayWidth(context),
                color: Colors.blue.shade200,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Top Categories',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),
                        ),

                        Row(
                          children: [
                            Text('View all',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.arrow_forward)
                          ],
                        ),

                      ],
                    ),
                   SizedBox(
                     height: 20,
                   ),

                   SizedBox(
                     height: 50,
                     child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: listOfCategory.length,itemBuilder: (context, index) {
                       return Padding(
                         padding: const EdgeInsets.only(right: 6,),
                         child: Card(
                          child: Row(
                            children: [
                              listOfCategory[index].icon!,
                              Text( listOfCategory[index].name!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                         ),
                       );
                     },),
                   )
                  ],
                ),

              )


            ],
          ),
        ),
      ),
    );
  }
}
