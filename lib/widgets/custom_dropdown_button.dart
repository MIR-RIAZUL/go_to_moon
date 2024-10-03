import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class customDropDownButton extends StatelessWidget{
  List<String>values;
  double width;
  customDropDownButton({required this.values,required this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:width*0.05),
      width:width,

      decoration: BoxDecoration(color:const Color.fromRGBO(55, 55, 55, 1.0),
        borderRadius:BorderRadius.circular(10),
      ),
      child: DropdownButton(
          value: values.first,
          onChanged:(_){},
          items:values.map(
                (e) {
              return DropdownMenuItem(
                child:Text(e),
                value:e,
              );
            },
          ).toList(),
          underline: Container(),
          dropdownColor: const Color.fromRGBO(55, 55, 55, 1.0),
          style: const TextStyle(
            color: Colors.blue,
          )
      ),
    );
  }
}