import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class LocationEndpoint extends Endpoint {
  Future<void> createLocation(Session session, Location newLocation) {
    return Location.db.insert(session, [newLocation]);
  }

  Future<List<Location>> getLocations(Session session) async {
    final locations = await Location.db.find(session);
    return locations;
  }

  Future<void> deleteLocation(Session session, int id) async {
    final loc = await Location.db.findById(session, id);
    if (loc != null) await Location.db.deleteRow(session, loc);
    return;
  }
}
