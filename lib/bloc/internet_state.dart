part of 'internet_bloc.dart';

@immutable
abstract class InternetState {
  final String message = 'checking';
}

class InternetInitial extends InternetState {
}

class ConnectedState extends InternetState {
  final String message;

  ConnectedState({required this.message});
}

class NotConnectedState extends InternetState {
  final String message;

  NotConnectedState({required this.message});
}
