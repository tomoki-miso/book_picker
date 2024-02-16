// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userStoringBookFirestoreHash() =>
    r'112bce14b2d5db12a223215578b1696dd5ab6ac7';

/// See also [userStoringBookFirestore].
@ProviderFor(userStoringBookFirestore)
final userStoringBookFirestoreProvider =
    Provider<CollectionReference<UserStoringBook>>.internal(
  userStoringBookFirestore,
  name: r'userStoringBookFirestoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userStoringBookFirestoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserStoringBookFirestoreRef
    = ProviderRef<CollectionReference<UserStoringBook>>;
String _$userStoringBookRepoHash() =>
    r'acb319c98d749cc5415ef734becd410fcfe9af43';

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
