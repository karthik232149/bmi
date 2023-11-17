import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {

  BmiCalculator();

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();

}

class _BmiCalculatorState extends State<BmiCalculator> {
  final TextEditingController _height=TextEditingController();
  final TextEditingController _weight=TextEditingController();
  double result=0.0;
  void bmicalculator(){
    double Height=double.parse(_height.text)/100;
    double Weight=double.parse(_weight.text);
    double Heightsquare=Height*Height;
     result=Weight/Heightsquare;
     setState(() {
        result=result;
     });
    print(result);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( backgroundColor: Colors.pinkAccent ,title: Text('BmiCalculator'),
        ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: _height,
    decoration: InputDecoration(

      prefixIcon: Icon(Icons.trending_up,color:Colors.pinkAccent),
      labelText: 'height in cm',
      hintText: '',
      labelStyle: TextStyle(color: Colors.pinkAccent)
    )),

        TextField(
          controller: _weight,
            decoration: InputDecoration(
          prefixIcon: Icon(Icons.menu_outlined,color:Colors.pinkAccent,),
    labelText: 'weight in kg',
    hintText: '',
                labelStyle: TextStyle(color: Colors.pinkAccent)


            )),
        ElevatedButton(onPressed:(){bmicalculator();},
            style: ElevatedButton.styleFrom(primary: Colors.pinkAccent)
            ,child: Text('Calculator')),
        Text(result.toStringAsFixed(3))
      ],
    ) ,
    );
  }
}
