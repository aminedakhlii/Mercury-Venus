import 'package:flutter/material.dart';
import 'package:tinder_app_flutter/ui/screens/questions/questions.dart';
import 'package:tinder_app_flutter/ui/widgets/bordered_text_field.dart';

import '../../widgets/rounded_button.dart';

class QuestionView extends StatefulWidget {
  Question question;
  final Function() onChanged;
  QuestionView({@required this.onChanged,this.question});

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  bool empty = false; 

  next(int answer, context) {
    int index = questions.indexOf(widget.question);
    Question.answers[index] = answer;
    if(index == questions.length - 1){
      setState(() {
        empty = true;
        Question.done = true;
        widget.onChanged();
      });
    } else {
      setState(() {
        widget.question = questions[index+1];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        if(!empty)
        Container(
          child: Column(
            children: [
              Text(
                widget.question.question,
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          ),
        ),
        SizedBox(height: 25),
        if(!empty)
        RoundedButton(
          text: widget.question.a,
          onPressed: (){
            next(0,context);
          }
        ),
        SizedBox(height: 20),
        if(!empty)
        RoundedButton(
          text: widget.question.b,
          onPressed: (){
            next(1,context);
          }
        ),
        SizedBox(height: 20),
        if(!empty)
        RoundedButton(
          text: widget.question.c,
          onPressed: (){
            next(2,context);
          }
        ),
        SizedBox(height: 20),
        if(!empty)
        RoundedButton(
          text: widget.question.d,
          onPressed: (){
            next(3,context);
          }
        )
      ],
    );
  }
}
