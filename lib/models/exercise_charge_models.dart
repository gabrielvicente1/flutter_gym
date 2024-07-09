class ExerciseChargeModels {
  String id;
  String value;

  ExerciseChargeModels({required this.id, required this.value});

  ExerciseChargeModels.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        value = map["value"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "value": value,
    };
  }
}
