import 'package:flutter/material.dart';


Widget buildTextField(
    TextEditingController controller, String labelText, String validationMessage,
    { bool isFee = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
       
   
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        keyboardType: const TextInputType.numberWithOptions(),
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return validationMessage;
          }

          if (isFee) {
            final fee = int.tryParse(value);
            if (fee == null || fee < 1 || fee > 100000) {
              return 'Enter a valid fee';
            }
          }

          return null;
        },
        decoration: InputDecoration(
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          labelText: labelText, // Set as labelText
          floatingLabelBehavior: FloatingLabelBehavior.auto, // Auto float label
          labelStyle: const TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ),
    ),
  );
}
