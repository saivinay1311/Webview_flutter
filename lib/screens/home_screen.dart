import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Completer<WebViewController> controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const Center(
                child: Text(
              "Map Scanner",
              style: TextStyle(fontSize: 25),
            )),
            SizedBox(height: 12,),
            Container(
              foregroundDecoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(12)
              ),
              height: MediaQuery.of(context).size.height*.75,
              width: MediaQuery.of(context).size.width*.75,
              child: ClipRRect(
                 borderRadius: BorderRadius.circular(12),
                child: WebView(
                  initialUrl: "https://www.digitalocean.com/",
                  javascriptMode: JavascriptMode.unrestricted,
                  onWebViewCreated: (WebViewController webcontroller) {
                    controller.complete(webcontroller);
                  },
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: (){}, child: Text("Start")),
                
                TextButton(onPressed: (){}, child: Text("Start")),
                TextButton(onPressed: (){}, child: Text("Start"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
