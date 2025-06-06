// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$aftSerializers =
    (Serializers().toBuilder()
          ..add(AftConfig.serializer)
          ..add(AndroidEnvironment.serializer)
          ..add(Environment.serializer)
          ..add(GitHubPackageConfig.serializer)
          ..add(IosEnvironment.serializer)
          ..add(MacOSEnvironment.serializer)
          ..add(PlatformEnvironment.serializer)
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(PackageInfo),
            ]),
            () => MapBuilder<String, PackageInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(VersionConstraint),
            ]),
            () => MapBuilder<String, VersionConstraint>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(AftComponent),
            ]),
            () => MapBuilder<String, AftComponent>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(AftScript),
            ]),
            () => MapBuilder<String, AftScript>(),
          ))
        .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
