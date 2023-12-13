import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/api.dart';
import 'package:flutter_application_1/entity.dart';

class Model extends ChangeNotifier {
  final api = Api();

  EntityRm? _entityRM;

  EntityRm? get entityRM => _entityRM;

  void getList() async {
    _entityRM = await api.getAll();
    notifyListeners();
  }
}
