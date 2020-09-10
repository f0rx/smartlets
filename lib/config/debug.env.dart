// import 'package:eazox/services/locator/serviceInjector.dart';
import 'package:meta/meta.dart';

enum BuildFlavor { prod, dev }

BuildEnvironment get env => _env;
BuildEnvironment _env;

class BuildEnvironment {
  final BuildFlavor flavor;

  BuildEnvironment._init({this.flavor});

  /// Sets up the top-level [env] getter on the first call only.
  static Future<void> init({@required flavor, String baseUrl}) async {
    _env ??= BuildEnvironment._init(
      flavor: flavor,
    );

    // if (flavor == BuildFlavor.dev)
    //   await injector(Environment.dev);
    // else if (flavor == BuildFlavor.prod) await injector(Environment.prod);
  }
}
