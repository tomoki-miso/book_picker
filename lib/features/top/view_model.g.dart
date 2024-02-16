// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$topPageViewModelHash() => r'dd451891c4876caee88f753dcfcb5148d454c1a7';

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

abstract class _$TopPageViewModel
    extends BuildlessAutoDisposeAsyncNotifier<TopPageState> {
  late final String isbn;

  FutureOr<TopPageState> build(
    String isbn,
  );
}

/// See also [TopPageViewModel].
@ProviderFor(TopPageViewModel)
const topPageViewModelProvider = TopPageViewModelFamily();

/// See also [TopPageViewModel].
class TopPageViewModelFamily extends Family<AsyncValue<TopPageState>> {
  /// See also [TopPageViewModel].
  const TopPageViewModelFamily();

  /// See also [TopPageViewModel].
  TopPageViewModelProvider call(
    String isbn,
  ) {
    return TopPageViewModelProvider(
      isbn,
    );
  }

  @override
  TopPageViewModelProvider getProviderOverride(
    covariant TopPageViewModelProvider provider,
  ) {
    return call(
      provider.isbn,
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
  String? get name => r'topPageViewModelProvider';
}

/// See also [TopPageViewModel].
class TopPageViewModelProvider extends AutoDisposeAsyncNotifierProviderImpl<
    TopPageViewModel, TopPageState> {
  /// See also [TopPageViewModel].
  TopPageViewModelProvider(
    String isbn,
  ) : this._internal(
          () => TopPageViewModel()..isbn = isbn,
          from: topPageViewModelProvider,
          name: r'topPageViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$topPageViewModelHash,
          dependencies: TopPageViewModelFamily._dependencies,
          allTransitiveDependencies:
              TopPageViewModelFamily._allTransitiveDependencies,
          isbn: isbn,
        );

  TopPageViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.isbn,
  }) : super.internal();

  final String isbn;

  @override
  FutureOr<TopPageState> runNotifierBuild(
    covariant TopPageViewModel notifier,
  ) {
    return notifier.build(
      isbn,
    );
  }

  @override
  Override overrideWith(TopPageViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: TopPageViewModelProvider._internal(
        () => create()..isbn = isbn,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        isbn: isbn,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TopPageViewModel, TopPageState>
      createElement() {
    return _TopPageViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TopPageViewModelProvider && other.isbn == isbn;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, isbn.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TopPageViewModelRef on AutoDisposeAsyncNotifierProviderRef<TopPageState> {
  /// The parameter `isbn` of this provider.
  String get isbn;
}

class _TopPageViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TopPageViewModel,
        TopPageState> with TopPageViewModelRef {
  _TopPageViewModelProviderElement(super.provider);

  @override
  String get isbn => (origin as TopPageViewModelProvider).isbn;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
