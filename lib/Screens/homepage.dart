import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spent/View/componant/Itemlist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Hi Shreen',style: TextStyle(color: Colors.black,fontSize: 30),),
        actions: const [
          Icon(Icons.commit,color: Colors.black,size: 35,),
          SizedBox(
            width: 10.0,
          ),
          Icon(Icons.more_vert,color: Colors.black,size: 35,),
        ],
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [const Text(
            'You\'v already Spent',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  border:
                  Border.all(color: const Color(0xFFD2CFCF), width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/image/money.jpeg',
                    height: 35,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    '\$1 123,22',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'and there\'s still 18 daysleft until payday',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(
              height: 25,
            ),
            ItemList(),
          ],
        ),
      ),
    );
  }
}

