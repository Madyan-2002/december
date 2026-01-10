import 'package:december/Quiz_App/Data/answer_model.dart';

class QuestionModel {
   String question;
 List <AnswerModel> answer;    //Composition التركيب

   QuestionModel({required this.question, required this.answer});
}