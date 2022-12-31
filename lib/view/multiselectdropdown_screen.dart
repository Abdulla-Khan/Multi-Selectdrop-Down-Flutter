import 'package:flutter/material.dart';
import 'package:flutter_custom_selector/widget/flutter_multi_select.dart';
import 'package:get/get.dart';

import '../controller/app_data_controller.dart';

class MultiSelectDropDownScreen extends StatelessWidget {
  MultiSelectDropDownScreen({Key? key}) : super(key: key);

  final AppDataController controller = Get.put(AppDataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Multi Select DropDown"),
        ),
        body: Column(children: [
          GetBuilder<AppDataController>(builder: (controller) {
            return Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomMultiSelectField(
                  items: controller.location[0].data,
                  title: 'Choose Preffered Locations',
                  onSelectionDone: (value) {
                    controller.selectedLocation = (value);
                  },
                ));
          })
        ]));
  }
}
