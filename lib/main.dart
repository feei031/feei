import 'package:feei_app/videoPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}



class App extends StatelessWidget {

  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
            'feeiアプリ(YOUTUBE)',
          ),
          actions: <Widget>[
            SizedBox(
              width: 36,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed:(){
                  //何かをかく
                }
              ),
            ),
            SizedBox(
              width: 36,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: (){
                  //何かを書く
                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                        'https://yt3.ggpht.com/a/AATXAJxde1uJcXNptNSZ29IOC77SEBbrFvwBbvy2fASd=s288-c-k-c0xffffffff-no-rj-mo',
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          'feeiアプリ(YOUTUBE)',
                        ),
                        FlatButton(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text('登録する'),
                            ],
                          ),
                          onPressed: (){
                            //何かを書く
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () async {
                      //画面遷移　
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => videoPage(),
                        ),
                      );
                    },
                    contentPadding: EdgeInsets.all(8),
                    leading: Image.network(
                      'https://pbs.twimg.com/media/Cdgz0rUUIAAso-_?format=jpg&name=large',
                    ),
                    title: Column(
                      children: <Widget>[
                        Text('僕たち側から見て面白い？',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                        Row(
                          children: <Widget>[
                            Text('1000回再生',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text('　5日前',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                  );
                },
               ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
