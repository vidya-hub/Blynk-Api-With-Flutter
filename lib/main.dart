import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  Future blynkTurnOn(int pin) async {
    var response = http.put(
      "http://188.166.206.43/tkQvdDVnThNYaBQiFuUvRc3l6SSstCCk/update/D$pin",
      headers: {"Content-type": "application/json"},
      body: json.encode([0]),
    );
    return response;
  }

  Future blynkTurnOff(int pin) async {
    var response = http.put(
      "http://188.166.206.43/tkQvdDVnThNYaBQiFuUvRc3l6SSstCCk/update/D$pin",
      headers: {"Content-type": "application/json"},
      body: json.encode([1]),
    );
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      blynkTurnOn(16).then((value) {
                        print(value.statusCode);
                      });
                    },
                    child: Text("On"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      blynkTurnOff(16).then((value) {
                        print(value.statusCode);
                      });
                    },
                    child: Text("Off"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      blynkTurnOn(5).then((value) {
                        print(value.statusCode);
                      });
                    },
                    child: Text("On"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      blynkTurnOff(5).then((value) {
                        print(value.statusCode);
                      });
                    },
                    child: Text("Off"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      blynkTurnOn(4).then((value) {
                        print(value.statusCode);
                      });
                    },
                    child: Text("On"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      blynkTurnOff(4).then((value) {
                        print(value.statusCode);
                      });
                    },
                    child: Text("Off"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      blynkTurnOn(0).then((value) {
                        print(value.statusCode);
                      });
                    },
                    child: Text("On"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      blynkTurnOff(0).then((value) {
                        print(value.statusCode);
                      });
                    },
                    child: Text("Off"),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
