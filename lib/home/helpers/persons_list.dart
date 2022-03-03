import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bitsports/home/controllers/home_contoller.dart';
import 'package:bitsports/details_page/personView.dart';
import 'package:bitsports/details_page/controllers/PersonController.dart';
import 'package:bitsports/home/model/person.dart';

class PersonsList extends StatelessWidget {
  PersonContoller controllerPerson = Get.find();
  Person person;

  PersonsList(this.person);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            onTap: () {
              Get.to(() => PersonDetailsView(person));
            },
            trailing: Icon(Icons.chevron_right),
            title: Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${person.name}",
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text("${person.species} from ${person.planet?.name}",
                      style:
                          const TextStyle(fontSize: 16, color: Colors.black45)),
                ],
              ),
            )),
        const Divider()
      ],
    );
  }
}
