import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jithin'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(30),
        width: 150,
        height: 150,
        color: Colors.yellow,
         child: Text('hi')
          //Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text('Dona'),
        //     Text('Vasim'),
        //   ],
        // ),
      ),
    );
  }
}
