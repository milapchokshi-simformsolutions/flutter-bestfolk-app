import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:helloworld/ui/views/data/medicine_type_data.dart';

class MedicineHeaderScreen extends StatelessWidget {
  final MedicineTypeData medicineTypeData;

  MedicineHeaderScreen(this.medicineTypeData);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(2)),
          ),
          child: Text(
            medicineTypeData.newsType,
            style: const TextStyle(color: Colors.black),
          )),
    );
  }
}
