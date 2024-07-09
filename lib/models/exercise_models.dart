class ExerciseModels {
  String id;
  String training;
  String trainingVolume;

  ExerciseModels(
      {required this.id,
      required this.training,
      required this.trainingVolume,
      });
      
      ExerciseModels.fromMap(Map<String, dynamic> map): 
      id = map["id"],
      training = map["training"],
      trainingVolume = map["trainingVolume"];

      Map<String, dynamic> toMap(){
        return{
      "id": id,
      "training": training,
      "trainingVolume": trainingVolume
        };
      }

}
