import 'package:flutter/material.dart';
import 'package:rynestnurdin261020/Model/addBlogModel.dart';
import 'package:rynestnurdin261020/Screen/NetworkHandler.dart';

class Blog extends StatelessWidget {
  const Blog({Key key, this.addBlogModel, this.networkHandler})
      : super(key: key);

  final AddBlogModel addBlogModel;
  final NetworkHandler networkHandler;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 370,
            width: MediaQuery.of(context).size.width,
            
            child: Card(
              elevation: 8,
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width ,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: networkHandler.getImage(addBlogModel.id),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10,
                    ),
                    child: Text(
                      addBlogModel.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10,
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.chat_bubble,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          addBlogModel.comment.toString(),
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.thumb_up,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          addBlogModel.like.toString(),
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.share,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          addBlogModel.share.toString(),
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Card(
              elevation: 15,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Text(
                  addBlogModel.body,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
