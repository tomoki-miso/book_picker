
// import 'package:book_picker/domain/book/domain.dart';
// import 'package:book_picker/provider/dio/dio_provider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'repo.g.dart';

// @Riverpod(keepAlive: true)
// CollectionReference<Book> BookApi(BookApiRef ref) =>
//     ref.read(dioProvider)..withConverter<Coupon>(
//           fromFirestore: (snapshot, _) => Coupon.fromJson(snapshot.data()!),
//           toFirestore: (data, _) => data.toJson(),
//         );

// @Riverpod(keepAlive: true)
// class BookRepo extends _$BookRepo {
//   FirebaseFirestore get db => ref.read(dioProvider);

//   CollectionReference<Coupon> get collection =>
//       ref.read(couponFirestoreProvider);

//   @override
//   void build()