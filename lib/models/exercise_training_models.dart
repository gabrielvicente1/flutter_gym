class ExerciseTrainingModels {
  String id;
  String name;

  ExerciseTrainingModels(
      {required this.id,
        required this.name});
      
      ExerciseTrainingModels.fromMap(Map<String, dynamic> map): 
      id = map["id"], 
      name = map["name"];

      Map<String, dynamic> toMap(){
        return{
      "id" : id,
      "name": name,
      };
      }
      
}