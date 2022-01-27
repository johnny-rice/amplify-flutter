/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the PostTags type in your schema.
@immutable
class PostTags extends Model {
  static const classType = _PostTagsModelType();
  final String id;
  final Post? _post;
  final Tag? _tag;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  Post get post {
    try {
      return _post!;
    } catch (e) {
      throw DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  Tag get tag {
    try {
      return _tag!;
    } catch (e) {
      throw DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const PostTags._internal(
      {required this.id, required post, required tag, createdAt, updatedAt})
      : _post = post,
        _tag = tag,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory PostTags({String? id, required Post post, required Tag tag}) {
    return PostTags._internal(
        id: id == null ? UUID.getUUID() : id, post: post, tag: tag);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostTags &&
        id == other.id &&
        _post == other._post &&
        _tag == other._tag;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("PostTags {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("post=" + (_post != null ? _post!.toString() : "null") + ", ");
    buffer.write("tag=" + (_tag != null ? _tag!.toString() : "null") + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  PostTags copyWith({String? id, Post? post, Tag? tag}) {
    return PostTags._internal(
        id: id ?? this.id, post: post ?? this.post, tag: tag ?? this.tag);
  }

  PostTags.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _post = json['post']?['serializedData'] != null
            ? Post.fromJson(
                Map<String, dynamic>.from(json['post']['serializedData']))
            : null,
        _tag = json['tag']?['serializedData'] != null
            ? Tag.fromJson(
                Map<String, dynamic>.from(json['tag']['serializedData']))
            : null,
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'post': _post?.toJson(),
        'tag': _tag?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID = QueryField(fieldName: "postTags.id");
  static final QueryField POST = QueryField(
      fieldName: "post",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Post).toString()));
  static final QueryField TAG = QueryField(
      fieldName: "tag",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Tag).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PostTags";
    modelSchemaDefinition.pluralName = "PostTags";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: PostTags.POST,
        isRequired: true,
        targetName: "postID",
        ofModelName: (Post).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: PostTags.TAG,
        isRequired: true,
        targetName: "tagID",
        ofModelName: (Tag).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'createdAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'updatedAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));
  });
}

class _PostTagsModelType extends ModelType<PostTags> {
  const _PostTagsModelType();

  @override
  PostTags fromJson(Map<String, dynamic> jsonData) {
    return PostTags.fromJson(jsonData);
  }
}