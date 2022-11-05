part of 'internet_bloc.dart';

@immutable
abstract class InternetState {
  final String message = 'checking';
}

class InternetInitial extends InternetState {
}

class InternetCheckLoading extends InternetState {}

class ConnectedState extends InternetState {
  final String message;

  ConnectedState({required this.message});
}

class NotConnectedState extends InternetState {
  final String message;

  NotConnectedState({required this.message});
}

class IsConnectedState extends InternetState {
  final bool isDeviceConnected;
  final bool isNetworkAvailable;

  IsConnectedState(this.isDeviceConnected, this.isNetworkAvailable);
}
