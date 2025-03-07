import 'package:flutter/material.dart';
import 'package:to_do_app_demo1/buttons/custom_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[600],
      content: SizedBox(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ), // Köşeleri yuvarlatıyoruz
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ), // Çizgi rengini ve kalınlığını ayarlıyoruz
                ),
                hintText: 'Enter a Task',
              ),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(text: "Save", onPressed: onSave),
                SizedBox(width: 5),
                CustomButton(text: "Cancel", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
