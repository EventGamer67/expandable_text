import 'dart:developer';

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expandable Text Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expandable Text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ExpandableText(
              'Short text',
              expandText: 'show more',
              collapseText: 'show less',
            ),
            SizedBox(height: 10.0),
            ExpandableText(
              'Lorem ipsum dolor sit amet, @mention  https://google.com #eafse consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
              expandText: 'show more',
              collapseText: "show less",
              maxLines: 2,
              linkColor: Colors.blue,
              animation: true,
              collapseOnTextTap: true,
              onPrefixTap: () => log("message"),
              prefixStyle: TextStyle(fontWeight: FontWeight.bold),
              onHashtagTap: (name) => log("message"),
              hashtagStyle: TextStyle(
                color: Color(0xFF30B6F9),
              ),
              onMentionTap: (username) => log("message"),
              mentionStyle: TextStyle(
                fontWeight: FontWeight.w600,
              ),
              onUrlTap: (url) => log("message"),
              urlStyle: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
