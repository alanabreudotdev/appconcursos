import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:eusereiaprovado/app/modules/disciplinas/disciplinas_controller.dart';
import 'package:eusereiaprovado/app/modules/disciplinas/disciplinas_module.dart';

void main() {
  initModule(DisciplinasModule());
  // DisciplinasController disciplinas;
  //
  setUp(() {
    //     disciplinas = DisciplinasModule.to.get<DisciplinasController>();
  });

  group('DisciplinasController Test', () {
    //   test("First Test", () {
    //     expect(disciplinas, isInstanceOf<DisciplinasController>());
    //   });

    //   test("Set Value", () {
    //     expect(disciplinas.value, equals(0));
    //     disciplinas.increment();
    //     expect(disciplinas.value, equals(1));
    //   });
  });
}
