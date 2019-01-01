import 'package:flutter/material.dart';
import 'mocks/mock_location.dart';
import 'location_list.dart';

import 'app.dart';

void main() {
  final mockLocations = MockLocation.fetchAll();
	return runApp(App());
}
