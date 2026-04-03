import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_toktik_v2/config/theme/ap_theme.dart';
import 'package:section_toktik_v2/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:section_toktik_v2/infrastructure/repositories/video_posts_repository_impl.dart';
import 'package:section_toktik_v2/presentation/providers/discover_provider.dart';
import 'package:section_toktik_v2/presentation/screens/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final videoPostRepository = VideoPostsRepositoryImpl(videosDatasource: LocalVideoDatasource());

    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => DiscoverProvider( videosRepository: videoPostRepository)..loadNextPage())],
      child: MaterialApp(
        title: 'TokTik',
        theme: AppTheme().getTheme(),
        debugShowCheckedModeBanner: false,
        home: const DiscoverScreen(),
      ),
    );
  }
}
