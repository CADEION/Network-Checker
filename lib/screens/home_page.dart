import 'package:bv1/bloc/internet_bloc/internet_bloc.dart';
import 'package:bv1/bloc/internet_bloc/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: BlocConsumer<InternetBloc, InternetState>(
          listener: (context, state) {
            // TODO: implement listener
            if (state is InternetGainState) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Connected"),backgroundColor: Colors.greenAccent,));
            }
            else{
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Not Connected"),backgroundColor: Colors.red,));
            }
          },
          builder: (context, state) {
            if (state is InternetGainState) {
              return Text('Connected');
            }
            else if (state is InternetLossState) {
              return Text('Not Connected');
            }
            else{
              return Text('Loading ...');
            }
          },
        ),
      ),
    );
  }
}
