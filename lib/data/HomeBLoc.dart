import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/ui/first_screen.dart';
import 'package:flutter_bloc_example/ui/second_screen.dart';
import 'package:flutter_bloc_example/ui/third_screen.dart';

class HomeBloc{

  int colorCode = 0;
  final streamController = StreamController();

  Stream get getStream => streamController.stream;

  void changeColor(int code){
   colorCode = code;
   streamController.sink.add(colorCode);
  }
  Widget getWidget(){
    if(colorCode == 0){
      return FirstScreen();
    }
    else if(bloc.colorCode == 1){
      return SecondScreen();
    }
    else if (bloc.colorCode == 2){
      return ThirdScreen();
    }
    else
      return Container(
        color: Colors.grey,
      );
  }
  void dispose(){
    streamController.close();
  }
}
final bloc = HomeBloc();