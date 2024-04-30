import 'package:flutter/cupertino.dart';
import 'package:rescue_time/constants/nav.dart';
import 'package:rescue_time/screens/emergency_check_screen.dart';
import 'package:rescue_time/screens/select_emergency_screen.dart';

class ShowDialogWidget extends StatelessWidget {
  const ShowDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title:
       const Text("Emergency Aid" ,style: TextStyle(fontSize: 17.5),),
      message: const Text("Do you already know what the patient is suffering from?",style: TextStyle(fontSize: 15)),
      actions: [
        CupertinoActionSheetAction(
          onPressed: () {
            context.pushNav(screen: const SelectEmergencyScreen());
          },
          child: 
          const Text("Yes")
          
          ,
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            context.pushNav(screen: const EmergencyCheckScreen());
          },
          child: const Text("No"),
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Cancel")),
    );
  }
}
