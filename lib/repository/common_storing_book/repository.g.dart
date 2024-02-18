// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commonStoringBookFirestoreHash() =>
    r'c89676ca44dfb4b8873450f71b6cd6dcb7bdea4c';

/// See also [commonStoringBookFirestore].
@ProviderFor(commonStoringBookFirestore)
final commonStoringBookFirestoreProvider =
    Provider<CollectionReference<CommonStoringBook>>.internal(
  commonStoringBookFirestore,
  name: r'commonStoringBookFirestoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$commonStoringBookFirestoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CommonStoringBookFirestoreRef
    = ProviderRef<CollectionReference<CommonStoringBook>>;
String _$commonStoringBookRepoHash() =>
    r'b03b7b5092ff6f3397d0dd54cde1bc6e72ec1aa9';

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
