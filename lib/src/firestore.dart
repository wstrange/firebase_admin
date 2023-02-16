import 'package:firebase_admin/src/utils/api_request.dart';

import 'app/app.dart';
import 'app/app_extension.dart';
import 'app.dart';
import 'firestore/FirebaseFirestore.dart';

import 'package:firebase_admin/src/service.dart';


class Firestore implements FirebaseService {
  //
  // final StandaloneFirebaseDatabase _database;
  //
  //
  //

  FirebaseFirestore fs;
  @override
  final App app;

  Firestore(this.app) : fs = FirebaseFirestore(AuthorizedHttpClient(app)) {
  }
  //
  // Firestore(this.app): _database = StandaloneFirebaseDatabase(
  // app.options.databaseUrl ??
  // 'https://${app.projectId}.firebaseio.com/',
  // authTokenProvider: _AuthTokenProvider(app.internals));


  @override
  Future<void> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  CollectionReference collection(String path) {
    var p = 'projects/${app.projectId}/databases/(default)/documents/$path';
    return fs.collection(p);
  }



}