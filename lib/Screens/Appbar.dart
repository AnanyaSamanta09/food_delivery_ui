import 'package:flutter/material.dart';
import 'package:food_delivery_ui/Screens/device_size.dart';

class CustomAppbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(   //it is used for inside black bar

      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)
        ),
      ),
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('TheKitchen~',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                padding: EdgeInsets.all(6),
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(8)
                ),
                width: 65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.shopping_cart),
                    Text('2',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                          fontSize: 23
                        ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: displayHeight(context)*0.065,
            width: displayWidth(context)*0.97,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(18)
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 30,
                ),
                Text('Search for something tasty...',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20
                  ),
                )
              ],
            ),
          ),
        ],
      ),

    );
  }
}
