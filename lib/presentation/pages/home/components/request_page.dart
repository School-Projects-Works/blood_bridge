import 'package:blood_bridge/core/components/constants/strings.dart';
import 'package:blood_bridge/core/components/widgets/custom_drop_down.dart';
import 'package:blood_bridge/styles/colors.dart';
import 'package:blood_bridge/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({super.key});

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  final _formKey = GlobalKey<FormState>();
  String? bloodGroup;
  String? genotype;
  String? vaccination;
  String? region;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Card(
              elevation: 3,
              child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Blood Request',
                        style: normalText(fontSize: 25, color: secondaryColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomDropDown(
                          icon: MdiIcons.needle,
                          hintText: 'Select Blood Group',
                          onChanged: (blood) {},
                          validator: (blood) {
                            if (blood == null) {
                              return 'Blood group is required';
                            }
                            return null;
                          },
                          items: bloodGroupList
                              .map((e) =>
                                  DropdownMenuItem(value: e, child: Text(e)))
                              .toList()),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Card(),
              ),
            )
          ],
        ));
  }
}
