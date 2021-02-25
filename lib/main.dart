import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Awesome App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.separated(
            itemBuilder: (ctx, idx) {
              return CustomCard(idx);
            },
            itemCount: 100,
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              height: 16,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final int index;

  CustomCard(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(.5),
                borderRadius: BorderRadius.circular(64 / 2),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Title $index",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text("Completed"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
