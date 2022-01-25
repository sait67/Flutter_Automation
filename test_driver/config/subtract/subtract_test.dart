import 'dart:async';
import 'package:glob/glob.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import '../../stepDefinitions/I_click_plus_step.dart';
import '../../stepDefinitions/I_click_subtract.dart';
import '../../stepDefinitions/I_see_value_step.dart';
import '../../stepDefinitions/initial_state_of_app.dart';
import 'package:gherkin/gherkin.dart';




Future<void> main() {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/subtract/subtract.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ] // you can include the "StdoutReporter()" without the message level parameter for verbose log information
    ..stepDefinitions = [
      InitialStateOfApp(),
      ClickPlus(),
      ClickSubtract(),
      ISeeValue()
    ]
    ..order = ExecutionOrder.sequential
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/app.dart";
  //..tagExpression = "@wip" ;// uncomment to see an example of running scenarios based on tag expressions
  //..exitAfterTestRun = false; // set to false if debugging to exit cleanly
  return GherkinRunner().execute(config);
}