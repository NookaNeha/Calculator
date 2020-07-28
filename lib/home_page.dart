import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAdd() {
    this.setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    this.setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doSqrt() {
    this.setState(() {
      num1 = int.parse(t1.text);
      sum = sqrt(num1).toInt();
    });
  }

  void doMul() {
    this.setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    this.setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doLog() {
    this.setState(() {
      num1 = int.parse(t1.text);
      sum = log(num1).toInt();
    });
  }

  void doMod() {
    this.setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 % num2;
    });
  }

  void doARB() {
    this.setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = pow(num1, num2);
    });
  }

  void doClear() {
    this.setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }

  void doInv() {
    this.setState(() {
      num1 = int.parse(t1.text);
      sum = 1 ~/ num1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Calculator"),
        ),
        body: new Container(
            padding: const EdgeInsets.all(40.0),
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new TextField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(hintText: "Enter Number"),
                    controller: t1,
                  ),
                  new TextField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(hintText: "Enter Number"),
                    controller: t2,
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 40.0)),
                  new Text(
                    "Output: $sum ",
                    style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold),
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 40.0)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new MaterialButton(
                        child: new Text("+",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold)),
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        splashColor: Colors.redAccent,
                        height: 50.0,
                        minWidth: 75.0,
                        onPressed: doAdd,
                      ),
                      new Padding(padding: const EdgeInsets.only(left: 20.0)),
                      new MaterialButton(
                        child: new Text("-",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold)),
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        splashColor: Colors.redAccent,
                        height: 50.0,
                        minWidth: 75.0,
                        onPressed: doSub,
                      ),
                      new Padding(padding: const EdgeInsets.only(left: 20.0)),
                      new MaterialButton(
                        child: new Text("1/x",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold)),
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        splashColor: Colors.redAccent,
                        height: 50.0,
                        minWidth: 75.0,
                        onPressed: doInv,
                      ),
                    ],
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 20.0)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new MaterialButton(
                        child: new Text("x",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold)),
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        splashColor: Colors.redAccent,
                        height: 50.0,
                        minWidth: 75.0,
                        onPressed: doMul,
                      ),
                      new Padding(padding: const EdgeInsets.only(left: 20.0)),
                      new MaterialButton(
                        child: new Text("/",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold)),
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        splashColor: Colors.redAccent,
                        height: 50.0,
                        minWidth: 75.0,
                        onPressed: doDiv,
                      ),
                      new Padding(padding: const EdgeInsets.only(left: 20.0)),
                      new MaterialButton(
                        child: new Text("LOG",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold)),
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        splashColor: Colors.redAccent,
                        height: 50.0,
                        minWidth: 75.0,
                        onPressed: doLog,
                      ),
                    ],
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 20.0)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new MaterialButton(
                        child: new Text("%",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold)),
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        splashColor: Colors.redAccent,
                        height: 50.0,
                        minWidth: 75.0,
                        onPressed: doMod,
                      ),
                      new Padding(padding: const EdgeInsets.only(left: 20.0)),
                      new MaterialButton(
                        child: new Text("√",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold)),
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        splashColor: Colors.redAccent,
                        height: 50.0,
                        minWidth: 75.0,
                        onPressed: doSqrt,
                      ),
                      new Padding(padding: const EdgeInsets.only(left: 20.0)),
                      new MaterialButton(
                        child: new Text("x^y",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold)),
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        splashColor: Colors.redAccent,
                        height: 50.0,
                        minWidth: 75.0,
                        onPressed: doARB,
                      ),
                    ],
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 40.0)),
                  new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new MaterialButton(
                          child: new Text("C",
                              style: TextStyle(
                                  fontSize: 30.0, fontWeight: FontWeight.bold)),
                          color: Colors.deepPurple,
                          textColor: Colors.white,
                          splashColor: Colors.redAccent,
                          height: 50.0,
                          minWidth: 100.0,
                          onPressed: doClear,
                        ),
                      ])
                ])));
  }
}
