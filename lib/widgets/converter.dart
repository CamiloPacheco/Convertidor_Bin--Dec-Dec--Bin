import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  String _binary = "0";
  String _decimal = "0";
  String _sw = "0";

  // _decimal = int.parse(_binary, radix: 2).toRadixString(10);
  String dec2bin(int decimal) {
    int bin = 0;
    int _i = 1;
    while (decimal > 0) {
      bin = bin + (decimal % 2) * _i;
      decimal = (decimal / 2).floor();
      _i = _i * 10;
    }
    return bin.toString();
  }

  void _onPressed(String bin) {
    setState(() {
      if (_sw == "1") {
        if (_binary == "0")
          _binary = bin;
        else
          _binary = _binary + bin;
        _decimal = int.parse(_binary, radix: 2).toRadixString(10);
      } else {
        if (_decimal == "0")
          _decimal = bin;
        else
          _decimal = _decimal + bin;
        _binary = dec2bin(int.parse(_decimal));
      }
    });
  }

  void _ChangeWindows(String sw) {
    setState(() {
      _sw = sw;
      _binary = "0";
      _decimal = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_sw == "0") {
      return Container(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
                Widget>[
          new GestureDetector(
            onTap: () {
              _ChangeWindows("1");
            },
            child: new Text("Decimal -> Bin"),
          ),
          Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerRight,
              child: Text(
                '$_binary',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(int.parse("#FF5722".replaceAll('#', '0xff'))),
                    fontSize: 35),
              )),
          Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerRight,
              child: Text(
                '$_decimal',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(int.parse("#FF5722".replaceAll('#', '0xff'))),
                    fontSize: 35),
              )),
          Expanded(
            flex: 4,
            child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          child: MaterialButton(
                              color: Color(
                                  int.parse("#0069C0".replaceAll('#', '0xff'))),
                              onPressed: () {
                                _onPressed("7");
                              },
                              child: Text("7",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ))),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          child: MaterialButton(
                              color: Color(
                                  int.parse("#0069C0".replaceAll('#', '0xff'))),
                              onPressed: () {
                                _onPressed("8");
                              },
                              child: Text("8",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ))),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          child: MaterialButton(
                              color: Color(
                                  int.parse("#0069C0".replaceAll('#', '0xff'))),
                              onPressed: () {
                                _onPressed("9");
                              },
                              child: Text("9",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ))),
                        ),
                      ),
                    ]),
                    Row(children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          child: MaterialButton(
                              color: Color(
                                  int.parse("#0069C0".replaceAll('#', '0xff'))),
                              onPressed: () {
                                _onPressed("4");
                              },
                              child: Text("4",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ))),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          child: MaterialButton(
                              color: Color(
                                  int.parse("#0069C0".replaceAll('#', '0xff'))),
                              onPressed: () {
                                _onPressed("5");
                              },
                              child: Text("5",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ))),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          child: MaterialButton(
                              color: Color(
                                  int.parse("#0069C0".replaceAll('#', '0xff'))),
                              onPressed: () {
                                _onPressed("6");
                              },
                              child: Text("6",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ))),
                        ),
                      ),
                    ]),
                    Row(children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          child: MaterialButton(
                              color: Color(
                                  int.parse("#0069C0".replaceAll('#', '0xff'))),
                              onPressed: () {
                                _onPressed("1");
                              },
                              child: Text("1",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ))),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          child: MaterialButton(
                              color: Color(
                                  int.parse("#0069C0".replaceAll('#', '0xff'))),
                              onPressed: () {
                                _onPressed("2");
                              },
                              child: Text("2",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ))),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          child: MaterialButton(
                              color: Color(
                                  int.parse("#0069C0".replaceAll('#', '0xff'))),
                              onPressed: () {
                                _onPressed("3");
                              },
                              child: Text("3",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ))),
                        ),
                      ),
                    ]),
                    Row(children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          child: MaterialButton(
                              color: Color(
                                  int.parse("#0069C0".replaceAll('#', '0xff'))),
                              onPressed: () {
                                _onPressed("0");
                              },
                              child: Text("0",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ))),
                        ),
                      ),
                    ])
                  ],
                )),
          ),
          Expanded(
            flex: 1,
            child: Container(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                    color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                    onPressed: () {
                      setState(() {
                        _decimal = "0";
                        _binary = "0";
                      });
                    },
                    child: Text("Reset",
                        style: new TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        )))),
          ),
        ]),
      );
    } else
      return Container(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
                Widget>[
          new GestureDetector(
            onTap: () {
              _ChangeWindows("0");
            },
            child: new Text("Bin -> Decimal"),
          ),
          Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerRight,
              child: Text(
                '$_binary',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(int.parse("#FF5722".replaceAll('#', '0xff'))),
                    fontSize: 35),
              )),
          Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerRight,
              child: Text(
                '$_decimal',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(int.parse("#FF5722".replaceAll('#', '0xff'))),
                    fontSize: 35),
              )),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(15.0),
                  child: MaterialButton(
                      minWidth: 170,
                      height: 500.0,
                      color:
                          Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                      onPressed: () {
                        _onPressed("1");
                      },
                      child: Text("1",
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ))),
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  child: MaterialButton(
                      minWidth: 165,
                      height: 500.0,
                      color:
                          Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                      onPressed: () {
                        _onPressed("0");
                      },
                      child: Text("0",
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ))),
                ),
              ]),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                    color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                    onPressed: () {
                      setState(() {
                        _decimal = "0";
                        _binary = "0";
                      });
                    },
                    child: Text("Reset",
                        style: new TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        )))),
          ),
        ]),
      );
  }
}
