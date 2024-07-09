import 'package:flutter/material.dart';
import 'package:gym/models/exercise_charge_models.dart';
import 'package:gym/models/exercise_models.dart';
import 'package:gym/models/exercise_training_models.dart';

class ExerciseScreen extends StatelessWidget {
  ExerciseScreen({super.key});

  final ExerciseModels exerciseModels =
      ExerciseModels(id: "EX001", training: "Costas", trainingVolume: "4x12");

  final List<ExerciseTrainingModels> listExerciseTraining = [
    ExerciseTrainingModels(id: "EX0001", name: "01 - Remada curvada"),
    ExerciseTrainingModels(id: "EX0002", name: "02 - Remada cavalinho"),
  ];

  final List<ExerciseChargeModels> listExerciseCharge = [
    ExerciseChargeModels(id: "EX0001", value: "120kg"),
    ExerciseChargeModels(id: "EX0002", value: "110kg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF59876D),
      appBar: AppBar(
        title: 
        Text(exerciseModels.training, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
         backgroundColor: Color(0xFF59876D),
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 72,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(32))),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {print("foi clicado")},
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListView(
          children: [
            const Text("Exercício:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listExerciseTraining.length, (index) {
                ExerciseTrainingModels exerciseFist =
                    listExerciseTraining[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(exerciseFist.name),
                  leading: Icon(Icons.double_arrow_rounded),
                );
              }),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(color: Colors.black),
            ),
            const Text("Volume de treino:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(exerciseModels.trainingVolume),
            leading: Icon(Icons.double_arrow_rounded),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(color: Colors.black),
            ),
            const Text("Carga:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listExerciseCharge.length, (index) {
                ExerciseTrainingModels exerciseFist =
                    listExerciseTraining[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                      "${exerciseFist.name} - ${listExerciseCharge[index].value}"),
                  leading: Icon(Icons.double_arrow_rounded),
                  trailing: IconButton(icon: Icon(Icons.comment, color: Colors.grey), onPressed: (){
                 print("ALTERAR ${exerciseFist.name} - ${listExerciseCharge[index].value}");

                  }),
                );
              }),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
