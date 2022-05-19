import 'package:flutter/material.dart';
import 'package:flutter_course_arabic/app-brain.dart';
  import 'package:rflutter_alert/rflutter_alert.dart';
AppBrain appBrain = AppBrain();
class ExamPage extends StatefulWidget {
  @override
  _ExamPageState createState() => _ExamPageState();
}
class _ExamPageState extends State<ExamPage> {
  List<Widget> answerResult =[];
  int rightAnswer=0;
  void checkAnswers(bool whatUserPicked){
    bool correctAnswer=appBrain.getQuestionAnswer();
    setState(() {
      if(whatUserPicked==correctAnswer){
        rightAnswer++;
        appBrain.mu("sounds/clap.mp3");
        answerResult.add(Padding(
          padding: const EdgeInsets.all(3.0),
          child: Icon(
            Icons.thumb_up,color: Colors.green,
          ),
        ));
      }
      else{
        appBrain.mu("sounds/no.mp3");
        answerResult.add(Padding(
          padding: const EdgeInsets.all(3.0),
          child: Icon(
            Icons.thumb_down,color: Colors.red,
          ),
        ));
      }
      if(appBrain.isFinished()==true){
        Alert(
          context: context,
          title: "انتهاء الاختبار",
          desc: "لقد اجبت على $rightAnswer اسئلة باجابات صحيحة من اصل 10 ",
          buttons: [
            DialogButton(
              child: Text(
                "ابدأ من جديد",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
        appBrain.reset();
        answerResult.clear();
      }
      else{
        appBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("اختبار بسيط"),
        backgroundColor: Colors.brown,
      ),
       body: Padding(
         padding: const EdgeInsets.all(20.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Row(
               children:answerResult,
             ),
             Expanded(
               flex: 5,
               child: Column(
                  children: [
                   Image.asset(appBrain.getQuestionImage()),
                   SizedBox(height: 20,),
                   Text(appBrain.getQuestionText(),
                   textAlign: TextAlign.center,
                   style: TextStyle(fontSize: 25,
                   ),),
                 ],
               ),
             ),//image and question
             Expanded(
                 child:Padding(
               padding: const EdgeInsets.symmetric(vertical: 10),
               child: FlatButton(
                 onPressed: (){
checkAnswers(true);
                 },
                 color: Colors.blue,
                 child: Text("صح",style: TextStyle(
                   fontSize: 25,
                   color: Colors.white,
                 ),),
               ),
             ),
             ),//button 1
             Expanded(
               child:Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10),
                 child: FlatButton(
                   onPressed: (){
                    checkAnswers(false);
                   },
                   color: Colors.deepOrange,
                   child: Text("خطأ",style: TextStyle(
                     fontSize: 25,
                     color: Colors.white,
                   ),),
                 ),
               ),
             ),//button 2
           ],
         ),
       ),
    );
  }
}



