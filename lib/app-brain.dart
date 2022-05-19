import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_course_arabic/questions.dart';

class AppBrain{
  int _questionNumber=0;
  List<Question> _questionsGroup=[
    Question(
      questionText:"عدد الكواكب فى المجموعة الشمسية هو 8 كواكب ",
      questionImage: "assets/images/ك.jpg",
      questionAnswer: true,
    ),
    Question(
      questionText:"القطط حيوانات لاحمة ",
      questionImage: "assets/images/cats.jpg",
      questionAnswer: true,
    ),
    Question(
      questionText:"الصين موجودة فى القارة الافريقية ",
      questionImage: "assets/images/china.jpg",
      questionAnswer: false,
    ),
    Question(
      questionText:"الارض مسطحة وليست كروية",
      questionImage: "assets/images/earth.jpg",
      questionAnswer: false,
    ),
    Question(
      questionText: "نهر النيل يوجد فى مصر ؟",
      questionImage:"assets/images/nile.jpg",
        questionAnswer:true,
    ),
    Question(
      questionText: "هذه تفاحة حمراء ؟",
      questionImage:"assets/images/app.jpg",
      questionAnswer:true,
    ),
    Question(
      questionText: "انه سبونش بوب الاصفر ؟",
      questionImage:"assets/images/Sponsh.png",
      questionAnswer:true,
    ),
    Question(
      questionText: " يوجد 20 هرم فى هذه الصورة ؟",
      questionImage:"assets/images/pyra.png",
      questionAnswer:false,
    ),
    Question(
      questionText: "لون هذه السيارة اخضر ؟",
      questionImage:"assets/images/car.png",
      questionAnswer:false,
    ),
    Question(
      questionText: " عدد ساعات اليوم 24 ؟",
      questionImage:"assets/images/Watch.jpg",
      questionAnswer:true,
    ),
  ];
  void nextQuestion(){
    if(_questionNumber<_questionsGroup.length-1){
      _questionNumber++;
    }
  }
  String getQuestionText( ){
    return _questionsGroup[_questionNumber].questionText;
  }
  String getQuestionImage( ){
    return _questionsGroup[_questionNumber].questionImage;
  }
  bool getQuestionAnswer(){
    return _questionsGroup[_questionNumber].questionAnswer;
  }
  bool isFinished(){
    if(_questionNumber>=_questionsGroup.length-1){
      return true;
    }
    else{
      return false;
    }
  }
  void reset(){
    _questionNumber=0;
  }
  void mu(String bb) {
    final player=AudioCache();
    player.play(bb);
  }
}