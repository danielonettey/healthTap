import 'package:flutter/material.dart';


class MentalHealthTipsPage extends StatefulWidget{
  @override
  _MentalHealthTipsPageState createState() => _MentalHealthTipsPageState();
}

class _MentalHealthTipsPageState extends State<MentalHealthTipsPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6B9DA8),
        title: Text(
          'Mental Health Tips'
        ),
      ),
      body: Column( 
        // margin: const EdgeInsets.all(8),
        

        children: <Widget>[
           new ListTile(
            title: Text('1. Get plenty of sleep.'
            '\nSleep is really important for our physical and mental health.'
            ' Sleep helps to regulate the chemicals in our brain that transmit information.'
            " These chemicals are important in managing our moods and emotions. If we don't get enough sleep, we can start to feel depressed or anxious."
            , style: TextStyle(fontWeight: FontWeight.w600),
            ),
            
          ),
          new ListTile(
            title: Text('2. Eat well.'
            "\nEating well isn't just important for our bodies, but it's also important for our minds."  
            'Certain mineral deficiencies, such as iron and vitamin B12 deficiencies, can give us a low mood. Try to eat a balanced diet. '
            "If you find you're a particularly stressed or anxious person, you should try limiting or cutting out caffeine as this can make you feel jittery and anxious.",
            style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          new ListTile(
            title: Text('3. Get plenty of sunlight.'
            '\nSunlight is a great source of vitamin D. Vitamin D is a really important vitamin for our bodies and our brains.'
            ' It helps our brains to release chemicals which improve our mood, like endorphins and serotonin. '
            'Try to go out in the sun when you can, but make sure you keep your skin and eyes safe. 30 minutes to two hours a day of sunlight is ideal.'
            '', style: TextStyle(fontWeight: FontWeight.w600),),

          ),
          new ListTile(
            title: Text('4. Manage stress.'
            '\nStress is often unavoidable, but knowing what triggers your stress'
            ' and knowing how to cope is key in maintaining good mental health.'
            'Try to manage your responsibilities and worries by making a list or a schedule of when you can resolve each issue.'
            , style: TextStyle(fontWeight: FontWeight.w600),),
  
          ),
          new ListTile(
            title: Text('5. Activity and exercise.'
            '\nActivity and exercise are essential in maintaining good mental health. '
            'Being active not only gives you a sense of achievement, but it boosts the chemicals in your brain that help put you in a good mood.'
            ' Exercising can help eliminate low mood, anxiety, stress and feeling tired and lazy. It is also linked to living a longer life.',
            style: TextStyle(fontWeight: FontWeight.w600),),
      
          ),
          new ListTile(
            title: Text('6. Connect with others and be sociable.'
            '\nMake an effort to maintain good relationships and talk to people whenever you get the chance.'
            'Having friends is important not just for your self-esteem,'
            " but also for providing support when you're not feeling too great."
            'Research has found that talking to others for just ten minutes can improve memory and test scores!',
            style: TextStyle(fontWeight: FontWeight.w600,),
            
          ),
          ),
        ],

      ),


    );
  }
}