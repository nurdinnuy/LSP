import 'package:flutter/material.dart';
import 'package:rynestnurdin261020/Blog/Blogs.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEFF),
      body: SingleChildScrollView(
        child: Blogs(
          url: "/blogpost/getOtherBlog",
        ),
      ),
    );
  }
}
