import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/clearButton.dart';

class LoginView extends StatelessWidget {


  clearButton button = new clearButton();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
          children: <Widget>[
            new Container(

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/LoginBackground.png'),
                  fit: BoxFit.cover,

                ),

              ),

            ),
            Center(
              child: Text("Tasks Page"),

            ),
            Align(
                alignment: Alignment(0.5, 0.5), // Changes place of widg
                child: button.build(context), // Created button in different class
            )


          ],
        )

    );
  }
}
