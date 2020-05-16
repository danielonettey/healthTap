import 'package:flutter/material.dart';



class WomenTipsPage extends StatefulWidget{
  @override
  _WomenTipsPageState createState() => _WomenTipsPageState();
}

class _WomenTipsPageState extends State<WomenTipsPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4f8d88),
        title: Text(
          "Women's Health Tips"
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          // padding: const EdgeInsets.all(8),

          children: <Widget>[
            new ListTile(
              title: Text('1.  Zap your stress.'
                  '\nStress can have significant health consequences, '
                  'from infertility to higher risks of depression, anxiety, and heart disease.'
                  ' Find the stress-reduction method that works for you and stick with it.'
                , style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),

            ),
            new ListTile(
              title: Text('\n2. Stop Dieting'
                  "\nEating healthy doesn't mean you have to forgo your favorite "
                  "glass of wine or a piece of chocolate cake now and then. "
                  "The key is moderation. Get a mix of lean proteins, healthy fats, smart carbs, and fiber.",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
            new ListTile(
              title: Text("\n3. Don't “OD” on calcium."
                  '\nToo much absorbed calcium can increase the risk of '
                  'kidney stones and may even increase the risk of heart disease.'
                  " If you're under 50, shoot for 1,000 milligrams per day, "
                  'while over-50 women should be getting 1,200 milligrams per day mainly through diet --'
                  ' -- about three servings of calcium-rich foods such as milk, salmon, and almonds.'
                , style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),

            ),
            new ListTile(
              title: Text('\n4. Do more than cardio.'
                  '\nWomen need a mix of cardio and resistance or weight-bearing exercise at least'
                  ' three to five times a week to help prevent osteoporosis, heart disease, cancer,'
                  'and diabetes. Exercise also promotes good self-image, which is really'
                  " important to a woman's mental health."
                , style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),

            ),
            new ListTile(
              title: Text('\n5. Think about fertility.'
                  '\nWhile many women have no problem getting pregnant in their late 30s and'
                  " even into their early 40s, a woman's fertility may start to decline as early as 32."
                  '',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),

            ),
            new ListTile(
              title: Text('\n6. Appreciate birth control.'
                  '\nBirth control gets a bad rap, but not only can it keep you from getting pregnant'
                  "before you're ready, studies show it can lower the risk of uterine and ovarian"
                  ' cancer as well as regulate your cycle.\n\n',

                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16,),

              ),
            ),
          ],

        ),
      ),

    );
  }
}