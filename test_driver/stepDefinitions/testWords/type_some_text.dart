import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric WhenITypeSomeText() {
  return when1(
    'I type',
        (GherkinTable dataTable, context) async {
      for (var row in dataTable.rows) {
        // do something with row
        row.columns.forEach((columnValue) => print(columnValue));
      }
    },
  );
}