import 'package:flutter/material.dart';

void main() 
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      title: 'Tampilan Text',
      theme: ThemeData
      (
        primarySwatch: Colors.blue,
      ),

      home: MyHomePage(/*title: 'Flutter Demo Home Page'*/),
    );
  }
}

class MyHomePage extends StatefulWidget 
{

  /* MyHomePage({Key key, this.title}) : super(key: key);
  final String title; */

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> 
{
  /* int _counter = 0;

  void _incrementCounter() 
  {
    setState(() 
    {
      _counter++;
    });
  } */

  @override
  Widget build(BuildContext context) 
  {
    
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text(/*widget.title*/ "Menampilkan Text" ),
      ),

      body: Container
      (
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors. lightBlue,
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
          [
            Container
            (
              width: 100,
              height: 100,
              decoration: BoxDecoration
              (
                color: Colors.black87,
                shape: BoxShape.circle
              ),
              child: Center
              (
                child: Icon(Icons.person, size: 50, color: Colors.white,),
              ),
            ),

            SizedBox(height: 20,),
            Text("Selamat Datang Ilham", style: TextStyle(fontSize: 30, color: Colors.black87),),

            SizedBox(height: 20,),
            TextFormField
            (
              decoration: InputDecoration
              (
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder
                (
                  borderSide: BorderSide(color: Colors.black87)
                ),
                prefixIcon: Icon(Icons.person, size: 40,),
                hintText: "Masukan Namamu",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Namamu",
                labelStyle: TextStyle(color: Colors.black87)
              ),
            ),

            SizedBox(height: 20,),
            TextFormField
            (
              obscureText: true,
              decoration: InputDecoration
              (
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder
                (
                  borderSide: BorderSide(color: Colors.black87)
                ),
                prefixIcon: Icon(Icons.lock, size: 40,),
                hintText: "Masukan Password",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black87)
              ),
            ),

            SizedBox(height: 20,),
            Card
            (
              color: Colors.black87,
              elevation: 5,
              child: Container
              (
                height: 50,
                child: InkWell
                (
                  splashColor: Colors. white,
                  onTap: (){},
                  child: Center
                  (
                    child: Text("Masuk", style: TextStyle(fontSize: 30, color: Colors.white),),
                  ),
                ),
              ),
            ),

          ]
        ),
      ),
      
    );
  }
}

/* body: Center
      (
        
        child: Column
        (
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton
      (
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods. */
