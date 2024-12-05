import 'package:get/get.dart';
import '../models/post.dart';
import '../services/api_service.dart';

class PostController extends GetxController {
  var isLoading = true.obs;
  var posts = <Post>[].obs;

  @override
  void onInit() {
    fetchPosts();
    super.onInit();
  }

  void fetchPosts() async {
    try {
      isLoading(true);
      var fetchedPosts = await ApiService.fetchPosts();
      posts.assignAll(fetchedPosts);
    } catch (e) {
      print("Error fetching posts: $e");
    } finally {
      isLoading(false);
    }
  }
}
