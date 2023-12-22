import 'package:counter/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    final count=Provider.of<Changes>(context);
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: const Text("Home",style: TextStyle(color: Colors.white),)),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text('Your Count',style: TextStyle(fontSize: 20,),), Text(count.counetr.toString(),style: const TextStyle(fontSize: 25),),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){count.decrement();}, child:const Text('decrement')),
              TextButton(onPressed: (){count.incriment();}, child:const Text('increment')),
            ],
          )
          ],
        ),
      ),
    );
  }
}
