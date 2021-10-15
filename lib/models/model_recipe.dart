class ModelRecipe {
  String? image;
  String? name;
  String? region;
  String? recipeDetail;

  ModelRecipe(this.image, this.name, this.region, this.recipeDetail);

  ModelRecipe.fromJson(Map<String, dynamic> data) {
    this.image = data["image"] ?? "";
    this.name = data["name"] ?? "";
    this.region = data["region"] ?? "";
    this.recipeDetail = data["recipeDetail"] ?? "";
  }

  Map<String, dynamic> toJson() {
    return {
      "image": this.image,
      "name": this.name,
      "region": this.region,
      "recipeDetail": this.recipeDetail
    };
  }

  static List<ModelRecipe> recipeList = [
    ModelRecipe(
        "assets/images/yuvarlama.jpg", "Yuvarlama", "Ege Bölgesi", "Detay1"),
    ModelRecipe(
        "assets/images/kavut.jpg", "Kavut", "Doğu Anadolu Bölgesi", "Detay2"),
    ModelRecipe(
        "assets/images/hamsi.jpg", "Hamsi", "Karadeniz Bölgesi", "Detay3"),
    ModelRecipe("assets/images/adana.jpg", "Adana Kebap",
        "Günedoğu Anadolu Bölgesi", "Detay4"),
    ModelRecipe(
        "assets/images/madimak.jpg", "Madımak", "İç Anadolu Bölgesi", "Detay5"),
  ];
}
