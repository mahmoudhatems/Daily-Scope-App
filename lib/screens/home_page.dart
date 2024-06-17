import 'package:daily_scope/constants.dart';
import 'package:daily_scope/widgets/Categories_listview.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Daily",
                style: TextStyle(color: maincolor),
              ),
              Text(
                " Scope",
                style: TextStyle(color: secoandcolor),
              ),
            ],
          ),
        ),
        body: const Categories_ListView());
  }
}

