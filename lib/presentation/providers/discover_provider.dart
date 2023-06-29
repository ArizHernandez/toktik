import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/repositories/video_posts_repository_impl.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostsRepositoryImpl _videoPostsRepository;

  DiscoverProvider({
    required videoPostsRepository,
  }) : _videoPostsRepository = videoPostsRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    final newVideos = await _videoPostsRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }
}
