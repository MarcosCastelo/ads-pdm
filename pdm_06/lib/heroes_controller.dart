import 'package:flutter/widgets.dart';
import 'package:pdm_06/hero_model.dart';

class HeroesController extends ChangeNotifier {
  List<HeroModel> heroes = [
    HeroModel(name: "Thor"),
    HeroModel(name: "Iron man"),
    HeroModel(name: "Batman"),
    HeroModel(name: "Captain america"),
    HeroModel(name: "Super man"),
  ];

  checkFavorite(HeroModel model) {
    model.isFavorite = !model.isFavorite;
    notifyListeners();
  }
}
