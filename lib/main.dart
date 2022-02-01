import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

String heads = "Heads";
String tails = "Tails";
bool a = true;
String HeadImg = "images/heads.jpg";
String TailImg = "images/tails.jpg";
String BgImg = "image/bgimg.jpg";
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: "Turn the coin",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Turn the Coin"),
          ),
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(BgImg
                    )
                )
            ),
            child: Column(
              children: [
                Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 156),
                        Text(a? heads : tails, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 28),
                        Image.asset(
                          a ? HeadImg: TailImg,
                          width: 240,
                          height: 240,
                        ),
                        const SizedBox(height: 50),
                        ElevatedButton(
                            onPressed: () {
                              a = !a;
                              setState(() {});
                            },
                            child: const Text("Turn", style: TextStyle(fontSize: 28)))
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}