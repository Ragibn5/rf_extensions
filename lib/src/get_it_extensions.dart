import 'package:get_it/get_it.dart';

extension GetItExtensions on GetIt {
  /// Returns the instance registered with [getIt], or null of not found.
  T? getIfRegistered<T extends Object>() {
    if (!isRegistered<T>()) return null;
    return get<T>();
  }
}
