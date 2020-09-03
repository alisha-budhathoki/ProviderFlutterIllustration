import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:libraries_illustration/bloc/counter_bloc.dart';
import 'package:provider/provider.dart';

class IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    return InkWell(
        onTap: () {
          counterBloc.increment();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.add),
            Text("Add"),
          ],
        ));
  }
}
