// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commonStoringBookFirestoreHash() =>
    r'e6555376a7649b6bee0e5dc2f274bf54ce2e5d40';

/// See also [commonStoringBookFirestore].
@ProviderFor(commonStoringBookFirestore)
final commonStoringBookFirestoreProvider =
    Provider<CollectionReference<Book>>.internal(
  commonStoringBookFirestore,
  name: r'commonStoringBookFirestoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$commonStoringBookFirestoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CommonStoringBookFirestoreRef = ProviderRef<CollectionReference<Book>>;
String _$commonStoringBookRepoHash() =>
    r'3c257cf533f04b0fc907dd2f871054a27dfafb80';

/// See also [CommonStoringBookRepo].
@ProviderFor(CommonStoringBookRepo)
final commonStoringBookRepoProvider =
    NotifierProvider<CommonStoringBookRepo, void>.internal(
  CommonStoringBookRepo.new,
  name: r'commonStoringBookRepoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$commonStoringBookRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CommonStoringBookRepo = Notifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
