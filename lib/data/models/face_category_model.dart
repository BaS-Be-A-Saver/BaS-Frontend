class FaceCategoryModel {
  final String name;
  final bool active;

  FaceCategoryModel({required this.name, required this.active});
}

List faceCategoryData = [
  FaceCategoryModel(name: "피부", active: true),
  FaceCategoryModel(name: "눈", active: false),
  FaceCategoryModel(name: "코", active: false),
  FaceCategoryModel(name: "입", active: false),
];
