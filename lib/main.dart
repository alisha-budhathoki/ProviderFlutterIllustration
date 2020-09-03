import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:libraries_illustration/bloc/counter_bloc.dart';
import 'package:libraries_illustration/pages/counter.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MultiProvider(
     providers: [
         ChangeNotifierProvider<CounterBloc>.value(
       value: CounterBloc(),
         )
     ],
       child: MaterialApp(
         home: CounterPage(),
       ),
     );
  }
}