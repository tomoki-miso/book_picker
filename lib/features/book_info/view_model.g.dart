// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookInfoPageViewModelHash() =>
    r'7f3b8eff9e5089adc67fbaad1d21cd895fe91209';

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
  late final PageType pageType;
  late final FetchedBook? fetchedBook;
  late final CommonStoringBook? commonStoringBook;
  late final UserStoringBook? userStoringBook;

  FutureOr<BookInfoPageState> build(
    PageType pageType,
    FetchedBook? fetchedBook,
    CommonStoringBook? commonStoringBook,
    UserStoringBook? userStoringBook,
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
    PageType pageType,
    FetchedBook? fetchedBook,
    CommonStoringBook? commonStoringBook,
    UserStoringBook? userStoringBook,
  ) {
    return BookInfoPageViewModelProvider(
      pageType,
      fetchedBook,
      commonStoringBook,
      userStoringBook,
    );
  }

  @override
  BookInfoPageViewModelProvider getProviderOverride(
    covariant BookInfoPageViewModelProvider provider,
  ) {
    return call(
      provider.pageType,
      provider.fetchedBook,
      provider.commonStoringBook,
      provider.userStoringBook,
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
    PageType pageType,
    FetchedBook? fetchedBook,
    CommonStoringBook? commonStoringBook,
    UserStoringBook? userStoringBook,
  ) : this._internal(
          () => BookInfoPageViewModel()
            ..pageType = pageType
            ..fetchedBook = fetchedBook
            ..commonStoringBook = commonStoringBook
            ..userStoringBook = userStoringBook,
          from: bookInfoPageViewModelProvider,
          name: r'bookInfoPageViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookInfoPageViewModelHash,
          dependencies: BookInfoPageViewModelFamily._dependencies,
          allTransitiveDependencies:
              BookInfoPageViewModelFamily._allTransitiveDependencies,
          pageType: pageType,
          fetchedBook: fetchedBook,
          commonStoringBook: commonStoringBook,
          userStoringBook: userStoringBook,
        );

  BookInfoPageViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pageType,
    required this.fetchedBook,
    required this.commonStoringBook,
    required this.userStoringBook,
  }) : super.internal();

  final PageType pageType;
  final FetchedBook? fetchedBook;
  final CommonStoringBook? commonStoringBook;
  final UserStoringBook? userStoringBook;

  @override
  FutureOr<BookInfoPageState> runNotifierBuild(
    covariant BookInfoPageViewModel notifier,
  ) {
    return notifier.build(
      pageType,
      fetchedBook,
      commonStoringBook,
      userStoringBook,
    );
  }

  @override
  Override overrideWith(BookInfoPageViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookInfoPageViewModelProvider._internal(
        () => create()
          ..pageType = pageType
          ..fetchedBook = fetchedBook
          ..commonStoringBook = commonStoringBook
          ..userStoringBook = userStoringBook,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pageType: pageType,
        fetchedBook: fetchedBook,
        commonStoringBook: commonStoringBook,
        userStoringBook: userStoringBook,
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
    return other is BookInfoPageViewModelProvider &&
        other.pageType == pageType &&
        other.fetchedBook == fetchedBook &&
        other.commonStoringBook == commonStoringBook &&
        other.userStoringBook == userStoringBook;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pageType.hashCode);
    hash = _SystemHash.combine(hash, fetchedBook.hashCode);
    hash = _SystemHash.combine(hash, commonStoringBook.hashCode);
    hash = _SystemHash.combine(hash, userStoringBook.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BookInfoPageViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<BookInfoPageState> {
  /// The parameter `pageType` of this provider.
  PageType get pageType;

  /// The parameter `fetchedBook` of this provider.
  FetchedBook? get fetchedBook;

  /// The parameter `commonStoringBook` of this provider.
  CommonStoringBook? get commonStoringBook;

  /// The parameter `userStoringBook` of this provider.
  UserStoringBook? get userStoringBook;
}

class _BookInfoPageViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BookInfoPageViewModel,
        BookInfoPageState> with BookInfoPageViewModelRef {
  _BookInfoPageViewModelProviderElement(super.provider);

  @override
  PageType get pageType => (origin as BookInfoPageViewModelProvider).pageType;
  @override
  FetchedBook? get fetchedBook =>
      (origin as BookInfoPageViewModelProvider).fetchedBook;
  @override
  CommonStoringBook? get commonStoringBook =>
      (origin as BookInfoPageViewModelProvider).commonStoringBook;
  @override
  UserStoringBook? get userStoringBook =>
      (origin as BookInfoPageViewModelProvider).userStoringBook;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
