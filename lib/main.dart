import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   SafeArea(
        child: Stack(
          children: [
            Image(
              image: NetworkImage('https://cdn.pixabay.com/photo/2012/03/04/00/09/lions-21787_960_720.jpg'),
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 20, left: 20,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.blueAccent,
                        Colors.brown,
                      ]
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text('“If you want to be a lion, you must train with lions.”',
                      style: TextStyle(
                        fontFamily: 'Bebas',
                        fontSize: 30,
                        color: Colors.white,
                        letterSpacing: 3.1,
                      ),
                    ),
                    Row(
                      children: [
                        ActionChip(
                          backgroundColor: Colors.red,
                          onPressed: (){},
                          label: Text('Only Lions', style: TextStyle(
                            fontFamily: 'Source Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          ),
                        ),
                        SizedBox(
                          width: 25,

                        ),
                        ActionChip(
                          backgroundColor: Colors.green,
                          onPressed: (){},
                          label: Text('More Animals', style: TextStyle(
                            fontFamily: 'Source Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}