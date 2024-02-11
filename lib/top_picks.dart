import 'package:flutter/material.dart';

import 'model/tip_picks_model.dart';

class TopPicks extends StatelessWidget {
  const TopPicks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Top Picks'),
      ),
      body: ListView.builder(
          itemCount: topPicksList.length,
          itemBuilder: (context, index){
            final topPicks = topPicksList[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Image.network(topPicks.url ?? 'blob:https://www.facebook.com/05580037-45a8-4b96-af5e-5a39c1586d8a', height: 200,width: 200,),
                  SizedBox(height: 30,),
                  Wrap(
                    children: [
                      Icon(Icons.generating_tokens),
                      topPicks.rating !=null? Text('${topPicks.rating}'): Text('0.0'),
                      Text('${topPicks.title}')
                    ],
                  )
                ],
              ),
            );
          }
      ),
    );
  }
}