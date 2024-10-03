import 'package:flutter/material.dart';
import 'package:go_to_moon/widgets/custom_dropdown_button.dart';

class Homepage extends StatelessWidget{

 late  double _deviceHeight,_deviceWidth;

   Homepage({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    
    _deviceHeight=MediaQuery.of(context).size.height;
    _deviceWidth=MediaQuery.of(context).size.width;
   return Scaffold(
     body:SafeArea(
         child:Container(
           height:_deviceHeight ,
       width: _deviceWidth,
       padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05,),
       child:Column(
         mainAxisAlignment:MainAxisAlignment.spaceBetween,
         mainAxisSize: MainAxisSize.max,
         crossAxisAlignment:CrossAxisAlignment.start ,
         children: [
           _PageTitle(),
           _destinationDropDownWidget()

         ],
       )
      )
     )
   );
  }

  Widget _PageTitle()
  {
    return const Text("    GO MOON",
      style:TextStyle(
          color: Colors.blueGrey,
          fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
      );
  }

  Widget _astroImageWidget()
  {
    return Container(
      decoration: BoxDecoration(
          image:DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage("assets/images/go_moon.jpg"),
          )
      ),
    );
  }

Widget _destinationDropDownWidget()
{
return customDropDownButton(values:const[
  'james web station',
  'preneure station',
], width: _deviceWidth,);
}
}



