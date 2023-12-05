import 'package:drift/drift.dart';

class DaoUtils {
  static Expression<String> date(Expression<DateTime> time) {
    return FunctionCallExpression('datetime', [time, const Constant('unixepoch')]);
  }
}
