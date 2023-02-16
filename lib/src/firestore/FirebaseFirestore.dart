

import 'package:firebase_admin/src/firestore/collection_reference.dart';
import 'package:firebase_admin/src/utils/api_request.dart';

export 'collection_reference.dart';
export 'query.dart';
export 'document_reference.dart';

class FirebaseFirestore {
  AuthorizedHttpClient client;

  FirebaseFirestore(this.client);

  CollectionReference collection(String path) {
    return CollectionReferenceImpl(client,path);
  }

}