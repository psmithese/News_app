import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "News App",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            const SizedBox(
              width: 10.0,
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            //header
            Container(
              width: double.infinity,
              height: 250,
              //background image
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://www.lindaikejisblog.com/photos/shares/thumbs/63d04049a6e3a.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(1),
                      Colors.black.withOpacity(.0)
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(15),
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "US attorney General denies president Joe Biden is being treated better than Trump in classified document probes",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                        height: 1.2,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
