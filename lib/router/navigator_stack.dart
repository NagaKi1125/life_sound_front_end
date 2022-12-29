import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import '../../../router/app_route.dart';

class NavigatorStack with ChangeNotifier {
  late AppRoute _rootAppRoute;
  // store all the paths in your stack to be rendered out
  late List<AppRoute> _routes;
  // accept root in stack creation
  NavigatorStack({required AppRoute root}) {
    _rootAppRoute = root;
    _routes = [_rootAppRoute];
  }
  UnmodifiableListView<AppRoute> get items => UnmodifiableListView(_routes);

  Completer<dynamic>? _resultCompleter;

  void push(AppRoute route) {
    // prevent root pushing on root
    if (route.path == _rootAppRoute.path) {
      _routes = [_rootAppRoute];
      notifyListeners();
    } else {
      _routes.add(route);
      notifyListeners();
    }
  }

  Future<dynamic> pushAndWaitForResult(AppRoute route) async {
    _resultCompleter = Completer();
    push(route);
    return _resultCompleter!.future;
  }

  void popWithResult(dynamic value) {
    if (_resultCompleter != null) {
      _routes.removeLast();
      if (!_resultCompleter!.isCompleted) {
        _resultCompleter!.complete(value);
      } else {
        _resultCompleter = Completer();
        _resultCompleter!.complete(value);
      }
      notifyListeners();
    }
  }

  void pushReplacement(AppRoute route) {
    pop();
    push(route);
  }

  void resetNewStack(AppRoute? route) {
    _routes = [route ?? _rootAppRoute];
    notifyListeners();
  }

  AppRoute? pop() {
    try {
      final poppedItem = _routes.removeLast();
      notifyListeners();
      return poppedItem;
    } catch (e) {
      return null;
    }
  }

  @override
  void dispose() {
    _resultCompleter?.complete();
    super.dispose();
  }
}
