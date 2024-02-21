// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$keywordFirestoreHash() => r'2398f0338aceaefa929b1f08658121bf44b2ee72';

/// See also [keywordFirestore].
@ProviderFor(keywordFirestore)
final keywordFirestoreProvider =
    Provider<CollectionReference<Keyword>>.internal(
  keywordFirestore,
  name: r'keywordFirestoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$keywordFirestoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef KeywordFirestoreRef = ProviderRef<CollectionReference<Keyword>>;
String _$keywordRepoHash() => r'ac83aabb962a66bd0f45b6677cf31a1606a44462';

/// See also [KeywordRepo].
@ProviderFor(KeywordRepo)
final keywordRepoProvider = NotifierProvider<KeywordRepo, void>.internal(
  KeywordRepo.new,
  name: r'keywordRepoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$keywordRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$KeywordRepo = Notifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
