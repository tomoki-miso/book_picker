// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todaysPickedBookFirestoreHash() =>
    r'6e6064d770aa24a3f4408914091eb1d44dcbe2da';

/// See also [todaysPickedBookFirestore].
@ProviderFor(todaysPickedBookFirestore)
final todaysPickedBookFirestoreProvider =
    Provider<CollectionReference<TodaysPickedBook>>.internal(
  todaysPickedBookFirestore,
  name: r'todaysPickedBookFirestoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todaysPickedBookFirestoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TodaysPickedBookFirestoreRef
    = ProviderRef<CollectionReference<TodaysPickedBook>>;
String _$todaysPickedBookRepoHash() =>
    r'febc4f4bdf9f9e18314cd41f2700e09d70486937';

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
