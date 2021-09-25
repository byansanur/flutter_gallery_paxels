import 'package:flutter/cupertino.dart';
import 'package:flutter_gallery_paxels/model/resp_photos.dart';

class GridViewList extends StatelessWidget {
  final List<Photos>? photo;
  const GridViewList({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        itemCount: photo?.length,
        itemBuilder: (context, index) {
          return Image.network('${photo?[index].src?.portrait}');
        }
    );
  }
}