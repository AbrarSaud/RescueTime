import 'package:flutter/material.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/colors.dart';
import 'package:rescue_time/constants/spaces.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController allergiesController = TextEditingController();
  TextEditingController diseasesController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    heightController.dispose();
    weightController.dispose();
    allergiesController.dispose();
    diseasesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 555,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              trVSpace8,
              const TextWidget(
                text: 'Add your family',
                color: primary,
                size: 25,
                textAlign: TextAlign.center,
                isBold: true,
              ),
              trVSpace16,
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
              ),
              trVSpace8,
              TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Age',
                  prefixIcon: Icon(Icons.calendar_today),
                  border: OutlineInputBorder(),
                ),
              ),
              trVSpace8,
              TextFormField(
                controller: heightController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Height (cm)',
                  prefixIcon: Icon(Icons.height),
                  border: OutlineInputBorder(),
                ),
              ),
              trVSpace8,
              TextFormField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Weight (kg)',
                  prefixIcon: Icon(Icons.line_weight),
                  border: OutlineInputBorder(),
                ),
              ),
              trVSpace8,
              TextFormField(
                controller: allergiesController,
                decoration: const InputDecoration(
                  labelText: 'Allergies',
                  prefixIcon: Icon(Icons.health_and_safety),
                  border: OutlineInputBorder(),
                ),
              ),
              trVSpace8,
              TextFormField(
                controller: diseasesController,
                decoration: const InputDecoration(
                  labelText: 'Diseases',
                  prefixIcon: Icon(Icons.healing),
                  border: OutlineInputBorder(),
                ),
              ),
              trVSpace24,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const  TextWidget(
                      text: 'Cancel',
                      color: white,
                    ),
                  ),
                  trHSpace16,
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, {
                        'name': nameController.text,
                        'age': ageController.text,
                        'height': heightController.text,
                        'weight': weightController.text,
                        'allergies': allergiesController.text,
                        'diseases': diseasesController.text,
                      });
                    },
                    child: const TextWidget(
                      text: 'Add',
                      color: white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
