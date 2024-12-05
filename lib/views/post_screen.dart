import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/post_controller.dart';

class PostScreen extends StatelessWidget {
  final PostController postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Social Media Posts",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        elevation: 10.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.pink],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Obx(() {
        if (postController.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.deepPurple,
            ),
          );
        } else if (postController.posts.isEmpty) {
          return Center(
            child: Text(
              "No posts available.",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          );
        } else {
          return ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: postController.posts.length,
            itemBuilder: (context, index) {
              final post = postController.posts[index];
              return GestureDetector(
                onTap: () {
                  Get.snackbar(
                    "Post Clicked",
                    post.title,
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.pink[50],
                    colorText: Colors.deepPurple,
                  );
                },
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.pinkAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.pink[100]!, Colors.white],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          post.content,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[800],
                          ),
                        ),
                        SizedBox(height: 15),
                        Wrap(
                          spacing: 8,
                          children: post.tags.map((tag) {
                            return Chip(
                              label: Text(
                                tag,
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.deepPurpleAccent,
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
