import 'package:flutter/material.dart';
import 'package:rescue_time/screens/emergency_check_screen.dart';

extension NavigatorExten on BuildContext {
  pushNav({required Widget screen}) {
    return Navigator.push(
        this, MaterialPageRoute(builder: (context) => screen));
  }


  popNav({required EmergencyCheckScreen screen}) {
    return Navigator.of(this).pop();
  }

  pushAndRemoveNav({required Widget screen}) {
    return Navigator.pushAndRemoveUntil(this,
        MaterialPageRoute(builder: (context) => screen), (route) => false);
  }
}
