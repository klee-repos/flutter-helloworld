import 'package:flutter/material.dart';
import 'models/location.dart';
import 'location_detail.dart';
import 'styles.dart';

class LocationList extends StatelessWidget {
  final List<Location> locations;
  LocationList(this.locations);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          "Locations",
          style: Styles.navBarTitle,
        ),
      ),
      body: ListView.builder(
        itemCount: this.locations.length,
        itemBuilder: _listViewItemBuilder,
      ),
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      leading: _itemThumbnail(this.locations[index]),
      title: _itemTitle(this.locations[index]),
      onTap: () => _navigationToLocationDetail(context, index),
    );
  }

  void _navigationToLocationDetail(BuildContext context, int locationID) {
    print(">>>>>>> ${locationID}");
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => 
        LocationDetail(locationID),
    ));
  }

  Widget _itemThumbnail(Location location) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.0),
      child: Image.network(location.url, fit: BoxFit.fitHeight)
    );
  }

  Widget _itemTitle(Location location) {
    return Text(
      '${location.name}',
      style: Styles.textDefault
    );
  }
}