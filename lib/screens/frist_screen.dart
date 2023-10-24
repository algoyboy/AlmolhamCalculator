import 'package:flutter/material.dart';
import 'package:AlmolhamCalculator/constants/conastants.dart';
import 'package:AlmolhamCalculator/widgets/custom_boutton.dart';

class FristScreen extends StatefulWidget {
   const FristScreen({super.key});

  @override
  State<FristScreen> createState() => _FristScreenState();

} 

class _FristScreenState extends State<FristScreen> {

  String exp='';
  String history='';
  double num1=0;
  double num2=0;
  String op ='';

void numClick(String btnTxt){
  if( btnTxt=="Ac"){
   setState(() {
      exp='';
   history='';
   });

   num1=0;
   num2=0;
  }else if(btnTxt=='C'){
    setState(() {
      exp='';
    });
  }
  
else if(btnTxt=='+'||btnTxt=='-'||btnTxt=='/'||btnTxt=='%'||btnTxt=='*'){
op=btnTxt;
num1=double.parse(exp);

setState(() {
  exp='';
history=num1.toString();
history+=btnTxt;
});

}
else if(btnTxt=='.'){
  if(exp.contains('.')){}
  else{
    setState(() {
      exp+=btnTxt;
    });
    
  }
}
else if(btnTxt=='='){
num2=double.parse(exp);
history+=exp;
switch(op){
  case '+':{
    exp=(num1+num2).toString();
  }
  break;
       case '*':{
     exp=(num1*num2).toString();
  }
  break;
   case '-':{
    exp=(num1-num2).toString();
  }
  break;
   case '%':{
    exp=(num1%num2).toString();
  }
  break;
  case '/':{
    num2==0 ?exp='unvalid opertion':exp=(num1/num2).toString();
  }
  break;
  default:break;
  
}
setState(() {
  
});
}
else {
  setState(() {
    exp+=btnTxt;
  });
}
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
         title: const Text("My Calculator"),),
         body: 
         
         Column(
     mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Container(
        margin:Conatants.txtmargin,
        alignment: Conatants.txtAlignment,
        child: Text(
          history,style:Conatants.style1 ,)),
     const Divider(color: Color.fromARGB(255, 0, 0, 0),thickness: 5,),
      Container(margin:Conatants.txtmargin,alignment: Conatants.txtAlignment,child: Text(exp,style: Conatants.style1,)),
      Row(children: [
        CustomButton(btnColor: Colors.red, btnTxt: "Ac",callBack:numClick,),
         CustomButton(btnColor:  Color.fromARGB(255, 182, 76, 50), btnTxt: "C",callBack:numClick,),
          CustomButton(btnColor:  Colors.blue, btnTxt: "%",callBack:numClick,),
           CustomButton(btnColor:  Colors.blue, btnTxt: "/",callBack:numClick,)
      
      ],),

       Row(children: [
        CustomButton(btnColor:Color.fromARGB(255, 202, 149, 16), btnTxt: "7",callBack:numClick,),
         CustomButton(btnColor:  Color.fromARGB(255, 202, 149, 16), btnTxt: "8",callBack:numClick,),
          CustomButton(btnColor: Color.fromARGB(255, 202, 149, 16), btnTxt: "9",callBack:numClick,),
           CustomButton(btnColor:  Colors.blue, btnTxt: "*",callBack:numClick,)
      
      ],),
      Row(children: [
        CustomButton(btnColor: Color.fromARGB(255, 202, 149, 16), btnTxt: "4",callBack:numClick,),
         CustomButton(btnColor: Color.fromARGB(255, 202, 149, 16), btnTxt: "5",callBack:numClick,),
          CustomButton(btnColor: Color.fromARGB(255, 202, 149, 16), btnTxt: "6",callBack:numClick,),
           CustomButton(btnColor:  Colors.blue, btnTxt: "-",callBack:numClick,)
      
      ],),
      Row(children: [
        CustomButton(btnColor: Color.fromARGB(255, 202, 149, 16), btnTxt: "1",callBack:numClick,),
         CustomButton(btnColor: Color.fromARGB(255, 202, 149, 16), btnTxt: "2",callBack:numClick,),
          CustomButton(btnColor: Color.fromARGB(255, 202, 149, 16), btnTxt: "3",callBack:numClick,),
           CustomButton(btnColor:  Colors.blue, btnTxt: "+",callBack:numClick,)
      
      ],),
      Row(children: [
        CustomButton(btnColor: Colors.black54, btnTxt: "0",flex: 2,callBack:numClick,),
         CustomButton(btnColor:  Colors.blue, btnTxt: ".",callBack:numClick,),
          CustomButton(btnColor:  Colors.green, btnTxt: "=",callBack:numClick,flex: 2,),
           
      
      ],)
    ],
    ),) ;
  }
} 