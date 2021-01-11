import 'package:flutter/material.dart';
import 'package:rynestnurdin261020/Model/addBlogModel.dart';
import 'package:rynestnurdin261020/Screen/NetworkHandler.dart';


class BlogCard extends StatelessWidget {
  const BlogCard({Key key, this.addBlogModel, this.networkHandler})
      : super(key: key);

  final AddBlogModel addBlogModel;
  final NetworkHandler networkHandler;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: networkHandler.getImage(addBlogModel.id),
                    fit: BoxFit.fitWidth),
              ),
            ),
            Positioned(
              bottom: 2,
              child: Container(
                padding: EdgeInsets.all(8),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  addBlogModel.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}