//bit.ly/flutter_conversion

import 'package:flutter/material.dart';

class Conversion extends StatefulWidget {
  const Conversion({Key? key}) : super(key: key);

  @override
  State<Conversion> createState() => _ConversionState();
}

class _ConversionState extends State<Conversion> {

  TextEditingController usd = TextEditingController();
  TextEditingController inr = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aaron'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height-80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Image.asset('assets/dollar.png'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (val){
                    inr.text = (int.parse(val)*80).toString();
                    //print('Davish Val=$val');
                  },
                  controller: usd,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('USD'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)
                    )

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: inr,
                  keyboardType: TextInputType.number,
                  onChanged: (val){
                    usd.text = (int.parse(val)/80).toString();
                    //print('Davish Val=$val');
                  },
                  decoration: InputDecoration(
                      label: Text('INR'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      )

                  ),
                ),
              ),
              MaterialButton(
                onPressed: ()=>reset() ,
                color: Colors.blue,
                child: Text('Reset',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }

  void reset(){
    usd.text ='';
    inr.text = '';
  }
}
