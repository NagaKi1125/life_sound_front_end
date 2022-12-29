import 'package:injectable/injectable.dart';
import '../../../router/app_route.dart';

@singleton
class NavigationManager {
  final NavigationManagerDelegate _delegate;

  NavigationManager(this._delegate);

  void push(AppRoute route) {
    _delegate.push(route);
  }

  void pushReplacement(AppRoute route) {
    _delegate.pushReplacement(route);
  }

  void pop() {
    _delegate.pop();
  }

  void resetNewStack({AppRoute? route}) {
    _delegate.resetNewStack(route);
  }

  Future<dynamic> pushAndWaitForResult(AppRoute route) {
    return _delegate.pushAndWaitForResult(route);
  }

  void popWithResult(dynamic value) {
    _delegate.popWithResult(value);
  }
}

@singleton
class NavigationManagerDelegate {
  Function(AppRoute)? _onPush;
  Function(AppRoute)? _onPushReplacement;
  Function? _onPop;
  Function(AppRoute?)? _onReset;
  Future<dynamic> Function(AppRoute)? _onPushAndWaitForResult;
  Function(dynamic)? _onPopWithResult;

  // setters to allow override of callbacks
  set onPush(Function(AppRoute) callback) => _onPush = callback;
  set onPushReplacement(Function(AppRoute) callback) =>
      _onPushReplacement = callback;
  set onPop(Function callback) => _onPop = callback;
  set onReset(Function(AppRoute?) callback) => _onReset = callback;
  set onPushAndWaitForResult(Future<dynamic> Function(AppRoute) callback) =>
      _onPushAndWaitForResult = callback;
  set onPopWithResult(Function(dynamic) callback) =>
      _onPopWithResult = callback;

  void push(AppRoute route) {
    _onPush?.call(route);
  }

  void pushReplacement(AppRoute route) {
    _onPushReplacement?.call(route);
  }

  void pop() {
    _onPop?.call();
  }

  void resetNewStack(AppRoute? route) {
    _onReset?.call(route);
  }

  Future<dynamic> pushAndWaitForResult(AppRoute route) async {
    return _onPushAndWaitForResult?.call(route);
  }

  void popWithResult(dynamic value) {
    _onPopWithResult?.call(value);
  }
}
