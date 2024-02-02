// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_detail_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postDetailPageControllerHash() =>
    r'4279b95bd73c79320f4f1ba5a1ea16218f7583d6';

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

/// See also [postDetailPageController].
@ProviderFor(postDetailPageController)
const postDetailPageControllerProvider = PostDetailPageControllerFamily();

/// See also [postDetailPageController].
class PostDetailPageControllerFamily
    extends Family<AsyncValue<(Post, List<Comment>)>> {
  /// See also [postDetailPageController].
  const PostDetailPageControllerFamily();

  /// See also [postDetailPageController].
  PostDetailPageControllerProvider call(
    int postId,
  ) {
    return PostDetailPageControllerProvider(
      postId,
    );
  }

  @override
  PostDetailPageControllerProvider getProviderOverride(
    covariant PostDetailPageControllerProvider provider,
  ) {
    return call(
      provider.postId,
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
  String? get name => r'postDetailPageControllerProvider';
}

/// See also [postDetailPageController].
class PostDetailPageControllerProvider
    extends AutoDisposeFutureProvider<(Post, List<Comment>)> {
  /// See also [postDetailPageController].
  PostDetailPageControllerProvider(
    int postId,
  ) : this._internal(
          (ref) => postDetailPageController(
            ref as PostDetailPageControllerRef,
            postId,
          ),
          from: postDetailPageControllerProvider,
          name: r'postDetailPageControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postDetailPageControllerHash,
          dependencies: PostDetailPageControllerFamily._dependencies,
          allTransitiveDependencies:
              PostDetailPageControllerFamily._allTransitiveDependencies,
          postId: postId,
        );

  PostDetailPageControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postId,
  }) : super.internal();

  final int postId;

  @override
  Override overrideWith(
    FutureOr<(Post, List<Comment>)> Function(
            PostDetailPageControllerRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostDetailPageControllerProvider._internal(
        (ref) => create(ref as PostDetailPageControllerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postId: postId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<(Post, List<Comment>)> createElement() {
    return _PostDetailPageControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostDetailPageControllerProvider && other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostDetailPageControllerRef
    on AutoDisposeFutureProviderRef<(Post, List<Comment>)> {
  /// The parameter `postId` of this provider.
  int get postId;
}

class _PostDetailPageControllerProviderElement
    extends AutoDisposeFutureProviderElement<(Post, List<Comment>)>
    with PostDetailPageControllerRef {
  _PostDetailPageControllerProviderElement(super.provider);

  @override
  int get postId => (origin as PostDetailPageControllerProvider).postId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
