import 'package:flutter/material.dart';
import 'package:rescue_time/components/app_bar_widget.dart';
import 'package:rescue_time/components/bottom_sheet_widget.dart';
import 'package:rescue_time/components/text_box_widget.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/colors.dart';
import 'package:rescue_time/constants/spaces.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> chronicDiseases = [];
  List<String> addFamilyInfo = [];

  TextEditingController diseaseController = TextEditingController();

  void addChronicDisease(String disease) {
    setState(() {
      chronicDiseases.add(disease);
    });
  }

  void _showFamilyBottomSheet() async {
    Map? result = await showModalBottomSheet<Map>(
      context: context,
      builder: (context) => BottomSheetWidget(),
    );

    if (result != null) {
      setState(() {
        String familyInfo =
            "Name: ${result['name']},\n Age: ${result['age']},\n Height: ${result['height']},\n Weight: ${result['weight']},\n Allergies: ${result['allergies']},\n Diseases: ${result['diseases']}";
        addFamilyInfo.add(familyInfo);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        isBackButton: true,
        icon: Icons.login_outlined,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Center(
            child: Icon(
              Icons.person,
              size: 72,
            ),
          ),
          trVSpace16,
          TextWidget(
            text: "Hi ...",
            size: 20,
            color: Colors.grey[700] ?? Colors.black,
            isBold: true,
            textAlign: TextAlign.center,
          ),
          trVSpace16,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextWidget(
                text: "Weight: 000",
                size: 18,
                color: Colors.grey[700] ?? Colors.black,
                isBold: false,
              ),
              TextWidget(
                text: "Length: 000",
                size: 18,
                color: Colors.grey[700] ?? Colors.black,
                isBold: false,
              ),
            ],
          ),
          trVSpace24,
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "Your Chronic Diseases:",
                  size: 18,
                  color: Colors.grey[600] ?? Colors.black,
                  isBold: false,
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Add a Chronic Disease"),
                        content: TextField(
                          controller: diseaseController,
                          onChanged: (value) {},
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              addChronicDisease(diseaseController.text);
                              diseaseController.clear();
                              Navigator.of(context).pop();
                            },
                            child: const Text('Add'),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.add,
                    color: primary,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: chronicDiseases
                .map((disease) => TextBoxWidget(
                      text: disease,
                      label: 'Disease:',
                    ))
                .toList(),
          ),
          trVSpace24,
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "Add Your Family:",
                  size: 18,
                  color: Colors.grey[600] ?? Colors.black,
                  isBold: false,
                ),
                IconButton(
                  onPressed: _showFamilyBottomSheet,
                  icon: const Icon(
                    Icons.add,
                    color: primary,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: addFamilyInfo
                .map((familyInfo) => TextBoxWidget(
                      text: familyInfo,
                      label: "My Family",
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
