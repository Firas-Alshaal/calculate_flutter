import 'package:flutter/material.dart';

class MultiplicationTab extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MultiplicationTab();
  }
}

class _MultiplicationTab extends State<MultiplicationTab> with AutomaticKeepAliveClientMixin{

  double num1, num2;
  double result = 0;

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.numberWithOptions(),
            onChanged: (String value) {
              num1 = double.parse(value);
            },
          ),
          TextField(
            keyboardType: TextInputType.numberWithOptions(),
            onChanged: (String value) {
              num2 = double.parse(value);
            },
          ),
          RaisedButton(
            child: Text("Mult"),
            onPressed: () {
              setState(() {
                result = num1 * num2;
              });
            },
          ),
          Text("$result"),
        ],
      ),
    );
  }



}