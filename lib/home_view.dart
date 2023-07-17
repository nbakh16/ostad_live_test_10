import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.orientationOf(context) == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: const Text('News Feed'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 12,
          scrollDirection: isPortrait ? Axis.vertical : Axis.horizontal,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Flex(
                  direction: isPortrait ? Axis.horizontal : Axis.vertical,
                  children: [
                    Expanded(
                      flex: isPortrait ? 2 : 4,
                      child: Image.network('https://saigontechnology.com/assets/media/Blog/flutter-what-is-it.webp',
                        width: MediaQuery.sizeOf(context).width * 0.35,
                      ),
                    ),
                    Expanded(
                      flex: isPortrait ? 3 : 2,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('News Title',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text('Description of the News',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }
        )
      ),
    );
  }
}
