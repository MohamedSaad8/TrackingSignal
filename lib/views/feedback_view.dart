import 'package:flutter/material.dart';

class FeedbackView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size ;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        child: Padding(
          padding: const EdgeInsets.only(top :18.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(
                  child: Text("Mohamed saad"),

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(

                  child: Container(child: Text("Mohamed saad shata"), color: Colors.red,),
                ),
              ),

            ],
          ),
        ),

      ),
    );
  }
}
