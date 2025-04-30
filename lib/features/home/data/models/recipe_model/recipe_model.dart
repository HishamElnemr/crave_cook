class RecipeModel {
  int? id;
  String? image;
  String? imageType;
  String? title;
  int? readyInMinutes;
  int? servings;
  String? sourceUrl;
  bool? vegetarian;
  bool? vegan;
  bool? glutenFree;
  bool? dairyFree;
  bool? veryHealthy;
  bool? cheap;
  bool? veryPopular;
  bool? sustainable;
  bool? lowFodmap;
  int? weightWatcherSmartPoints;
  String? gaps;
  dynamic preparationMinutes;
  dynamic cookingMinutes;
  int? aggregateLikes;
  double? healthScore;
  String? creditsText;
  dynamic license;
  String? sourceName;
  double? pricePerServing;
  String? summary;
  List<dynamic>? cuisines;
  List<dynamic>? dishTypes;
  List<dynamic>? diets;
  List<dynamic>? occasions;
  double? spoonacularScore;
  String? spoonacularSourceUrl;

  RecipeModel({
    this.id,
    this.image,
    this.imageType,
    this.title,
    this.readyInMinutes,
    this.servings,
    this.sourceUrl,
    this.vegetarian,
    this.vegan,
    this.glutenFree,
    this.dairyFree,
    this.veryHealthy,
    this.cheap,
    this.veryPopular,
    this.sustainable,
    this.lowFodmap,
    this.weightWatcherSmartPoints,
    this.gaps,
    this.preparationMinutes,
    this.cookingMinutes,
    this.aggregateLikes,
    this.healthScore,
    this.creditsText,
    this.license,
    this.sourceName,
    this.pricePerServing,
    this.summary,
    this.cuisines,
    this.dishTypes,
    this.diets,
    this.occasions,
    this.spoonacularScore,
    this.spoonacularSourceUrl,
  });

  factory RecipeModel.fromJson(Map<String, dynamic> json) => RecipeModel(
        id: json['id'] as int?,
        image: json['image'] as String?,
        imageType: json['imageType'] as String?,
        title: json['title'] as String?,
        readyInMinutes: json['readyInMinutes'] as int?,
        servings: json['servings'] as int?,
        sourceUrl: json['sourceUrl'] as String?,
        vegetarian: json['vegetarian'] as bool?,
        vegan: json['vegan'] as bool?,
        glutenFree: json['glutenFree'] as bool?,
        dairyFree: json['dairyFree'] as bool?,
        veryHealthy: json['veryHealthy'] as bool?,
        cheap: json['cheap'] as bool?,
        veryPopular: json['veryPopular'] as bool?,
        sustainable: json['sustainable'] as bool?,
        lowFodmap: json['lowFodmap'] as bool?,
        weightWatcherSmartPoints: json['weightWatcherSmartPoints'] as int?,
        gaps: json['gaps'] as String?,
        preparationMinutes: json['preparationMinutes'] as dynamic,
        cookingMinutes: json['cookingMinutes'] as dynamic,
        aggregateLikes: json['aggregateLikes'] as int?,
        healthScore: json['healthScore'] as double?,
        creditsText: json['creditsText'] as String?,
        license: json['license'] as dynamic,
        sourceName: json['sourceName'] as String?,
        pricePerServing: (json['pricePerServing'] as num?)?.toDouble(),
        summary: json['summary'] as String?,
        cuisines: json['cuisines'] as List<dynamic>?,
        dishTypes: json['dishTypes'] as List<dynamic>?,
        diets: json['diets'] as List<dynamic>?,
        occasions: json['occasions'] as List<dynamic>?,
        spoonacularScore: (json['spoonacularScore'] as num?)?.toDouble(),
        spoonacularSourceUrl: json['spoonacularSourceUrl'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'imageType': imageType,
        'title': title,
        'readyInMinutes': readyInMinutes,
        'servings': servings,
        'sourceUrl': sourceUrl,
        'vegetarian': vegetarian,
        'vegan': vegan,
        'glutenFree': glutenFree,
        'dairyFree': dairyFree,
        'veryHealthy': veryHealthy,
        'cheap': cheap,
        'veryPopular': veryPopular,
        'sustainable': sustainable,
        'lowFodmap': lowFodmap,
        'weightWatcherSmartPoints': weightWatcherSmartPoints,
        'gaps': gaps,
        'preparationMinutes': preparationMinutes,
        'cookingMinutes': cookingMinutes,
        'aggregateLikes': aggregateLikes,
        'healthScore': healthScore,
        'creditsText': creditsText,
        'license': license,
        'sourceName': sourceName,
        'pricePerServing': pricePerServing,
        'summary': summary,
        'cuisines': cuisines,
        'dishTypes': dishTypes,
        'diets': diets,
        'occasions': occasions,
        'spoonacularScore': spoonacularScore,
        'spoonacularSourceUrl': spoonacularSourceUrl,
      };
}
