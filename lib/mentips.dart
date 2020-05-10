import 'package:flutter/material.dart';


class MenTipsPage extends StatefulWidget{
  @override
  _MenTipsPageState createState() => _MenTipsPageState();
}

class _MenTipsPageState extends State<MenTipsPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6B9DA8),
        title: Text(
          "Men's Health Tips"
        ),
      ),
      body: Column( 
        // margin: const EdgeInsets.all(8),
        

        children: <Widget>[
           new ListTile(
            title: Text('1. Eat a healthy, well-balanced diet.'
            "\nEating a diet that's low in fat (less than 7 percent of calories should come from saturated fats)," 
            " cholesterol, and salt, and packed with fresh fruits and vegetables "
            "(two cups of fruit per day; three cups of vegetables per day for men up to age 50 "
            "and two and a half cups for men aged 51 and over), whole grains "
            'and fiber can help improve your health, prevent heart disease, diabetes and certain cancers.'
            , style: TextStyle(fontWeight: FontWeight.w600),
            ),
            
          ),
          new ListTile(
            title: Text('2. Get moving. '
            '\nTry to get 30 minutes of moderate physical activity on most days of the week.'
            ' Taking a walk, jogging, swimming and mowing the lawn all count.',
            style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          
          new ListTile(
            title: Text('3. Lose the gut for good.'
            "\nIt's important to maintain a healthy weight. Excess weight, especially around the waist"
            ', can be hard on your body. Carrying too much body fat forces your heart'
            '  to work harder and increases your chances of heart disease and stroke,'
            ' even if you have no other risk factors! So, try to curb weight gain as you age.'
            , style: TextStyle(fontWeight: FontWeight.w600),),

          ),
          new ListTile(
            title: Text('4. Drink alcohol in moderation.'
            '\nIf you drink alcohol, limit your consumption to no more than two drinks per day.'
            , style: TextStyle(fontWeight: FontWeight.w600),),
  
          ),
          new ListTile(
            title: Text("5.Don't use tobacco." 
            "\nTobacco smoke contains more than 4,000 chemicals and is a known cause of cancer."
            " Smoking also increases the likelihood of high blood pressure, "
            "heart disease, lung problems and other health problems.",
            style: TextStyle(fontWeight: FontWeight.w600),),
      
          ),
          new ListTile(
            title: Text('6. Practice safe sex.'
            '\nIf you are sexually active, remember to practice safe sex.',
            style: TextStyle(fontWeight: FontWeight.w600,),
            
          ),
          ),
        ],

      ),

    );
  }
}