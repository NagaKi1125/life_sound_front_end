import 'package:path_to_regexp/path_to_regexp.dart';

class PathToRegExpUtil {
  final String templatePath;
  final String currentPath;

  late RegExp regExp;
  final _parameters = <String>[];

  PathToRegExpUtil({
    required this.templatePath,
    required this.currentPath,
  }) {
    regExp = pathToRegExp(templatePath, parameters: _parameters);
  }

  bool get hasMatch => regExp.hasMatch(currentPath);

  Map<String, String> getParameters() {
    final match = regExp.matchAsPrefix(currentPath);
    if (match != null) {
      final params = extract(_parameters, match);
      return params;
    }
    return {};
  }
}
