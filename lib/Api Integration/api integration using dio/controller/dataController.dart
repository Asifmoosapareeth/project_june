
import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:project_june/Api%20Integration/api%20integration%20using%20dio/Service/dio_service.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../model/datamodell.dart';

class DataController extends GetxController{
  RxList<DataModel>datas= RxList();
  RxBool isLoading =true.obs;
  RxBool isListatDown=false.obs;
  RxBool isNetConnected = true.obs;
  var url = 'https://jsonplaceholder.typicode.com/posts';
  var itemcontroller= ItemScrollController();
  
  isInternetConnected()async{
    isNetConnected.value = await InternetConnectionChecker().hasConnection;
  }
  // to get all datas from api
  fetchData()async{
    isInternetConnected();
    isLoading.value=true;
    var response=await DioService().getData(url);
    if(response.statusCode==200){
      response.data.forEach((element){
        datas.add(DataModel.fromJson(element));
      });
      isLoading.value= false;
    }
  }
  scrollToDown(){
   itemcontroller.scrollTo(index: datas.length,
       duration: Duration(seconds: 3),
     curve: Curves.elasticOut
   );
   isListatDown.value=true;
  }

  //scroll list view to up
ScrollToUp(){
    itemcontroller.scrollTo
      (index: 0, duration: Duration(seconds: 3),
    curve: Curves.bounceInOut);
    isListatDown.value=false;
}
@override
  void onInit() {
    fetchData();
    isInternetConnected();
    super.onInit();
  }

}