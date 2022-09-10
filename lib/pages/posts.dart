import 'package:belajarflutter/models/post.dart';
import 'package:belajarflutter/services/posts_services.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  late Future<List<PostModel>> posts;

  @override
  void initState() {
    super.initState();
    posts = PostService().fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Post'),
        ),
        body: SafeArea(
          child: FutureBuilder<List<PostModel>>(
              future: posts,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("${snapshot.data![index].title}"),
                        subtitle: Text("${snapshot.data![index].body}"),
                      );
                    },
                  );
                } else {
                  return Center(child: const CircularProgressIndicator());
                }
              }),
        ));
  }
}
