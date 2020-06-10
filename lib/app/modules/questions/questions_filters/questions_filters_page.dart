import 'package:eusereiaprovado/app/core/components/custom_raised_button_widget.dart';
import 'package:eusereiaprovado/app/core/components/custom_scaffold_widget.dart';
import 'package:eusereiaprovado/app/core/constants.dart';
import 'package:eusereiaprovado/app/core/helpers.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_multiselect/flutter_multiselect.dart';

class QuestionsFiltersPage extends StatefulWidget {
  final String title;
  const QuestionsFiltersPage({Key key, this.title = "Questões"})
      : super(key: key);

  @override
  _QuestionsFiltersPageState createState() => _QuestionsFiltersPageState();
}

class _QuestionsFiltersPageState extends State<QuestionsFiltersPage> {
  var _controller = ExpandableController(initialExpanded: false);

  List _disc = [
    {'id': '1', 'disc': 'Portugues'},
    {'id': '2', 'disc': 'Matemática'},
    {'id': '3', 'disc': 'Rac. Lógico'},
    {'id': '4', 'disc': 'Informática'},
    {'id': '5', 'disc': 'Atualidades'},
    {'id': '6', 'disc': 'Legislação Específica'},
  ];

  List<PopularFilterListData> filtrosListData =
      PopularFilterListData.filtrosList;

  int _value = 25;

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      hasMenu: false,
      isCenterTitle: true,
      title: widget.title,
      iconActionColor: colorDefault,
      widgets: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child:  Column(
              children: <Widget>[
                MultiSelect(
                    hintText: 'Toque para selecionar',
                    autovalidate: false,
                    titleText: 'DISCIPLINAS',
                    validator: (value) {
                      if (value == null) {
                        return 'Selecione uma ou mais opções';
                      }
                      return null;
                    },
                    errorText: 'Selecione uma ou mais opções',
                    dataSource: _disc,
                    textField: 'disc',
                    valueField: 'id',
                    filterable: true,
                    required: true,
                    value: null,
                    change: (value) async {
                      print(value);
                    },
                    onSaved: (value) {
                      if (value == null) return;
                    }),
                Divider(),
                SizedBox(
                  height: 15,
                ),
                Text('Escolha o total de questões'),
                Slider(
                  value: _value.toDouble(),
                  divisions: 100,
                  min: 5.0,
                  max: 100.0,
                  activeColor: Helpers().parseColor(colorDefault),
                  inactiveColor: Colors.grey[400],
                  label: '${_value.round()} questoes',
                  onChanged: (value) {
                    setState(() {
                      _value = value.round();
                    });
                  },
                  semanticFormatterCallback: (value) {
                    return '${_value.round()} questoes';
                  },
                ),
                Text('Resolver ${_value.toString()} questões'),
                SizedBox(
                  height: 15,
                ),
                ExpandablePanel(
                  controller: _controller,
                  header: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Filtros'),
                  ),
                  collapsed: Container(),
                  expanded: Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 10, left: 10, bottom: 20),
                        child: Column(
                          children: getFiltersList(),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                CustomRaisedButtonWidget(
                  btnName: 'FILTRAR',
                  accentColor: Helpers().parseColor(colorDefault),
                  action: () => Modular.to.pushNamed('/questions'),
                )
              ],
            ),
          ),
        ),
      
    );
  }

  List<Widget> getFiltersList() {
    List<Widget> noList = List<Widget>();
    for (var i = 0; i < filtrosListData.length; i++) {
      final filter = filtrosListData[i];
      noList.add(
        Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      filter.titleTxt,
                    ),
                  ),
                  CupertinoSwitch(
                    activeColor: filter.isSelected
                        ? Colors.green
                        : Colors.grey.withOpacity(0.6),
                    onChanged: (value) {},
                    value: filter.isSelected,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
    return noList;
  }
}

class PopularFilterListData {
  String titleTxt;
  bool isSelected;

  PopularFilterListData({
    this.titleTxt = '',
    this.isSelected = false,
  });

  static List<PopularFilterListData> filtrosList = [
    PopularFilterListData(
      titleTxt: 'Apenas as que acertei',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Apenas as que errei',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Apenas as que eu resolvi',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Apenas as que eu não resolvi',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Aleatórias',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Apenas as Certo/Errado',
      isSelected: false,
    ),
  ];
}
