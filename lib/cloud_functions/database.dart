import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tawwon/models/local_user.dart';
import 'package:tawwon/models/organization_page_details.dart';
import 'package:tawwon/models/request.dart';

import 'firebase_collections.dart';

class DatabaseService {
  late String uid;
  static DatabaseService? _instance;
  final FirebaseCollections collections = FirebaseCollections();

  static DatabaseService? get instance {
    _instance ??= DatabaseService();

    return _instance;
  }

  Future createUser({required LocalUser user}) async {
    return await collections.users.doc(user.uid).set(user.toMap(), SetOptions(merge: true));
  }

  Future createRequest({required Request request}) async {
    return await collections.requests.add(request.toMap());
  }

  Future<OrganizationPageDetails> getOrganizationDetails({required String? uid}) async {
    return await collections.organizationsDetails
        .doc(uid)
        .get()
        .then((value) => OrganizationPageDetails.fromMap(value.data() as Map<String, dynamic>));
  }
}
