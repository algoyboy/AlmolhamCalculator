import 'package:flutter/material.dart' ;
import 'package:AlmolhamCalculator/screens/frist_screen.dart';




void main(){
runApp(const HomeScreen());

}
class HomeScreen extends StatelessWidget { 
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return   const MaterialApp(


    home:FristScreen(),
      
      
       );
  
      
    
}}

