// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchedBookFirestoreHash() =>
    r'f7c0482a1627a3ce95cbf313d8367e826e992608';

/// See also [fetchedBookFirestore].
@ProviderFor(fetchedBookFirestore)
final fetchedBookFirestoreProvider =
    Provider<CollectionReference<FetchedBook>>.internal(
  fetchedBookFirestore,
  name: r'fetchedBookFirestoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchedBookFirestoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchedBookFirestoreRef = ProviderRef<CollectionReference<FetchedBook>>;
String _$fetchedBookRepoHash() => r'd93cf95bd5c9aa9be7132a0b7532d4792d371984';

/// See also [FetchedBookRepo].
@ProviderFor(FetchedBookRepo)
final fetchedBookRepoProvider =
    NotifierProvider<FetchedBookRepo, void>.internal(
  FetchedBookRepo.new,
  name: r'fetchedBookRepoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchedBookRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FetchedBookRepo = Notifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
