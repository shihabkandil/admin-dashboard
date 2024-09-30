import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'i_internet_checker.dart';

@Singleton(as: IInternetChecker)
class InternetChecker implements IInternetChecker {
  @override
  Future<bool> isConnected() async {
    return await InternetConnection().hasInternetAccess;
  }
}
