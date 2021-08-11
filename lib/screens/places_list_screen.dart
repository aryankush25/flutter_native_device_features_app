import 'package:flutter/material.dart';
import 'package:native_device_features_app/providers/great_places.dart';
import 'package:native_device_features_app/screens/add_place_screen.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your places'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(
                AddPlaceScreen.routeName,
              );
            },
          ),
        ],
      ),
      body: Consumer<GreatePlaces>(
        builder: (ctx, greatePlaces, _) => greatePlaces.items.length <= 0
            ? const Center(
                child: Text('Got no places!'),
              )
            : ListView.builder(
                itemCount: greatePlaces.items.length,
                itemBuilder: (ctx, i) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: FileImage(greatePlaces.items[i].image),
                  ),
                  title: Text(greatePlaces.items[i].title),
                  onTap: () {},
                ),
              ),
      ),
    );
  }
}
