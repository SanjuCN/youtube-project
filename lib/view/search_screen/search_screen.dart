import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     

      body: SafeArea(child: Column(children: [
        Container(height: 60,
        width: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 15,top: 15),
          child: Row(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(width: 5,),IconButton(onPressed: (){}, icon: Icon(Icons.mic,color: Colors.white,))
            ],
          ),
        ),),

       
        
      ],),)
    );
  }
}