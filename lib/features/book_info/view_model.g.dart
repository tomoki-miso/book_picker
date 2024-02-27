// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookInfoPageViewModelHash() =>
    r'63e2d251714a2016912ed92bc8924992c4ee0216';

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

abstract class _$BookInfoPageViewModel
    extends BuildlessAutoDisposeAsyncNotifier<BookInfoPageState> {
  late final Book book;

  FutureOr<BookInfoPageState> build(
    Book book,
  );
}

/// See also [BookInfoPageViewModel].
@ProviderFor(BookInfoPageViewModel)
const bookInfoPageViewModelProvider = BookInfoPageViewModelFamily();

/// See also [BookInfoPageViewModel].
class BookInfoPageViewModelFamily
    extends Family<AsyncValue<BookInfoPageState>> {
  /// See also [BookInfoPageViewModel].
  const BookInfoPageViewModelFamily();

  /// See also [BookInfoPageViewModel].
  BookInfoPageViewModelProvider call(
    Book book,
  ) {
    return BookInfoPageViewModelProvider(
      book,
    );
  }

  @override
  BookInfoPageViewModelProvider getProviderOverride(
    covariant BookInfoPageViewModelProvider provider,
  ) {
    return call(
      provider.book,
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
  String? get name => r'bookInfoPageViewModelProvider';
}

/// See also [BookInfoPageViewModel].
class BookInfoPageViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<BookInfoPageViewModel,
        BookInfoPageState> {
  /// See also [BookInfoPageViewModel].
  BookInfoPageViewModelProvider(
    Book book,
  ) : this._internal(
          () => BookInfoPageViewModel()..book = book,
          from: bookInfoPageViewModelProvider,
          name: r'bookInfoPageViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookInfoPageViewModelHash,
          dependencies: BookInfoPageViewModelFamily._dependencies,
          allTransitiveDependencies:
              BookInfoPageViewModelFamily._allTransitiveDependencies,
          book: book,
        );

  BookInfoPageViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.book,
  }) : super.internal();

  final Book book;

  @override
  FutureOr<BookInfoPageState> runNotifierBuild(
    covariant BookInfoPageViewModel notifier,
  ) {
    return notifier.build(
      book,
    );
  }

  @override
  Override overrideWith(BookInfoPageViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookInfoPageViewModelProvider._internal(
        () => create()..book = book,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        book: book,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<BookInfoPageViewModel,
      BookInfoPageState> createElement() {
    return _BookInfoPageViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookInfoPageViewModelProvider && other.book == book;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, book.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BookInfoPageViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<BookInfoPageState> {
  /// The parameter `book` of this provider.
  Book get book;
}

class _BookInfoPageViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BookInfoPageViewModel,
        BookInfoPageState> with BookInfoPageViewModelRef {
  _BookInfoPageViewModelProviderElement(super.provider);

  @override
  Book get book => (origin as BookInfoPageViewModelProvider).book;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
