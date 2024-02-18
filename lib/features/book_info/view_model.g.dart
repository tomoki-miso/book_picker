// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookInfoPageViewModelHash() =>
    r'fe653b020d0330d55d6648572381f1feb6fa5e67';

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
  late final TodaysPickedBook? todaysPickedBook;
  late final CommonStoringBook? commonStoringBook;
  late final UserStoringBook? userStoringBook;

  FutureOr<BookInfoPageState> build(
    PageType pageType,
    TodaysPickedBook? todaysPickedBook,
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
    TodaysPickedBook? todaysPickedBook,
    CommonStoringBook? commonStoringBook,
    UserStoringBook? userStoringBook,
  ) {
    return BookInfoPageViewModelProvider(
      pageType,
      todaysPickedBook,
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
      provider.todaysPickedBook,
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
    TodaysPickedBook? todaysPickedBook,
    CommonStoringBook? commonStoringBook,
    UserStoringBook? userStoringBook,
  ) : this._internal(
          () => BookInfoPageViewModel()
            ..pageType = pageType
            ..todaysPickedBook = todaysPickedBook
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
          todaysPickedBook: todaysPickedBook,
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
    required this.todaysPickedBook,
    required this.commonStoringBook,
    required this.userStoringBook,
  }) : super.internal();

  final PageType pageType;
  final TodaysPickedBook? todaysPickedBook;
  final CommonStoringBook? commonStoringBook;
  final UserStoringBook? userStoringBook;

  @override
  FutureOr<BookInfoPageState> runNotifierBuild(
    covariant BookInfoPageViewModel notifier,
  ) {
    return notifier.build(
      pageType,
      todaysPickedBook,
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
          ..todaysPickedBook = todaysPickedBook
          ..commonStoringBook = commonStoringBook
          ..userStoringBook = userStoringBook,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pageType: pageType,
        todaysPickedBook: todaysPickedBook,
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
        other.todaysPickedBook == todaysPickedBook &&
        other.commonStoringBook == commonStoringBook &&
        other.userStoringBook == userStoringBook;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pageType.hashCode);
    hash = _SystemHash.combine(hash, todaysPickedBook.hashCode);
    hash = _SystemHash.combine(hash, commonStoringBook.hashCode);
    hash = _SystemHash.combine(hash, userStoringBook.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BookInfoPageViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<BookInfoPageState> {
  /// The parameter `pageType` of this provider.
  PageType get pageType;

  /// The parameter `todaysPickedBook` of this provider.
  TodaysPickedBook? get todaysPickedBook;

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
  TodaysPickedBook? get todaysPickedBook =>
      (origin as BookInfoPageViewModelProvider).todaysPickedBook;
  @override
  CommonStoringBook? get commonStoringBook =>
      (origin as BookInfoPageViewModelProvider).commonStoringBook;
  @override
  UserStoringBook? get userStoringBook =>
      (origin as BookInfoPageViewModelProvider).userStoringBook;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
