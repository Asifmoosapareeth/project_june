import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
void main(){
  runApp(MaterialApp(home: ReadMoreless(),));
}

class ReadMoreless extends StatelessWidget {
  const ReadMoreless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('read more read less'),),
      body: Column(
        children: [
          ReadMoreText('Thanos was right.'
              'power is power. thats my secret cap , i am always angry.I am vengence.Asif moosa is the greatest personality in the history of the luminar.'
              'He has great coding skill and feared by all. powerful person create place powrful.Thanos was right.'
              'power is power. thats my secret cap , i am always angry.I am vengence.',
         trimLines: 3,
          preDataText: 'Asif Moosa',
          preDataTextStyle: TextStyle(fontWeight: FontWeight.w700,color: Colors.yellow),
          trimMode: TrimMode.Line,
            trimCollapsedText: 'read less....',
            trimExpandedText: 'read more....',
          ),

        ],
      ),
    );
  }
}
