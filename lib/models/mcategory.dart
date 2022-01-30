import 'dart:convert';

class MCategory {
  late String categoryName;
  late String subCategoryName;
  late int isActive;

  String toJson() {
    var categoryMap = {'name': this.categoryName, 'isActive' : this.isActive};
    var data = jsonEncode(categoryMap);
    return data;
  }

  void mPost(){
    
  }
}
