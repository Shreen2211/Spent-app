import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spent/ViewModel/bloc/mainCubit.dart';

class downlist extends StatelessWidget {
  const downlist({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = MainCubit.get(context);
    return Container(
      child: Expanded(
        child: Column(
          children: [Text('Recent transactions'),
            ListView.separated(
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius:10,
                                  child: Image.asset(
                                    '${cubit.newlist[index].img}',
                                    height: 10,
                                  ),
                                ),Text('${cubit.newlist[index].name}'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Text('-\$${cubit.newlist[index].discount}'),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10,);
                },
                itemCount: cubit.newlist.length)
          ],
        ),
      ),
    );
  }
}
