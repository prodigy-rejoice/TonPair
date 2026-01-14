import 'package:flutter_butler_server/src/generated/protocol.dart';
import 'package:serverpod/server.dart';

class UserProfileEndpoint extends Endpoint {
  /// Create a new profile
  Future<UserProfile> createProfile(
    Session session,
    UserProfile profile,
  ) async {
    profile.createdAt = DateTime.now();
    final newProfile = await UserProfile.db.insertRow(session, profile);
    return newProfile;
  }

  /// Get a profile by id
  Future<UserProfile?> getProfile(Session session, int id) async {
    final profile = await UserProfile.db.findById(session, id);
    return profile;
  }
}
