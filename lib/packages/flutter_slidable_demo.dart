import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/utils/app_style.dart';
import 'package:flutter_advanced/core/widgets/custom_app_bar.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FlutterSlidableDemo extends StatelessWidget {
  const FlutterSlidableDemo({super.key});

  static Map<String, Widget> motions = {
    'Drawer Motion': const DrawerMotion(),
    'Stretch Motion': const StretchMotion(),
    'Scroll Motion': const ScrollMotion(),
    'Behind Motion': const BehindMotion(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Flutter Slidable',
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: motions.keys
              .map(
                (key) => Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Slidable(
                    startActionPane: ActionPane(
                      motion: motions[key]!,
                      children: [
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: 'Delete',
                        ),
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          icon: Icons.archive,
                          label: 'Archive',
                        ),
                      ],
                    ),
                    child: Item(key),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item(
    this.title, {
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade300,
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        style: AppStyle.regularStyle,
      ),
    );
  }
}
