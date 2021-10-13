class ModelRecipe {
  String? image;
  String? name;
  String? region;

  ModelRecipe(this.image, this.name, this.region);

  ModelRecipe.fromJson (Map<String, dynamic> data) {
    this.image = data["image"] ?? "";
    this.name = data["name"] ?? "";
    this.region = data["region"] ?? "";
  }

  Map<String, dynamic> toJson(){
    return {
      "image":this.image,
      "name":this.name,
      "region":this.region

    };
  }
}
