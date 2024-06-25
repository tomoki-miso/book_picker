// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userInfoFirestoreHash() => r'ccc7cd5fa225150f2db66c2297556103b3edc6f0';

/// See also [userInfoFirestore].
@ProviderFor(userInfoFirestore)
final userInfoFirestoreProvider =
    Provider<CollectionReference<UserInfoClass>>.internal(
  userInfoFirestore,
  name: r'userInfoFirestoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userInfoFirestoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserInfoFirestoreRef = ProviderRef<CollectionReference<UserInfoClass>>;
String _$userInfoRepoHash() => r'0ba4abe3f8368964f373deb5d7ac2da4a39b34b9';

/// See also [UserInfoRepo].
@ProviderFor(UserInfoRepo)
final userInfoRepoProvider = NotifierProvider<UserInfoRepo, void>.internal(
  UserInfoRepo.new,
  name: r'userInfoRepoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userInfoRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserInfoRepo = Notifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
