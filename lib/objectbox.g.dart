// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'models/member/member.dart';
import 'models/task/task.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 1409216122547788967),
      name: 'Member',
      lastPropertyId: const IdUid(4, 5886699498747806255),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5639535781257852102),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 6041170408992905481),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 6434834343990510019),
            name: 'income',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 5886699498747806255),
            name: 'createdAt',
            type: 10,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(3, 2301546402162453040),
      name: 'Task',
      lastPropertyId: const IdUid(9, 4349745911690109601),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6127879268817859532),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 8596238423895013521),
            name: 'title',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 7931493209417825603),
            name: 'price',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 1345107145900651316),
            name: 'doingAt',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 9065897901600843995),
            name: 'createdAt',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 6706119728409187210),
            name: 'isDone',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 4294515498366449392),
            name: 'assigneeMemberId',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 1044421159773595788),
            name: 'scheduleType',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 4349745911690109601),
            name: 'taskNum',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(3, 2301546402162453040),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [6658949043874423718],
      retiredIndexUids: const [],
      retiredPropertyUids: const [
        6574474039561994137,
        3535154839045821906,
        8826949900487606479,
        1109916939477540401,
        2291478109814787585,
        4931774163276701685,
        6582913146019921924,
        7236096820126950697
      ],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Member: EntityDefinition<Member>(
        model: _entities[0],
        toOneRelations: (Member object) => [],
        toManyRelations: (Member object) => {},
        getId: (Member object) => object.id,
        setId: (Member object, int id) {
          if (object.id != id) {
            throw ArgumentError('Field Member.id is read-only '
                '(final or getter-only) and it was declared to be self-assigned. '
                'However, the currently inserted object (.id=${object.id}) '
                "doesn't match the inserted ID (ID $id). "
                'You must assign an ID before calling [box.put()].');
          }
        },
        objectToFB: (Member object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addInt64(2, object.income);
          fbb.addInt64(3, object.createdAt?.millisecondsSinceEpoch);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final createdAtValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 10);
          final object = Member(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              name: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              income:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0),
              createdAt: createdAtValue == null
                  ? null
                  : DateTime.fromMillisecondsSinceEpoch(createdAtValue));

          return object;
        }),
    Task: EntityDefinition<Task>(
        model: _entities[1],
        toOneRelations: (Task object) => [],
        toManyRelations: (Task object) => {},
        getId: (Task object) => object.id,
        setId: (Task object, int id) {
          if (object.id != id) {
            throw ArgumentError('Field Task.id is read-only '
                '(final or getter-only) and it was declared to be self-assigned. '
                'However, the currently inserted object (.id=${object.id}) '
                "doesn't match the inserted ID (ID $id). "
                'You must assign an ID before calling [box.put()].');
          }
        },
        objectToFB: (Task object, fb.Builder fbb) {
          final titleOffset = fbb.writeString(object.title);
          fbb.startTable(10);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, titleOffset);
          fbb.addInt64(2, object.price);
          fbb.addInt64(3, object.doingAt?.millisecondsSinceEpoch);
          fbb.addInt64(4, object.createdAt?.millisecondsSinceEpoch);
          fbb.addBool(5, object.isDone);
          fbb.addInt64(6, object.assigneeMemberId);
          fbb.addInt64(7, object.scheduleType);
          fbb.addInt64(8, object.taskNum);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final doingAtValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 10);
          final createdAtValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 12);
          final object = Task(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              title: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              price: const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0),
              doingAt: doingAtValue == null
                  ? null
                  : DateTime.fromMillisecondsSinceEpoch(doingAtValue),
              createdAt: createdAtValue == null
                  ? null
                  : DateTime.fromMillisecondsSinceEpoch(createdAtValue),
              isDone: const fb.BoolReader()
                  .vTableGet(buffer, rootOffset, 14, false),
              assigneeMemberId: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              scheduleType:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 18, 0),
              taskNum:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 20, 0));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Member] entity fields to define ObjectBox queries.
class Member_ {
  /// see [Member.id]
  static final id = QueryIntegerProperty<Member>(_entities[0].properties[0]);

  /// see [Member.name]
  static final name = QueryStringProperty<Member>(_entities[0].properties[1]);

  /// see [Member.income]
  static final income =
      QueryIntegerProperty<Member>(_entities[0].properties[2]);

  /// see [Member.createdAt]
  static final createdAt =
      QueryIntegerProperty<Member>(_entities[0].properties[3]);
}

/// [Task] entity fields to define ObjectBox queries.
class Task_ {
  /// see [Task.id]
  static final id = QueryIntegerProperty<Task>(_entities[1].properties[0]);

  /// see [Task.title]
  static final title = QueryStringProperty<Task>(_entities[1].properties[1]);

  /// see [Task.price]
  static final price = QueryIntegerProperty<Task>(_entities[1].properties[2]);

  /// see [Task.doingAt]
  static final doingAt = QueryIntegerProperty<Task>(_entities[1].properties[3]);

  /// see [Task.createdAt]
  static final createdAt =
      QueryIntegerProperty<Task>(_entities[1].properties[4]);

  /// see [Task.isDone]
  static final isDone = QueryBooleanProperty<Task>(_entities[1].properties[5]);

  /// see [Task.assigneeMemberId]
  static final assigneeMemberId =
      QueryIntegerProperty<Task>(_entities[1].properties[6]);

  /// see [Task.scheduleType]
  static final scheduleType =
      QueryIntegerProperty<Task>(_entities[1].properties[7]);

  /// see [Task.taskNum]
  static final taskNum = QueryIntegerProperty<Task>(_entities[1].properties[8]);
}
