// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todaysPickedBookFirestoreHash() =>
    r'126d5043b21e7dcdbd09c952cd38e338b3498fc0';

/// See also [todaysPickedBookFirestore].
@ProviderFor(todaysPickedBookFirestore)
final todaysPickedBookFirestoreProvider =
    Provider<CollectionReference<Book>>.internal(
  todaysPickedBookFirestore,
  name: r'todaysPickedBookFirestoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todaysPickedBookFirestoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TodaysPickedBookFirestoreRef = ProviderRef<CollectionReference<Book>>;
String _$todaysPickedBookRepoHash() =>
    r'b7edabacd0ea5810a8c9e47a5e1c61a4a625b1f9';

/// See also [TodaysPickedBookRepo].
@ProviderFor(TodaysPickedBookRepo)
final todaysPickedBookRepoProvider =
    NotifierProvider<TodaysPickedBookRepo, void>.internal(
  TodaysPickedBookRepo.new,
  name: r'todaysPickedBookRepoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todaysPickedBookRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodaysPickedBookRepo = Notifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
