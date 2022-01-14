import 'package:money_manager/models/category/category_model.dart';

abstract class CategoryDbFunctions {
  List<CategoryModel> getcCategories();
  Future<void> insertCategory(CategoryModel value);
}

class CategoryDb implements CategoryDbFunctions {
  @override
  Future<void> insertCategory(CategoryModel value) async {
    
  }

 // @override
  List<CategoryModel> getcCategories() {
    // TODO: implement getcCategories
    throw UnimplementedError();
  }
}
