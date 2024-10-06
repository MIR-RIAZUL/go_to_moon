import 'package:flutter/material.dart';
import 'package:go_to_moon/widgets/custom_dropdown_button.dart';

class Homepage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: Container(
                height: _deviceHeight,
                width: _deviceWidth,
                padding: EdgeInsets.symmetric(
                  horizontal: _deviceWidth * 0.05,
                ),
                child:Stack(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [_PageTitle(),
                      _bookRideWidget()],
                    ),
                 Align(
                   alignment: Alignment.centerRight,
                   child:  _astroImageWidget(),)
                  ],
                )
            )
        )
    );
  }

  Widget _PageTitle() {
    return const Text(
      "    GO MOON",
      style: TextStyle(
        color: Colors.blueGrey,
        fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight *0.50,
      width: _deviceWidth *0.65,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fitHeight,
        image: AssetImage("assets/images/go_moon.jpg"),
      )),
    );
  }
  Widget _bookRideWidget()
  {
return Container(height: _deviceHeight *0.25,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      _destinationDropDownWidget(),
      _travellerInformationWidget(),
      _ridebatton(),
    ],
  ),
);
  }

  Widget _destinationDropDownWidget(){
    return customDropDownButton(values:const[
      'james web station',
      'preneure station',
    ], width: _deviceWidth,);
  }
  Widget _travellerInformationWidget()
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        customDropDownButton(
          values: const [
            '1',
            '2',
            '3',
            '4'
          ],
          width: _deviceWidth *0.45,
        ),

        customDropDownButton(
          values: const [
            'economy',
            'business',
            'first class',
            '2nd class'
          ],
          width: _deviceWidth *0.40,
        ),
      ],
    );
  }

  Widget _ridebatton()
  {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight *0.01),

      width: _deviceWidth,
     decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(10) ),
      child:MaterialButton(onPressed: () {},child: Text("book ride",style: TextStyle(color: Colors.blue),),),
    );
  }
}
