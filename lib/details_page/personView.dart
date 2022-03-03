import 'package:flutter/material.dart';
import 'package:bitsports/home/model/person.dart';

class PersonDetailsView extends StatelessWidget {
  Person person;

  PersonDetailsView(this.person);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${person.name}"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                child: Container(
                margin: const EdgeInsets.only(top: 20),
                 child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: const Text(
                      "General Information",
                      style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    margin: const EdgeInsets.only(bottom: 20),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 15, top: 15),
                        child: Row(
                          children: [
                            const Text(
                              "Eye Color",
                              style: TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "${person.eyeColor}",
                              style: const TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      const Divider(color: Colors.grey),
                      Container(
                        margin: const EdgeInsets.only(bottom: 15, top: 15),
                        child: Row(
                          children: [
                            const Text(
                              "Hair Color",
                              style: TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "${person.hairColor}",
                              style: const TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      const Divider(color: Colors.grey),
                      Container(
                        margin: const EdgeInsets.only(bottom: 15, top: 15),
                        child: Row(
                          children: [
                            const Text(
                              "Skin Color",
                              style: TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "${person.skinColor}",
                              style: const TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      const Divider(color: Colors.grey),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        child: Row(
                          children: [
                            const Text(
                              "Birth Year",
                              style: TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "${person.birth}",
                              style: const TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      const Divider(color: Colors.grey)
                    ],
                  )
                ],
              ),
            )),
            this.person.vehicles!.length > 0
                ? Expanded(
                    child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const Text(
                            "Vehicles",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          margin: const EdgeInsets.only(bottom: 20),
                        ),
                        Expanded(
                            child: ListView.builder(
                                itemCount: person.vehicles?.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(bottom: 10, top: 10),
                                          child: Text(
                                            "${person.vehicles?[index].name}",
                                            style: const TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        const Divider(color: Colors.grey)
                                      ],
                                    ),
                                  );
                                }))
                      ],
                    ),
                  ))
                : Container(),
          ],
        ),
      ),
    );
  }
}
