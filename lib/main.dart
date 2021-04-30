import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my portfolio',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/BackgroundImage.png"), fit: BoxFit.cover)),
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Portfolio',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage("asset/Avatar.PNG"),
                        radius: 30,
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Hi, i\'m Nmachukwu Ndidi',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 90),
                  Card(
                    color: Color(0XFFFCFEFF),
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text(
                              'About me:',
                              style: TextStyle(
                                fontSize: 22,
                                letterSpacing: .5,
                              ),
                            ),
                          ),
                          Text(
                            'A a software engineer specialised in frontend '
                            'and mobile development for complex scalable'
                            'web and mobile applications.',
                            style: TextStyle(
                              fontSize: 18,
                              letterSpacing: .5,
                            ),
                          ),
                          Text(
                            'Below is a list of Technologies i use',
                            style: TextStyle(
                              fontSize: 18,
                              letterSpacing: .5,
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.remove),
                            title: Text('Flutter'),
                          ),
                          ListTile(
                            leading: Icon(Icons.remove),
                            title: Text('vanilla javaScript'),
                          ),
                          ListTile(
                            leading: Icon(Icons.remove),
                            title: Text('html5 and css'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Card(
                    color: Color(0XFFFCFEFF),
                    child: Container(
                        child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.contact_mail),
                          title: Text(
                            'Contact:',
                            style: TextStyle(
                              fontSize: 22,
                              letterSpacing: .5,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.remove),
                          title: Text('nmandidi@gmail.com'),
                        ),
                        ListTile(
                          leading: Icon(Icons.remove),
                          title: Text('https://github.com/Eunice-nma'),
                        ),

                      ],
                    )),
                  ),
                  SizedBox(height: 20),
                  // Card(
                  //   color: Color(0XFFFCFEFF),
                  //   child: Container(
                  //     padding: EdgeInsets.all(15.0),
                  //     child: Text(
                  //       'Below is a list of technologies i use',
                  //       style: TextStyle(
                  //         fontSize: 18,
                  //         letterSpacing: .5,
                  //       ),
                  //     ),
                  //
                  //   ),
                  // ),
                ],
              ),
            )),
      ),
    );
  }
}
