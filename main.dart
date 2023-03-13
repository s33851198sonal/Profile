import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  var nameText = TextEditingController();
  var ageText = TextEditingController();
  var genderText = TextEditingController();
  var countryText = TextEditingController();
  var hobbiesText = TextEditingController();
  var aboutText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Profile'),
      ),
      body: Center(child: Container(
        width : 300,
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             TextField(
              keyboardType: TextInputType.name,
              controller: nameText,
              decoration: InputDecoration(
                hintText: 'Enter Name here...',
                focusedBorder: OutlineInputBorder(
                  enabledBorder : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
              borderSide:BorderSide(
                color:Colors.blueAccent,
                width: 2
                  )
                  ),
                  disabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(11),
              borderside:BorderSide(
                color:Colors.black45,
                width: 2
                  )
                  ),
                  suffixText: "Name",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye, color: Colors.orange,),
                    onPressed: (){

                    },
                  )
                  )
                  prefixIcon: Icon(Icons.email, color: Colors.orange, ),
                border: OutlineInputBorder (
                   borderRadius: BorderRadius.circular(11),
              borderSide:BorderSide(
                color: Colors.deepOrange,
                width: 2
              )
            )
          )
        ),
               Container(height: (11)),
            TextField(
              keyboardType: TextInputType.number,
              controller: ageText,
              decoration: InputDecoration(
              hintText: 'Enter your Age...',
               border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
              borderSide: BorderSide(
                color: Colors.redAccent,
              )
            )
          ),
         ),
          Container(height: (11)),
            TextField(
              keyboardType: TextInputType.text,
              controller: genderText,
              decoration: InputDecoration(
               border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
              borderSide: BorderSide(
                color: Colors.orange,
              )
            )
          ),
         ),
          Container(height: (11)),
            TextField(
              keyboardType: TextInputType.text,
              controller: countryText,
              decoration: InputDecoration(
               hintText: 'Enter your Country...', 
               border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
              borderSide: BorderSide (
                color: Colors.blueAccent,
              )
            )
          ),
         ),  
          Container(height: (11)),
            TextField(
              keyboardType: TextInputType.text,
              controller: hobbiesText,
              decoration: InputDecoration(
              hintText:'Enter your Hobbies...'
               border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
              borderSide: BorderSide(
                color: Colors.purple,
              )
            )
          ),
         ),
          Container(height: (11)),
            TextField(
              keyboardType: TextInputType.text,
              controller: aboutText,
              decoration: InputDecoration(
               hintText: 'Enter About you...',
               border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
              borderSide: BorderSide(
                color: Colors.yellowAccent
              )
            )
          ),
         ),
            ElevatedButton(onPressed:  (){
              String name = nameText.text.toString();
              String age = ageText.text;
              String gender= genderText.text;
              String country = countryText.text;
              String hobbies = hobbiesText.text;
              String about = aboutText.text;

              print("name: $name, age: $age, gender: $gender, country: $country, hobbies: $hobbies, about: $about");
                          }, child: Text(
              'Save'
            ))

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        
            
          ],
        ),
      ),
      
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
