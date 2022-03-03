import 'package:flutter/material.dart';
import 'package:bitsports/home/controllers/home_contoller.dart';
import 'package:get/get.dart';
import 'package:bitsports/details_page/controllers/PersonController.dart';
import 'package:bitsports/home/helpers/loading.dart';
import 'package:bitsports/home/helpers/persons_list.dart';


class Home extends StatelessWidget {
  HomeController controllerHome = Get.put(HomeController());
  PersonContoller controllerPerson = Get.put(PersonContoller());


  @override
  Widget build(BuildContext context) {
    var isError = Get.find<HomeController>().isError.obs;
      print("controllerHome.isError.value $isError");

    return Scaffold(
      appBar: AppBar(
        title: Obx(() => controllerHome.page == 1
            ? const Text("People of Star Wars")
            : const Text("People")),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Obx(() => controllerHome.isError.isTrue
                ? Center(
                    child: Container(
                      child: const Text(
                        "Failed to Load Data",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                    ),
                  )
                : Container()),
            Expanded(
                child: Obx(() => ListView.builder(
                    controller: controllerHome.scrollController.value,
                    itemCount: controllerHome.people.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (controllerHome.people.length - 1 == index) {
                        return Column(
                          children: [
                            PersonsList(controllerHome.people[index]),
                            Obx(() => controllerHome.isLoading.value
                                ? LoadingSpinner()
                                : Container())
                          ],
                        );
                      } else {
                        return PersonsList(controllerHome.people[index]);
                      }
                    }))),
          ],
        ),
      ),
    );
  }

  Future<bool> _loadMore() async {
    controllerHome.loadMore();
    return true;
  }
}
