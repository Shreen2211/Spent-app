import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spent/View/componant/DownList.dart';
import 'package:spent/ViewModel/bloc/CounterStates.dart';
import 'package:spent/ViewModel/bloc/mainCubit.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit,counterStates>(builder: (context, state) {
      var cubit=MainCubit.get(context);
      return Expanded(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Color(0xffcecece),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 100,
                child: Row(
                  children: [
                    Image.asset(
                      '${cubit.item[index].img}',
                      height: 80,
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${cubit.item[index].name}',style: TextStyle(fontSize: 22, color: Colors.grey)),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Text('\$${cubit.item[index].discount}',style: TextStyle(fontSize: 20,),),
                              Text('/\$${cubit.item[index].price}',style: TextStyle(fontSize: 18, color: Colors.grey),)
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text('-\$${cubit.item[index].afterDis(cubit.item[index].price, cubit.item[index].discount)}',style: TextStyle(fontSize: 15, color: Colors.red),),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        cubit.addwidget();
                      },
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(Icons.arrow_drop_down,size: 35,),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: cubit.item.length),
      );
    }, listener: (context, state) {

    },);
  }
}
