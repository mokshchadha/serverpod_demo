import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

enum LocationType {
  destination,
  godown,
}

class LocationEndpoint extends Endpoint {
  Future<void> createLocation(Session session, Location newLocation) async {
    await session.db.transaction((transaction) async {
      final locInDb = await Location.db
          .insertRow(session, newLocation, transaction: transaction);
      final freight = await createEmptyFreightsForLocation(session, locInDb);
      await LocationFreights.db
          .insert(session, freight, transaction: transaction);
      return true;
    });
  }

  Future<List<LocationFreights>> createEmptyFreightsForLocation(
      Session session, Location loc) async {
    if (loc.type == LocationType.destination.name) {
      final godowns = await Location.db.find(
        session,
        where: (t) => t.type.equals(LocationType.godown.name),
      );
      return godowns.map((e) => createDummyFreight(e.id, loc.id)).toList();
    }

    final destinations = await Location.db.find(
      session,
      where: (t) => t.type.equals(LocationType.destination.name),
    );

    return destinations.map((e) => createDummyFreight(loc.id, e.id)).toList();
  }

  LocationFreights createDummyFreight(int? fromLoc, int? toLoc) {
    return LocationFreights(
        fromLoc: fromLoc != null ? fromLoc.toString() : '',
        toLoc: toLoc != null ? toLoc.toString() : '',
        distance: -100,
        t25: 0,
        t18: 0,
        t5: 0,
        t42: 0,
        t35: 0,
        t30: 0,
        t12: 0,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now());
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
