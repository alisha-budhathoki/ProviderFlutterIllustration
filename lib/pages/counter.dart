import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:libraries_illustration/bloc/counter_bloc.dart';
import 'package:libraries_illustration/widgets/decrement.dart';
import 'package:libraries_illustration/widgets/increment.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    return Scaffold(
      body: new Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
              counterBloc.counter.toString(),
                style: TextStyle(
                  fontSize: 62
                ),
              ),
              IncrementButton(),
              DecrementButton()
            ],
          ),
        ),
      ),
    );
  }
}