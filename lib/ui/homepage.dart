import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/data/HomeBLoc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.getStream,
      builder: (context, snapshot) {
        return SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 9,
                child: bloc.getWidget(),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          bloc.changeColor(0);
                        },
                        child: Text("1"),
                      ),
                    ),
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          bloc.changeColor(1);
                        },
                        child: Text("2"),
                      ),
                    ),
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          bloc.changeColor(2);
                        },
                        child: Text("3"),
                      ),
                    ),
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          bloc.changeColor(3);
                        },
                        child: Text("4"),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
