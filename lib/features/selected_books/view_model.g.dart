// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedBooksPageViewModelHash() =>
    r'4320e8435a090262e5c8907d8f0a80d12b2d7095';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$SelectedBooksPageViewModel
    extends BuildlessAutoDisposeAsyncNotifier<SelectedBooksPageState> {
  late final BookListType bookListType;

  FutureOr<SelectedBooksPageState> build(
    BookListType bookListType,
  );
}

/// See also [SelectedBooksPageViewModel].
@ProviderFor(SelectedBooksPageViewModel)
const selectedBooksPageViewModelProvider = SelectedBooksPageViewModelFamily();

/// See also [SelectedBooksPageViewModel].
class SelectedBooksPageViewModelFamily
    extends Family<AsyncValue<SelectedBooksPageState>> {
  /// See also [SelectedBooksPageViewModel].
  const SelectedBooksPageViewModelFamily();

  /// See also [SelectedBooksPageViewModel].
  SelectedBooksPageViewModelProvider call(
    BookListType bookListType,
  ) {
    return SelectedBooksPageViewModelProvider(
      bookListType,
    );
  }

  @override
  SelectedBooksPageViewModelProvider getProviderOverride(
    covariant SelectedBooksPageViewModelProvider provider,
  ) {
    return call(
      provider.bookListType,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'selectedBooksPageViewModelProvider';
}

/// See also [SelectedBooksPageViewModel].
class SelectedBooksPageViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SelectedBooksPageViewModel,
        SelectedBooksPageState> {
  /// See also [SelectedBooksPageViewModel].
  SelectedBooksPageViewModelProvider(
    BookListType bookListType,
  ) : this._internal(
          () => SelectedBooksPageViewModel()..bookListType = bookListType,
          from: selectedBooksPageViewModelProvider,
          name: r'selectedBooksPageViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$selectedBooksPageViewModelHash,
          dependencies: SelectedBooksPageViewModelFamily._dependencies,
          allTransitiveDependencies:
              SelectedBooksPageViewModelFamily._allTransitiveDependencies,
          bookListType: bookListType,
        );

  SelectedBooksPageViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookListType,
  }) : super.internal();

  final BookListType bookListType;

  @override
  FutureOr<SelectedBooksPageState> runNotifierBuild(
    covariant SelectedBooksPageViewModel notifier,
  ) {
    return notifier.build(
      bookListType,
    );
  }

  @override
  Override overrideWith(SelectedBooksPageViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: SelectedBooksPageViewModelProvider._internal(
        () => create()..bookListType = bookListType,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookListType: bookListType,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SelectedBooksPageViewModel,
      SelectedBooksPageState> createElement() {
    return _SelectedBooksPageViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SelectedBooksPageViewModelProvider &&
        other.bookListType == bookListType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookListType.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SelectedBooksPageViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<SelectedBooksPageState> {
  /// The parameter `bookListType` of this provider.
  BookListType get bookListType;
}

class _SelectedBooksPageViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SelectedBooksPageViewModel,
        SelectedBooksPageState> with SelectedBooksPageViewModelRef {
  _SelectedBooksPageViewModelProviderElement(super.provider);

  @override
  BookListType get bookListType =>
      (origin as SelectedBooksPageViewModelProvider).bookListType;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
