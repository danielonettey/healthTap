import 'package:flutter/material.dart';

class ExerciseTipsPage extends StatefulWidget{
  @override
  _ExerciseTipsPageState createState() => _ExerciseTipsPageState();
}

class _ExerciseTipsPageState extends State<ExerciseTipsPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6B9DA8),
        title: Text(
          'Exercise Tips'
        ),
      ),
      body: Column( 
        // margin: const EdgeInsets.all(8),
        

        children: <Widget>[
          new ListTile(
            title: Text('1. Health issues? Get medical clearance first.'
            '\n If you have health concerns such as heart disease, asthma, diabetes,'
            ' or high blood pressure, talk with your doctor before you start to exercise.',
            style: TextStyle(fontWeight: FontWeight.w600),),
  
          ),
          
           new ListTile(
            title: Text('2. Ditch the all-or-nothing attitude.'
            '\nYou don’t have to spend hours in a gym or force yourself into monotonous or'
            ' painful activities you hate to experience the physical and emotional benefits of exercise.'
            '  A little exercise is better than nothing.'
            , style: TextStyle(fontWeight: FontWeight.w600),
            ),
            
          ),
          new ListTile(
            title: Text('3. Be kind to yourself.'
            '\nResearch shows that self-compassion increases the likelihood that you’ll succeed in any given endeavor.'
            "So, don’t beat yourself up about your body, your current fitness level, or your supposed lack of willpower"
            ' that will do is demotivate you. Instead, look at your past mistakes and unhealthy choices as opportunities to learn and grow.',
            style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          new ListTile(
            title: Text('4. Check your expectations.'
            '\nYou didn’t get out of shape overnight, and you’re not going to instantly transform your body either.'
            ' Expecting too much, too soon only leads to frustration.'
            ' Try not to be discouraged by what you can’t accomplish or how far you have to go to reach your fitness goals'
            ' Instead of obsessing over results, focus on consistency.'
            , style: TextStyle(fontWeight: FontWeight.w600),),

          ),
          
          new ListTile(
            title: Text('5.Drink plenty of water.'
            '\n Your body performs best when it’s properly hydrated. '
            ' Failing to drink enough water when you are exerting yourself over a prolonged period of time, '
            'especially in hot conditions, can be dangerous.',
            style: TextStyle(fontWeight: FontWeight.w600),),
      
          ),
          new ListTile(
            title: Text('6. Listen to your body.'
            '\nIf you feel pain or discomfort while working out, stop!'
            ' If you feel better after a brief rest, you can slowly and gently'
            ' resume your workout. But don’t try to power through pain.'
            ' That’s a surefire recipe for injury.',
            style: TextStyle(fontWeight: FontWeight.w600,),
            
          ),
          ),
        ],

      ),


    );
  }
}