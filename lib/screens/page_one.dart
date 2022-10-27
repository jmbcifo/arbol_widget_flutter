import 'package:arbol_widget_flutter/local_widgets/button_widget.dart';
import 'package:arbol_widget_flutter/screens/page_two.dart';
import 'package:flutter/material.dart';

String _url = "https://picsum.photos/250?image=9";

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Center(
          child: Text("CIFO FLUTTER"),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // DrawerHeader(
            //   decoration: const BoxDecoration(
            //     color: Colors.pink,
            //   ),
            //   child: Column(
            //     children: [
            //       Container(
            //         color: Colors.pink,
            //         child: const Text(
            //           'Drawer Header',
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 24,
            //           ),
            //         ),
            //       ),
            //       Container(
            //         color: Colors.pink,
            //         child: const Text(
            //           'Drawer Header 2',
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 24,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.purple,
              ),
              accountName: const Text("Jose"),
              accountEmail: const Text("jose@jose.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: SizedBox(
                    height: 128,
                    width: 128,
                    child: Image.network(
                      _url,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: SizedBox(
                  height: 200,
                  child: Image.network(
                    _url,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Text(
                "¡Hola!",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontFamily: 'Roboto', fontSize: 36, color: Colors.purple),
              ),
            ),
            _widgetButtons(context)
          ],
        ),
      ),
    );
  }

  _widgetButtons(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ButtonWidget(
            colorBackGround: Colors.purple,
            colorBorder: Colors.white,
            textColor: Colors.white,
            texto: "GO TO HOME",
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ButtonWidget(
            colorBackGround: Colors.white,
            colorBorder: Colors.black,
            textColor: Colors.black,
            texto: "FIND FRIENDS",
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
        ],
      ),
    );
  }
}
