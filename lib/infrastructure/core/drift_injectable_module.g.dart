// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_injectable_module.dart';

// ignore_for_file: type=lint
class $DriftDownloadInfoTable extends DriftDownloadInfo
    with TableInfo<$DriftDownloadInfoTable, DriftDownloadInfoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftDownloadInfoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
    'url',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 2000),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _folderMeta = const VerificationMeta('folder');
  @override
  late final GeneratedColumn<String> folder = GeneratedColumn<String>(
    'folder',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, url, folder];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'drift_download_info';
  @override
  VerificationContext validateIntegrity(
    Insertable<DriftDownloadInfoData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('url')) {
      context.handle(
        _urlMeta,
        url.isAcceptableOrUnknown(data['url']!, _urlMeta),
      );
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('folder')) {
      context.handle(
        _folderMeta,
        folder.isAcceptableOrUnknown(data['folder']!, _folderMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftDownloadInfoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftDownloadInfoData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      url:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}url'],
          )!,
      folder: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}folder'],
      ),
    );
  }

  @override
  $DriftDownloadInfoTable createAlias(String alias) {
    return $DriftDownloadInfoTable(attachedDatabase, alias);
  }
}

class DriftDownloadInfoData extends DataClass
    implements Insertable<DriftDownloadInfoData> {
  final int id;
  final String url;
  final String? folder;
  const DriftDownloadInfoData({
    required this.id,
    required this.url,
    this.folder,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['url'] = Variable<String>(url);
    if (!nullToAbsent || folder != null) {
      map['folder'] = Variable<String>(folder);
    }
    return map;
  }

  DriftDownloadInfoCompanion toCompanion(bool nullToAbsent) {
    return DriftDownloadInfoCompanion(
      id: Value(id),
      url: Value(url),
      folder:
          folder == null && nullToAbsent ? const Value.absent() : Value(folder),
    );
  }

  factory DriftDownloadInfoData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftDownloadInfoData(
      id: serializer.fromJson<int>(json['id']),
      url: serializer.fromJson<String>(json['url']),
      folder: serializer.fromJson<String?>(json['folder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'url': serializer.toJson<String>(url),
      'folder': serializer.toJson<String?>(folder),
    };
  }

  DriftDownloadInfoData copyWith({
    int? id,
    String? url,
    Value<String?> folder = const Value.absent(),
  }) => DriftDownloadInfoData(
    id: id ?? this.id,
    url: url ?? this.url,
    folder: folder.present ? folder.value : this.folder,
  );
  DriftDownloadInfoData copyWithCompanion(DriftDownloadInfoCompanion data) {
    return DriftDownloadInfoData(
      id: data.id.present ? data.id.value : this.id,
      url: data.url.present ? data.url.value : this.url,
      folder: data.folder.present ? data.folder.value : this.folder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DriftDownloadInfoData(')
          ..write('id: $id, ')
          ..write('url: $url, ')
          ..write('folder: $folder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, url, folder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftDownloadInfoData &&
          other.id == this.id &&
          other.url == this.url &&
          other.folder == this.folder);
}

class DriftDownloadInfoCompanion
    extends UpdateCompanion<DriftDownloadInfoData> {
  final Value<int> id;
  final Value<String> url;
  final Value<String?> folder;
  const DriftDownloadInfoCompanion({
    this.id = const Value.absent(),
    this.url = const Value.absent(),
    this.folder = const Value.absent(),
  });
  DriftDownloadInfoCompanion.insert({
    this.id = const Value.absent(),
    required String url,
    this.folder = const Value.absent(),
  }) : url = Value(url);
  static Insertable<DriftDownloadInfoData> custom({
    Expression<int>? id,
    Expression<String>? url,
    Expression<String>? folder,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (url != null) 'url': url,
      if (folder != null) 'folder': folder,
    });
  }

  DriftDownloadInfoCompanion copyWith({
    Value<int>? id,
    Value<String>? url,
    Value<String?>? folder,
  }) {
    return DriftDownloadInfoCompanion(
      id: id ?? this.id,
      url: url ?? this.url,
      folder: folder ?? this.folder,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (folder.present) {
      map['folder'] = Variable<String>(folder.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftDownloadInfoCompanion(')
          ..write('id: $id, ')
          ..write('url: $url, ')
          ..write('folder: $folder')
          ..write(')'))
        .toString();
  }
}

abstract class _$DriftSoraDatabase extends GeneratedDatabase {
  _$DriftSoraDatabase(QueryExecutor e) : super(e);
  $DriftSoraDatabaseManager get managers => $DriftSoraDatabaseManager(this);
  late final $DriftDownloadInfoTable driftDownloadInfo =
      $DriftDownloadInfoTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [driftDownloadInfo];
}

typedef $$DriftDownloadInfoTableCreateCompanionBuilder =
    DriftDownloadInfoCompanion Function({
      Value<int> id,
      required String url,
      Value<String?> folder,
    });
typedef $$DriftDownloadInfoTableUpdateCompanionBuilder =
    DriftDownloadInfoCompanion Function({
      Value<int> id,
      Value<String> url,
      Value<String?> folder,
    });

class $$DriftDownloadInfoTableFilterComposer
    extends Composer<_$DriftSoraDatabase, $DriftDownloadInfoTable> {
  $$DriftDownloadInfoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get folder => $composableBuilder(
    column: $table.folder,
    builder: (column) => ColumnFilters(column),
  );
}

class $$DriftDownloadInfoTableOrderingComposer
    extends Composer<_$DriftSoraDatabase, $DriftDownloadInfoTable> {
  $$DriftDownloadInfoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get folder => $composableBuilder(
    column: $table.folder,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$DriftDownloadInfoTableAnnotationComposer
    extends Composer<_$DriftSoraDatabase, $DriftDownloadInfoTable> {
  $$DriftDownloadInfoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get folder =>
      $composableBuilder(column: $table.folder, builder: (column) => column);
}

class $$DriftDownloadInfoTableTableManager
    extends
        RootTableManager<
          _$DriftSoraDatabase,
          $DriftDownloadInfoTable,
          DriftDownloadInfoData,
          $$DriftDownloadInfoTableFilterComposer,
          $$DriftDownloadInfoTableOrderingComposer,
          $$DriftDownloadInfoTableAnnotationComposer,
          $$DriftDownloadInfoTableCreateCompanionBuilder,
          $$DriftDownloadInfoTableUpdateCompanionBuilder,
          (
            DriftDownloadInfoData,
            BaseReferences<
              _$DriftSoraDatabase,
              $DriftDownloadInfoTable,
              DriftDownloadInfoData
            >,
          ),
          DriftDownloadInfoData,
          PrefetchHooks Function()
        > {
  $$DriftDownloadInfoTableTableManager(
    _$DriftSoraDatabase db,
    $DriftDownloadInfoTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$DriftDownloadInfoTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$DriftDownloadInfoTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$DriftDownloadInfoTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> url = const Value.absent(),
                Value<String?> folder = const Value.absent(),
              }) =>
                  DriftDownloadInfoCompanion(id: id, url: url, folder: folder),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String url,
                Value<String?> folder = const Value.absent(),
              }) => DriftDownloadInfoCompanion.insert(
                id: id,
                url: url,
                folder: folder,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$DriftDownloadInfoTableProcessedTableManager =
    ProcessedTableManager<
      _$DriftSoraDatabase,
      $DriftDownloadInfoTable,
      DriftDownloadInfoData,
      $$DriftDownloadInfoTableFilterComposer,
      $$DriftDownloadInfoTableOrderingComposer,
      $$DriftDownloadInfoTableAnnotationComposer,
      $$DriftDownloadInfoTableCreateCompanionBuilder,
      $$DriftDownloadInfoTableUpdateCompanionBuilder,
      (
        DriftDownloadInfoData,
        BaseReferences<
          _$DriftSoraDatabase,
          $DriftDownloadInfoTable,
          DriftDownloadInfoData
        >,
      ),
      DriftDownloadInfoData,
      PrefetchHooks Function()
    >;

class $DriftSoraDatabaseManager {
  final _$DriftSoraDatabase _db;
  $DriftSoraDatabaseManager(this._db);
  $$DriftDownloadInfoTableTableManager get driftDownloadInfo =>
      $$DriftDownloadInfoTableTableManager(_db, _db.driftDownloadInfo);
}
