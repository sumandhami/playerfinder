import 'package:flutter/material.dart';

import 'map_page.dart';

class My_Dashboard extends StatelessWidget {
  const My_Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapPage(),
                ),
              );
            },
            icon: Icon(Icons.location_on),
          )
        ],
      ),
    );
  }
}
