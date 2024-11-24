extension ListExtension<T> on List<T> {
  List<T> replaceWhere(
    bool Function(T e) test, {
    required T Function(T old) replacement,
  }) {
    return List<T>.generate(
      length,
      (i) => test(this[i]) ? replacement(this[i]) : this[i],
    );
  }
}
