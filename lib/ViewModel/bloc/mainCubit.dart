import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spent/Model/ItemData/ItemData.dart';
import 'package:spent/View/componant/DownList.dart';
import 'CounterStates.dart';

class MainCubit extends Cubit<counterStates> {
  MainCubit() : super(initState());

  static MainCubit get(context) => BlocProvider.of<MainCubit>(context);

  List<ItemData> item = [
    ItemData(
      name: 'Girocoried',
      discount: 21,
      img: 'assets/image/money.jpeg',
      price: 400,
    ),
    ItemData(
      name: 'Girocoried',
      discount: 21,
      img: 'assets/image/money.jpeg',
      price: 400,
    ),
    ItemData(
      name: 'Girocoried',
      discount: 21,
      img: 'assets/image/money.jpeg',
      price: 400,
    ),
    ItemData(
      name: 'Girocoried',
      discount: 21,
      img: 'assets/image/money.jpeg',
      price: 400,
    ),
    ItemData(
      name: 'Girocoried',
      discount: 21,
      img: 'assets/image/money.jpeg',
      price: 400,
    ),
    ItemData(
      name: 'Girocoried',
      discount: 21,
      img: 'assets/image/money.jpeg',
      price: 400,
    ),
    ItemData(
      name: 'Girocoried',
      discount: 21,
      img: 'assets/image/money.jpeg',
      price: 400,
    ),
    ItemData(
      name: 'Girocoried',
      discount: 21,
      img: 'assets/image/money.jpeg',
      price: 400,
    ),
  ];
 List<DownListData> newlist=[
   DownListData(
     discount: 8.99,img:'assets/image/money.jpeg' ,name: 'Tesco',
   ),DownListData(
     discount: 8.99,img:'assets/image/money.jpeg' ,name: 'Tesco',
   ),DownListData(
     discount: 8.99,img:'assets/image/money.jpeg' ,name: 'Tesco',
   ),DownListData(
     discount: 8.99,img:'assets/image/money.jpeg' ,name: 'Tesco',
   ),DownListData(
     discount: 8.99,img:'assets/image/money.jpeg' ,name: 'Tesco',
   ),DownListData(
     discount: 8.99,img:'assets/image/money.jpeg' ,name: 'Tesco',
   ),
 ];

 void addwidget(){
   downlist();
   emit(add());
 }
}
