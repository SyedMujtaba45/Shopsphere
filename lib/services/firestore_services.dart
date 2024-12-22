import 'package:my_app/consts/consts.dart';

class FirestoreServices {

  //getUser Data
  static getUser(uid){
    return firestore.collection(usersCollection).where('id',isEqualTo: uid).snapshots();
  }

  //get products according to category

  static getProducts(category){
    return firestore.collection(productsCollection).where('p_category',isEqualTo: category).snapshots();
  }

  //get cart
  static getCart(uid) {
    return firestore.collection(cartCollection).where('added_by',isEqualTo: uid).snapshots();
  }
}