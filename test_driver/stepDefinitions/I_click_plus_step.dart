import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';


import '../pages/home_page.dart';

class ClickPlus extends GivenWithWorld<FlutterWorld> {
  ClickPlus()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    HomePage homePage = HomePage(world.driver);
    await FlutterDriverUtils.waitForFlutter(world.driver);
    await homePage.clickBtnPlus();
    await FlutterDriverUtils.enterText(
        world.driver, homePage.txtBox, "Step Plus");
  }

  @override
  RegExp get pattern => RegExp(r"I click the plus button");
}
