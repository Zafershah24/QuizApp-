import 'Questions.dart';
class Quizbrain
{
  int _quesno =0;
List <Question> _questionbank=[
Question (q:' Lightning never strikes in the same place twice.',a: false),
Question (q: 'The strongest muscle in proportion to its size in the human body is the tongue',a: true),
Question (q:'A cockroach will live for nine days without its head, before it starves to death ',a:true),
Question(q:'Goldfish only have a memory of three seconds.',a:false),
Question(q:' Your fingernails and hair keep growing after you die.',a:false),
Question(q:'There are more cells of bacteria in your body than there are human cells. ',a:true),
Question(q:' Birds are dinosaurs.',a:true),
Question(q:'Batman fights crime in retaliation for the destruction of his planet.',a:false),

Question(q:'A 12-carat gold piece is considered half gold.',a:true),
Question(q:'In Dante\'s Inferno, the deepest ring of Hell is reserved for murderers.',a:false),
Question(q:'Michael Jackson\'s Thriller is the greatest-selling album of all time.',a:true),
Question(q:'A right triangle can never be equilateral.',a:true),
Question(q:'Snow White\’s seven dwarfs all worked as lumberjacks.',a:false),
Question(q:'There are seven red stripes in the United States flag.',a:true),
Question(q:'No bird can fly backwards.',a:false),
Question(q:'Albert Einstein was awarded the Nobel Prize in Physics.',a:true),
];

void getquesno(){
  if ( _quesno <_questionbank.length-1)
    {_quesno++;}
}
String getquestionText (){
  return _questionbank[_quesno].questionText;
}
bool getquestionAns (){
  return _questionbank[_quesno].questionAns;
}


bool isFinished() {
  if ( _quesno >= _questionbank.length - 1) {
    //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

    print('Now returning true');
    return true;

  } else {
    return false;
  }
}

//TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
void reset() {
  _quesno = 0;
}
}

