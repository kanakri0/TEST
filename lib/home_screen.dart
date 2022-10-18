import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Text('MY FIRST FLUTTER'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_active))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(20.0),
                    bottomEnd: Radius.circular(25.0)),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: 200,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  const Image(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJa4DqfHn-gly81f9OSwd2ARytA8EtTTpCjw&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.1),
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                    ),
                    child: const Text(
                      'FLOWER',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 25,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
// Container(
//   color: Colors.amber,
//   child: const Text(
//     'Second Tex',
//     style: TextStyle(
//       color: Colors.pink,
//       fontSize: 30,
//       backgroundColor: Colors.limeAccent,
//     ),
//   ),
// ),
// Container(
//   color: Colors.black87,
//   child: const Text(
//     'Third Text',
//     style: TextStyle(
//         color: Colors.blue,
//         fontSize: 30,
//         backgroundColor: Colors.pink),
//   ),
// ),
// Container(
//   color: Colors.cyanAccent,
//   child: const Text(
//     'fourth Text',
//     style: TextStyle(
//       color: Colors.lightGreenAccent,
//       fontSize: 30,
//       backgroundColor: Colors.black,
//     ),
//   ),
// ),
