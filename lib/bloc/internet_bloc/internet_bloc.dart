import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bv1/bloc/internet_bloc/internet_event.dart';
import 'package:bv1/bloc/internet_bloc/internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  InternetBloc() : super(InternetInitIalState()) {
    Connectivity _connectivity = Connectivity();
    StreamSubscription? connectivitySubscription;

    on<InternetLossEvent>((event, emit) => emit(InternetLossState()));
    on<InternetGainEvent>((event, emit) => emit(InternetGainState()));

    connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((res) {
      if (res.contains(ConnectivityResult.mobile) || res.contains(ConnectivityResult.wifi)) {
        add(InternetGainEvent());
      } else {
        add(InternetLossEvent());
      }
    });
    @override
    Future<void> close() {
      connectivitySubscription?.cancel();
      return super.close();
    }
  }
}

