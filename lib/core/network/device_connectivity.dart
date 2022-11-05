import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class DeviceConnectivity {
  Future<bool> get isConnected;
}

class DeviceConnectivityImpl implements DeviceConnectivity {
  final Connectivity connectivity;

  DeviceConnectivityImpl(this.connectivity);

  @override
  Future<bool> get isConnected async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }
}
