import 'package:flutter/material.dart';
import 'package:sixth/Screens/listscreen1.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Additional Information'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: name.length - 1,
                itemBuilder: ((context, index) {
                  if (index < trail.length) {
                    return ListTile(
                      leading: iconlist[index],
                      title: name[index],
                      trailing: trail[index],
                    );
                  } else {
                    return ListTile(
                      leading: iconlist[index],
                      title: name[index],
                    );
                  }
                })),
          ),
          const Text(
            'Version',
            style: TextStyle(color: Colors.grey),
          ),
          const Text('2.4.2',
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
