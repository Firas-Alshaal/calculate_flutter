import 'package:flutter/material.dart';

class AdditionTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AdditionTab();
  }
}

class _AdditionTab extends State<AdditionTab> with AutomaticKeepAliveClientMixin {
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
            autocorrect: true,
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
            child: Text("Add"),
            onPressed: () {
              setState(() {
                result = num1 + num2;
              });
            },
          ),
          Text("$result"),
        ],
      ),
    );
  }


}
