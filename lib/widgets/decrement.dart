import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:libraries_illustration/bloc/counter_bloc.dart';
import 'package:provider/provider.dart';

class DecrementButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    return InkWell(
        onTap: () {
          print("saki");
          counterBloc.decrement();
        },
        child: Row( mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.remove),
            Text("Remove"),
          ],
        ));
  }
}