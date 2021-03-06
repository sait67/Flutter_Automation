import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../pages/home_page.dart';

class InitialStateOfApp extends AndWithWorld<FlutterWorld> {
  InitialStateOfApp()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    //Instantiate homepage with world.driver as parameter for flutter driver object
    HomePage homePage = HomePage(world.driver);

    await FlutterDriverUtils.tap(world.driver, homePage.btnCounter);

  }

  @override
  RegExp get pattern => RegExp(r"I test the initial state of the app");
}
