
import 'package:get/get.dart';
import 'package:news_flash/models/NewsModel.dart';
import 'package:news_flash/service/api_service.dart';

class NewsController extends GetxController {

  RxBool isLoading = false.obs;
  RxList<Articles> articleList = <Articles>[].obs;

  @override
  void onInit() {
    super.onInit();
    FetchNews();
  }

  Future<void> FetchNews() async {
    try {
      isLoading.value = true;
      var articles = await AppService.fetchHeadLines();
      articleList.value = articles;
        }finally {
      isLoading.value = false;
    }
  }
}