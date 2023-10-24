

import 'package:flutter/material.dart';
import 'package:AlmolhamCalculator/constants/conastants.dart';



// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  
     CustomButton({super.key, 
  
  @required this.btnColor,
  @required this.btnTxt,
 
    this.flex,
     @required this.callBack,
  });
  
  
  Color? btnColor;
  String? btnTxt;
  int? flex;
  Function? callBack;

  @override
  Widget build(BuildContext context) {
    return Expanded(
       flex:flex==null?1:flex!,
      
       child: GestureDetector(
      onTap: (){
        callBack!(btnTxt);
      } ,
       
        child: Container(
          width: 70,
          height: 80,
          
        // ignore: sort_child_properties_last
        child: Text(
          btnTxt!, style: Conatants.btnTextStyle,),
        margin:const EdgeInsets.all(8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: btnColor,),
      
        ),
      ),
    );
  }
}
