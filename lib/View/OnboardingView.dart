import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design/View/Helm.dart';
import 'package:senior_design/View/Widgets/JournalButton.dart';
import 'package:senior_design/View/Widgets/OnboardingSlider.dart';
import 'package:senior_design/View/Widgets/OnboardingSwitch.dart';

class OnboardingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.lightGreen,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 0, 0, 0),
              child: Text(
                  "In which of these categories are you most excited to build strength?"),
            ),
            OnboardingSwitch(text: "Depression",),
            OnboardingSwitch(text: "General Anxiety"),
            OnboardingSwitch(text: "Social Anxiety"),
            OnboardingSwitch(text: "Fitness"),
            OnboardingSwitch(text: "Nutrition"),
            OnboardingSwitch(text: "Productivity"),
            OnboardingSwitch(text: "Energy"),
            OnboardingSwitch(text: "Organization"),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 0, 0, 0),
              child: Text(
                  "Think about the last week. Rate on a scale of 1-100* how you feel strong in these categories: "),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 16.0, 0, 0),
              child: Text("General Mood"),
            ),
            OnboardingSlider(text: "General Mood"),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 16.0, 0, 0),
              child: Text("Peace and Calm"),
            ),
            OnboardingSlider(text: "Peace and Calm"),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 16.0, 0, 0),
              child: Text("Exercise"),
            ),
            OnboardingSlider(text: "Exercise"),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 16.0, 0, 0),
              child: Text("Eating Well"),
            ),
            OnboardingSlider(text: "Eating Well"),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 16.0, 0, 0),
              child: Text("Productivity"),
            ),
            OnboardingSlider(text: "Productivity"),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 16.0, 0, 0),
              child: Text("Overall Energy"),
            ),
            OnboardingSlider(text: "Overall Energy"),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 16.0, 0, 0),
              child: Text("Staying Organized"),
            ),
            OnboardingSlider(text: "Staying Organized"),
            JournalButton(journalEntry: "Continue", screen: Helm())
          ],
        ));
  }
}
