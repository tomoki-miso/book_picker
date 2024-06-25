// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appAdFirestoreHash() => r'7bc2667f6aa1513a9cc58872dcc944c54da1aeca';

/// See also [appAdFirestore].
@ProviderFor(appAdFirestore)
final appAdFirestoreProvider = Provider<CollectionReference<AppAd>>.internal(
  appAdFirestore,
  name: r'appAdFirestoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appAdFirestoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppAdFirestoreRef = ProviderRef<CollectionReference<AppAd>>;
String _$appAdRepoHash() => r'd2a4714bad942d0a7c96627ddf2ad6c22d9e559e';

/// See also [AppAdRepo].
@ProviderFor(AppAdRepo)
final appAdRepoProvider = NotifierProvider<AppAdRepo, void>.internal(
  AppAdRepo.new,
  name: r'appAdRepoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appAdRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppAdRepo = Notifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
