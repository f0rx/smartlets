import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:smartlets/manager/locator/locator.dart';

enum BuildFlavor { prod, dev }

BuildEnvironment get env => _env;
BuildEnvironment _env;

class BuildEnvironment {
  final BuildFlavor flavor;
  final Duration splashDuration;

  BuildEnvironment._init({
    this.flavor,
    this.splashDuration = const Duration(seconds: 2),
  });

  /// Sets up the top-level [env] getter on the first call only.
  static Future<void> init({@required flavor}) async {
    _env ??= BuildEnvironment._init(
      flavor: flavor,
      splashDuration: flavor == Environment.dev ? const Duration(milliseconds: 1000) : const Duration(seconds: 2),
    );

    switch (flavor) {
      case Environment.dev:
        await locator(Environment.dev);
        break;
      case Environment.prod:
        await locator(Environment.prod);
        break;
      default:
        await locator(Environment.prod);
    }
  }
}
