import 'package:flutter/material.dart';

class BasicHeroAnimationPage extends StatelessWidget {
  const BasicHeroAnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: List.generate(
            20,
            (i) => GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => Scaffold(
                      body: Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 28.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Hero(
                                tag: 'dash$i',
                                child: Material(
                                  child: CircleAvatar(
                                    radius: 120,
                                    backgroundImage: NetworkImage(
                                      'https://pbs.twimg.com/media/EH5_h6OXYAE-KH7.jpg',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: Hero(
                tag: 'dash$i',
                child: Material(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://pbs.twimg.com/media/EH5_h6OXYAE-KH7.jpg',
                      ),
                    ),
                    title: Text(
                      'Hello, my name is Dash',
                    ),
                  ),
                ),
              ),
            ),
          ).toList(),
        ),
      ),
    );
  }
}
