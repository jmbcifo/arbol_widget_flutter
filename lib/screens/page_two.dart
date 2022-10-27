import 'package:arbol_widget_flutter/local_widgets/button_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text("CIFO FLUTTER"),
        ),
      ),
      body: Column(
        children: [
          // Column(
          //   children: [
          //     Row(
          //       children: [
          //         ClipRRect(
          //           borderRadius: BorderRadius.circular(10),
          //           child: Image.asset(
          //             'assets/images/image1.jpg',
          //             height: 200,
          //             width: 90,
          //             fit: BoxFit.fill,
          //           ),
          //         ),
          //         ClipRRect(
          //           borderRadius: BorderRadius.circular(10),
          //           child: Image.asset(
          //             'assets/images/image2.jpg',
          //             height: 90,
          //             width: 90,
          //             fit: BoxFit.fill,
          //           ),
          //         ),
          //         ClipRRect(
          //           borderRadius: BorderRadius.circular(10),
          //           child: Image.asset(
          //             'assets/images/image3.jpg',
          //             height: 90,
          //             width: 90,
          //             fit: BoxFit.fill,
          //           ),
          //         ),
          //       ],
          //     ),
          //     Row(
          //       children: [
          //         ClipRRect(
          //           borderRadius: BorderRadius.circular(10),
          //           child: Image.asset(
          //             'assets/images/image4.jpg',
          //             height: 90,
          //             width: 90,
          //             fit: BoxFit.fill,
          //           ),
          //         ),
          //         ClipRRect(
          //           borderRadius: BorderRadius.circular(10),
          //           child: Image.asset(
          //             'assets/images/image5.jpg',
          //             height: 90,
          //             width: 90,
          //             fit: BoxFit.fill,
          //           ),
          //         ),
          //       ],
          //     )
          //   ],
          // ),
          Flexible(
            flex: 5,
            child: GridView.count(
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              shrinkWrap: true,
              childAspectRatio: 1.0,
              padding: const EdgeInsets.all(20),
              crossAxisCount: 2,
              children: [
                _widgetImage(1),
                _widgetImage(2),
                _widgetImage(3),
                _widgetImage(4),
                _widgetImage(5),
              ],
            ),
          ),

          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 16, right: 16),
              child: ButtonWidget(
                texto: "Go Back",
                textColor: Colors.white,
                colorBackGround: Colors.purple,
                colorBorder: Colors.purple,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  _widgetImage(int i) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/images/image$i.jpg',
        fit: BoxFit.fill,
      ),
    );
  }
}
