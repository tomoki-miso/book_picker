// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userIconsFirestoreHash() =>
    r'b71734767ad798b6ff47041a80f4dd6280de81f4';

/// See also [userIconsFirestore].
@ProviderFor(userIconsFirestore)
final userIconsFirestoreProvider =
    Provider<CollectionReference<UserIcons>>.internal(
  userIconsFirestore,
  name: r'userIconsFirestoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userIconsFirestoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserIconsFirestoreRef = ProviderRef<CollectionReference<UserIcons>>;
String _$userIconsRepoHash() => r'698ab11cdd925c3925c42ee48568ccaf071f65d2';

/// See also [UserIconsRepo].
@ProviderFor(UserIconsRepo)
final userIconsRepoProvider = NotifierProvider<UserIconsRepo, void>.internal(
  UserIconsRepo.new,
  name: r'userIconsRepoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userIconsRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserIconsRepo = Notifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
