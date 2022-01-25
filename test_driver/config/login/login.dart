import 'dart:async';
import 'package:glob/glob.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import '../../stepDefinitions/login.dart';
import 'package:gherkin/gherkin.dart';


Future<void> main() {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/login/testcase_login_success.feature")]
    ..stepDefinitions = [InputEmail(), VerifyLoginPage(), InputPassword(), LoginButton(), ValidateSuccesLogin()]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter()
      // StdoutReporter(), 
      // JsonReporter(path: './test_driver_tablet/reporting/view_report/login/report_login.json')
      ]
    // ..hooks = [HookExample(), AttachScreenshotOnFailedStepHook()]
    ..restartAppBetweenScenarios = false
    ..targetAppPath = "test_driver/app.dart";
    // ..buildFlavor = "betasmartphone"
      //..exitAfterTestRun = false;
  return GherkinRunner().execute(config);
  
}
