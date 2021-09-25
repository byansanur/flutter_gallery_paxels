import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery_paxels/model/resp_photos.dart';
import 'package:flutter_gallery_paxels/service/photos_service.dart';
import 'package:flutter_gallery_paxels/widget/grid_view_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _HomeState();

}
class _HomeState extends State<Home> {

  final PhotoServices _photoServices = PhotoServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paxels Gallery'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: FutureBuilder<List<Photos>>(
        future: _photoServices.fetchPhoto(1, 10),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          if (snapshot.hasData) {
            return GridViewList(photo: snapshot.data);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      )
    );
  }

}