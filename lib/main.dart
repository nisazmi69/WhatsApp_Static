import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat)),
              Tab(icon: Icon(Icons.circle_outlined)),
              Tab(icon: Icon(Icons.call)),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            ListView(
              children: [
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("bb"),
                    subtitle: Text('iyaa beyy'),
                    trailing: Text('999+', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("lele"),
                    subtitle: Text('xiu'),
                    trailing: Text('5', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("x"),
                    subtitle: Text('hai bb'),
                    trailing: Text('49', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("manu"),
                    subtitle: Text('woi'),
                    trailing: Text('26', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("bocil"),
                    subtitle: Text('Beli air'),
                    trailing: Text('30', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("yoyo"),
                    subtitle: Text('p ayuu'),
                    trailing: Text('58', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("kimpul"),
                    subtitle: Text('aku gapunya barangnya'),
                    trailing: Text('51', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("iput"),
                    subtitle: Text('wey muka ku kotak'),
                    trailing: Text('2', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("idk"),
                    subtitle: Text('ka, mau ga jadi gf aku......'),
                    trailing: Text('9', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("ica"),
                    subtitle: Text('well dah'),
                    trailing: Text('23', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("rara"),
                    subtitle: Text('makasih ya'),
                    trailing: Text('67', style: TextStyle(color: Colors.green)),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Qila"),
                    subtitle: Text('Beli jco yuu'),
                    trailing: Text('5', style: TextStyle(color: Colors.green)),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Caca"),
                    subtitle: Text('main yu saa'),
                    trailing: Text('999+', style: TextStyle(color: Colors.green)),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("saa"),
                    subtitle: Text('bagus bgt bunganya'),
                    trailing: Text('100', style: TextStyle(color: Colors.green)),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("asmiz"),
                    subtitle: Text('caffe yuk'),
                    trailing: Text('18', style: TextStyle(color: Colors.green)),
                  ),
                ),
              ],
            ),

            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.add_circle_outline_sharp),
                  title: Text('My status'),
                  subtitle: Text('Tap to add status update'),
                ),
                Text('Recent updates'),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('lele'),
                  subtitle: Text('2 minutes ago'),
                ),
              ],
            ),

            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text('lele'),
                  subtitle: Text(
                    '15 minutes ago',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
