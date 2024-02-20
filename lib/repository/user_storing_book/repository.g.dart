// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userStoringBookFirestoreHash() =>
    r'29ba2224ef1f7a3df74fc3fe7294f835cfbcb2ae';

/// See also [userStoringBookFirestore].
@ProviderFor(userStoringBookFirestore)
final userStoringBookFirestoreProvider =
    Provider<CollectionReference<Book>>.internal(
  userStoringBookFirestore,
  name: r'userStoringBookFirestoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userStoringBookFirestoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserStoringBookFirestoreRef = ProviderRef<CollectionReference<Book>>;
String _$userStoringBookRepoHash() =>
    r'5385c09f549943991b32462a0ebceaa3fa9c77e8';

/// See also [UserStoringBookRepo].
@ProviderFor(UserStoringBookRepo)
final userStoringBookRepoProvider =
    NotifierProvider<UserStoringBookRepo, void>.internal(
  UserStoringBookRepo.new,
  name: r'userStoringBookRepoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userStoringBookRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserStoringBookRepo = Notifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
