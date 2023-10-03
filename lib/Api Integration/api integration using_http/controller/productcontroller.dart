import 'package:get/get.dart';
import 'package:project_june/Api%20Integration/api%20integration%20using_http/service/api_service.dart';

class ProductController extends GetxController{
  var isLoading = true.obs;
  var productList = [].obs;

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  void getProducts() async{
    try{
      isLoading(true);
      var products = await HttpService.fetchProductus();
      if(products != null){
        productList.value=products;
      }
    }catch(e){
      print(e);
    }finally{
      isLoading(false);
    }
  }

}