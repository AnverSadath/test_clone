import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: Column(
          children: [
            Container(
              height: 110,
              width: double.infinity,
              color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Text(
                          "WhatsApp",
                          style: TextStyle(fontSize: 30),
                        ),
                        SizedBox(
                          width: 145,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Icon(Icons.camera_alt),
                        ),
                        Icon(Icons.search),
                        Icon(Icons.more_vert)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.person),
                      Text(
                        "Chats",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text("Updates", style: TextStyle(fontSize: 20)),
                      Text("Calls", style: TextStyle(fontSize: 20))
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 728,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.transparent,
                            maxRadius: 40,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                "assets/cr2.jpg",
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(right: 200),
                          child: Column(
                            children: [
                              Text(
                                "Ronaldo",
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Icon(Icons.check),
                                  Text(
                                    "hi",
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text("10:00"),
                            CircleAvatar(
                              minRadius: 15,
                              child: Text("10"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
