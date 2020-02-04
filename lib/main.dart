import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
title: 'Calculator' ,home: calculator(),
));

class calculator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    double numone =0.0;
    double numtwo =0.0;

    TextField numOneField = TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: 'Num One', hintText: '123'),

      onChanged: (String value){
        try{
          numone = double.parse(value);
        }catch(exception){
          numone = 0;
        }
      },
    );

    TextField numTwoField = TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: 'Num Two', hintText: '123'),

      onChanged: (String value){
        try{
          numtwo = double.parse(value);
        }catch(exception){
          numtwo =0;
        }
      },
    );


    RaisedButton AddButton = RaisedButton(
      child: Text('ADD'),
      onPressed: (){
        double addResult = numone + numtwo ;

        AlertDialog dialog = AlertDialog(
          content: Text('Add Result: \$$addResult'),
        );

        showDialog(context: context, builder: (BuildContext context) => dialog);
      },
    );


    RaisedButton SubButton = RaisedButton(
      child: Text('SUB'),
      onPressed: (){
        double subResult = numone - numtwo ;

        AlertDialog dialog = AlertDialog(
          content: Text('Sub Result: \$$subResult'),
        );

        showDialog(context: context, builder: (BuildContext context)=> dialog);
      },
    );

    RaisedButton MulButton = RaisedButton(
      child: Text('MULTIPLY'),
      onPressed: (){
        double mulResult = numone * numtwo;

        AlertDialog dialog = AlertDialog(
          content: Text('Multiple Result: \$$mulResult'),
        );

        showDialog(context: context, builder: (BuildContext context) => dialog);
      },
    );

    RaisedButton DivButton = RaisedButton(
      child: Text('DIVISION'),

      onPressed: (){
        double divResult = numone / numtwo;

        AlertDialog dialog = AlertDialog(
          content: Text('Division Result: \$$divResult'),
        );

        showDialog(context: context, builder: (BuildContext context)=> dialog);
      },

    );


    Container container = Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          numOneField,
          numTwoField,
          AddButton,
          SubButton,
          MulButton,
          DivButton
        ],
      ),
    );

    AppBar appBar = AppBar(
      title: Text('Calculator'),
    );

    Scaffold scaffold = Scaffold(
      appBar: appBar,
      body: container,
    );

    return scaffold;


  }
}

