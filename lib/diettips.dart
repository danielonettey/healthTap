import 'package:flutter/material.dart';

class DietTipsPage extends StatefulWidget {
  @override
  _DietTipsPageState createState() => _DietTipsPageState();
  
}

class _DietTipsPageState extends State<DietTipsPage> {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4f8d88),
        title: Text(
          'Diet and Nutrition Tips'
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // margin: const EdgeInsets.all(8),
          children: <Widget>[
            new ListTile(
              title: Text('1. Base your meals on higher fibre starchy carbohydrates.'
                  '\n Starchy carbohydrates should make up just over a third of the food you eat.'
                  'They include potatoes, bread, rice, pasta and cereals.'
                  'Choose higher fibre or wholegrain varieties, such as wholewheat pasta, brown rice or potatoes with their skins on.'
                , style: TextStyle(fontWeight: FontWeight.w600),),
              // leading: Text('Starchy carbohydrates should make up just over a third of the food you eat. They include potatoes, bread, rice, pasta and cereals.'),
            ),
            new ListTile(
              title: Text('2. Eat lots of fruit and vegetables'
                  "\nIt's recommended that you eat at least 5 portions of a variety of fruit and veg every day."
                  'They can be fresh, frozen, canned, dried or juiced.',
                style: TextStyle(fontWeight: FontWeight.w600),),
              // leading: Text('Starchy carbohydrates should make up just over a third of the food you eat. They include potatoes, bread, rice, pasta and cereals.'),
            ),
            new ListTile(
              title: Text('3. Eat more fish, including a portion of oily fish'
                  '\nFish is a good source of protein and contains many vitamins and minerals.'
                  'Aim to eat at least 2 portions of fish a week, including at least 1 portion of oily fish.', style: TextStyle(fontWeight: FontWeight.w600),),
              // leading: Text('Starchy carbohydrates should make up just over a third of the food you eat. They include potatoes, bread, rice, pasta and cereals.'),
            ),
            new ListTile(
              title: Text('4. Cut down on saturated fat and sugar'
                  "\nYou need some fat in your diet, but it's important to pay attention to the amount and type of fat you're eating."
                , style: TextStyle(fontWeight: FontWeight.w600),),
              // leading: Text('Starchy carbohydrates should make up just over a third of the food you eat. They include potatoes, bread, rice, pasta and cereals.'),
            ),
            new ListTile(
              title: Text('5. Eat less salt: no more than 6g a day for adults'
                  '\nEating too much salt can raise your blood pressure.'
                  'People with high blood pressure are more likely to develop heart disease or have a stroke.',
                style: TextStyle(fontWeight: FontWeight.w600),),
              // leading: Text('Starchy carbohydrates should make up just over a third of the food you eat. They include potatoes, bread, rice, pasta and cereals.'),
            ),
            new ListTile(
              title: Text('6. Get active and be a healthy weight.'
                  '\nAs well as eating healthily, regular exercise may help reduce your risk of getting serious health conditions.'
                  "It's also important for your overall health and wellbeing.",
                style: TextStyle(fontWeight: FontWeight.w600,),

                // leading: Text('Starchy carbohydrates should make up just over a third of the food you eat. They include potatoes, bread, rice, pasta and cereals.'),
              ),
            ),
          ],

        ),
      ),

    );
  }

}