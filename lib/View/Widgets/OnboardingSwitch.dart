import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/Model/onboarding_data.dart';

class OnboardingSwitch extends StatefulWidget {
  String text;

  OnboardingSwitch({this.text});

  @override
  OnboardingSwitchClass createState() => new OnboardingSwitchClass(title: text);
}

class OnboardingSwitchClass extends State {
  bool switchControl = false;
  String title;

  //OnboardingSwitchClass(title) : this.title = title;

  OnboardingSwitchClass({this.title}) {
    OnboardData.addUpdateData(this.title, this.switchControl);
    }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        CheckboxListTile(
          onChanged: switchStatus,
          value: switchControl,
          activeColor: Colors.blue,
          checkColor: Colors.purple,
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(title),
        )
      ],
    );
  }

  void switchStatus(bool status) {
    if (status == false) {
      setState(() {
        switchControl = status;
      });
    } else {
      setState(() {
        switchControl = status;
      });
    }

    OnboardData.addUpdateData(title, switchControl);
  }
}
