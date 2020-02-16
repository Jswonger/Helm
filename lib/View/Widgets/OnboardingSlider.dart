import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/Model/onboarding_data.dart';
import 'package:senior_design/View/Widgets/OnboardingSwitch.dart';

class OnboardingSlider extends StatefulWidget {
  String text;

  OnboardingSlider({this.text});

  @override
  OnboardingSliderParams createState() => new OnboardingSliderParams(title: text);
}

class OnboardingSliderParams extends State {
  String title;
  double sliderValue = 50.0;

  OnboardingSliderParams({this.title}) {
    OnboardData.addUpdateData(this.title, this.sliderValue);
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Slider(
          min: 0.0,
          max: 100.0,
          onChanged: sliderStatus,
          value: sliderValue,
        )
      ],
    );
  }

  void sliderStatus(double input) {
    setState(() {
      print(sliderValue);
      sliderValue = input;
    });
    OnboardData.addUpdateData(title, sliderValue.round());
  }
}
