import 'package:blood_bridge/presentation/widgets/quote_card.dart';
import 'package:blood_bridge/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              Icon(MdiIcons.viewList),
              Text(
                'Blood Request List',
                style: normalText(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          const SizedBox(height: 20),
          const QuoteCard(),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text('Blood Request'),
                    subtitle: Text('Blood Request'),
                    trailing: Text('Blood Request'),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
