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
                child: Stack(
                  children: [
                    _astroImageWidget(), // Image fills the whole screen
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _pageTitleWidget(),
                        _bookRideWidget(),
                      ],
                    ),
                  ],
                ))));
  }

  Widget _pageTitleWidget() {
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
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/go_moon.jpg"),
        ),
      ),
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellerInformationWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    return customDropDownButton(
      values: const [
        'James Webb Station',
        'Preneure Station',
      ],
      width: _deviceWidth,
    );
  }

  Widget _travellerInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        customDropDownButton(
          values: const ['1', '2', '3', '4'],
          width: _deviceWidth * 0.45,
        ),
        customDropDownButton(
          values: const ['Economy', 'Business', 'First Class', '2nd Class'],
          width: _deviceWidth * 0.40,
        ),
      ],
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Book Ride",
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
