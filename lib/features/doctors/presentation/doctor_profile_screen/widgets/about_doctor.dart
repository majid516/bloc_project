import 'package:bloc_project/core/screen_size/screen_size.dart';
import 'package:bloc_project/core/styles/text_style.dart';
import 'package:flutter/material.dart';

class AboutDoctor extends StatelessWidget {
   AboutDoctor({super.key});
  List<String> aboutList = [
    "Specialization",
    "Education",
    "Experience",
    "Membership",
    "Regestration"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Services by Dr name',style: normalTextProfile1,),
          SizedBox(height: 15,),
          SizedBox(
            height: ScreenSize.height * 0.15,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('-  Fever treatment',style: normalTextProfile2,),
                );
              },
              itemCount: 4,
            ),
          ),
          TextButton(onPressed: (){}, child: Text('see more')),
          Divider(),
          Text('More About Dr Name',style: normalTextProfile2,),
          SizedBox(
            height: ScreenSize.height * 0.4,
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) => ListTile(
                title: Text(aboutList[index],style: normalTextProfile2,),
                trailing: Icon(Icons.arrow_forward_ios,size: 15,),
              ),
              itemCount: 5,
            ),
          )
        ],
      ),
    );
  }
}
