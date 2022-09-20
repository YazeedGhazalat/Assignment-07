import 'package:flutter/material.dart';
import 'package:myapp/screens/Screen.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: Text("Login Page"),
        actions: [],
      ),
      body: ListView(
        children: [
          Container(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("images/1.png"),
                      height: 150,
                      width: 150,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      enableSuggestions: true,
                      autocorrect: true,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            gapPadding: 20,
                          ),
                          label: Text(
                            "User Name",
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                            //vertical: 30,
                          ),
                          hintText: "User Name"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.lock_open),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              gapPadding: 20,
                              borderSide: BorderSide(
                                color: Colors.red,
                              )),
                          label: Text(
                            "User Password ",
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                            //vertical: 30,
                          ),
                          hintText: "User Password "),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(150, 50),
                          backgroundColor: Colors.indigo),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return myTextFeeldWidget();
                        }));
                      },
                      icon: Icon(Icons.login_outlined),
                      label: Text("Login"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Forget Password?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      //padding: EdgeInsets.all(20),
                      alignment: FractionalOffset.bottomCenter,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return myTextFeeldWidget();
                          }));
                        },
                        icon: Icon(Icons.search),
                        label: Text("Go to Search page"),
                      ),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
