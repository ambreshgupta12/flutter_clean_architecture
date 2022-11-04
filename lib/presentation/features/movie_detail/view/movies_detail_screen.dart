import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/extention/movie_db_image_extention.dart';
import 'package:flutter_clean_architecture/domain/entities/movie_details.dart';
import 'package:flutter_clean_architecture/presentation/features/movie_detail/state/movie_detail_state.dart';
import 'package:flutter_clean_architecture/presentation/features/movie_detail/view_model/movie_detail_view_model.dart';
import 'package:flutter_clean_architecture/presentation/view/base_view.dart';

class MoviesDetailScreen extends StatelessWidget {
  final int id;

  const MoviesDetailScreen(this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<MovieDetailViewModel, MovieDetailState>(
      setupViewModel: (viewModel) => viewModel.initialize(id),
      builder: (context, state, viewModel) {
        return Scaffold(appBar: AppBar(title: Text(state.title)),
          body: handleMovieUi(state),);
      },);
  }

  Widget handleMovieUi(MovieDetailState state) {
    return state.movieDetailResultState.when(loading: () {
      return const Center(child: CircularProgressIndicator(),);
    }, result: (r) {
      return movies(r, state);
    }, error: (error) {
      return Center(child: Text(error.errorMessage));
    });
  }

  Widget movies(MovieDetails movie, MovieDetailState state) {
    print('dstststset${movie.backdropPath}');
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(child: CachedNetworkImage(
        imageUrl: movie.backdropPath.getMovieDBImage,),),
      SliverToBoxAdapter(child: Padding(padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            Text(movie.title,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10,),
            Text('Ratings: ${movie.voteAverage}'),
            const SizedBox(height: 10,),
            Text(movie.overview),
          ],),),),
      videos(state)
    ],);
  }

  Widget videos(MovieDetailState state) {
    return SliverToBoxAdapter(child: SizedBox(height: 200,
      width: 200,
      child: ListView.builder(shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = state.videos[index];
          return Card(child: Column(children: [
            Flexible(child: CachedNetworkImage(
              imageUrl: item.key.getYoutubeThumbnailBaseURl,),),
            Text(item.name, style: Theme
                .of(context)
                .textTheme
                .headline5,)
          ],),);
        },
        itemCount: state.videos.length,),),);
  }
}
