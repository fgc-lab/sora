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
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: Constant(DateTime.now()),
  );
  @override
  List<GeneratedColumn> get $columns => [id, url, folder, updatedAt];
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
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
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
      updatedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}updated_at'],
          )!,
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
  final DateTime updatedAt;
  const DriftDownloadInfoData({
    required this.id,
    required this.url,
    this.folder,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['url'] = Variable<String>(url);
    if (!nullToAbsent || folder != null) {
      map['folder'] = Variable<String>(folder);
    }
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  DriftDownloadInfoCompanion toCompanion(bool nullToAbsent) {
    return DriftDownloadInfoCompanion(
      id: Value(id),
      url: Value(url),
      folder:
          folder == null && nullToAbsent ? const Value.absent() : Value(folder),
      updatedAt: Value(updatedAt),
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
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'url': serializer.toJson<String>(url),
      'folder': serializer.toJson<String?>(folder),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  DriftDownloadInfoData copyWith({
    int? id,
    String? url,
    Value<String?> folder = const Value.absent(),
    DateTime? updatedAt,
  }) => DriftDownloadInfoData(
    id: id ?? this.id,
    url: url ?? this.url,
    folder: folder.present ? folder.value : this.folder,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  DriftDownloadInfoData copyWithCompanion(DriftDownloadInfoCompanion data) {
    return DriftDownloadInfoData(
      id: data.id.present ? data.id.value : this.id,
      url: data.url.present ? data.url.value : this.url,
      folder: data.folder.present ? data.folder.value : this.folder,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DriftDownloadInfoData(')
          ..write('id: $id, ')
          ..write('url: $url, ')
          ..write('folder: $folder, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, url, folder, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftDownloadInfoData &&
          other.id == this.id &&
          other.url == this.url &&
          other.folder == this.folder &&
          other.updatedAt == this.updatedAt);
}

class DriftDownloadInfoCompanion
    extends UpdateCompanion<DriftDownloadInfoData> {
  final Value<int> id;
  final Value<String> url;
  final Value<String?> folder;
  final Value<DateTime> updatedAt;
  const DriftDownloadInfoCompanion({
    this.id = const Value.absent(),
    this.url = const Value.absent(),
    this.folder = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  DriftDownloadInfoCompanion.insert({
    this.id = const Value.absent(),
    required String url,
    this.folder = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : url = Value(url);
  static Insertable<DriftDownloadInfoData> custom({
    Expression<int>? id,
    Expression<String>? url,
    Expression<String>? folder,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (url != null) 'url': url,
      if (folder != null) 'folder': folder,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  DriftDownloadInfoCompanion copyWith({
    Value<int>? id,
    Value<String>? url,
    Value<String?>? folder,
    Value<DateTime>? updatedAt,
  }) {
    return DriftDownloadInfoCompanion(
      id: id ?? this.id,
      url: url ?? this.url,
      folder: folder ?? this.folder,
      updatedAt: updatedAt ?? this.updatedAt,
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
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftDownloadInfoCompanion(')
          ..write('id: $id, ')
          ..write('url: $url, ')
          ..write('folder: $folder, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $DriftSettingsTable extends DriftSettings
    with TableInfo<$DriftSettingsTable, DriftSetting> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftSettingsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _configMeta = const VerificationMeta('config');
  @override
  late final GeneratedColumn<String> config = GeneratedColumn<String>(
    'config',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _darkModeMeta = const VerificationMeta(
    'darkMode',
  );
  @override
  late final GeneratedColumn<bool> darkMode = GeneratedColumn<bool>(
    'dark_mode',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("dark_mode" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: Constant(DateTime.now()),
  );
  @override
  List<GeneratedColumn> get $columns => [id, config, darkMode, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'drift_settings';
  @override
  VerificationContext validateIntegrity(
    Insertable<DriftSetting> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('config')) {
      context.handle(
        _configMeta,
        config.isAcceptableOrUnknown(data['config']!, _configMeta),
      );
    } else if (isInserting) {
      context.missing(_configMeta);
    }
    if (data.containsKey('dark_mode')) {
      context.handle(
        _darkModeMeta,
        darkMode.isAcceptableOrUnknown(data['dark_mode']!, _darkModeMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftSetting map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftSetting(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      config:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}config'],
          )!,
      darkMode:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}dark_mode'],
          )!,
      updatedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}updated_at'],
          )!,
    );
  }

  @override
  $DriftSettingsTable createAlias(String alias) {
    return $DriftSettingsTable(attachedDatabase, alias);
  }
}

class DriftSetting extends DataClass implements Insertable<DriftSetting> {
  final int id;
  final String config;
  final bool darkMode;
  final DateTime updatedAt;
  const DriftSetting({
    required this.id,
    required this.config,
    required this.darkMode,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['config'] = Variable<String>(config);
    map['dark_mode'] = Variable<bool>(darkMode);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  DriftSettingsCompanion toCompanion(bool nullToAbsent) {
    return DriftSettingsCompanion(
      id: Value(id),
      config: Value(config),
      darkMode: Value(darkMode),
      updatedAt: Value(updatedAt),
    );
  }

  factory DriftSetting.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftSetting(
      id: serializer.fromJson<int>(json['id']),
      config: serializer.fromJson<String>(json['config']),
      darkMode: serializer.fromJson<bool>(json['darkMode']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'config': serializer.toJson<String>(config),
      'darkMode': serializer.toJson<bool>(darkMode),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  DriftSetting copyWith({
    int? id,
    String? config,
    bool? darkMode,
    DateTime? updatedAt,
  }) => DriftSetting(
    id: id ?? this.id,
    config: config ?? this.config,
    darkMode: darkMode ?? this.darkMode,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  DriftSetting copyWithCompanion(DriftSettingsCompanion data) {
    return DriftSetting(
      id: data.id.present ? data.id.value : this.id,
      config: data.config.present ? data.config.value : this.config,
      darkMode: data.darkMode.present ? data.darkMode.value : this.darkMode,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DriftSetting(')
          ..write('id: $id, ')
          ..write('config: $config, ')
          ..write('darkMode: $darkMode, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, config, darkMode, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftSetting &&
          other.id == this.id &&
          other.config == this.config &&
          other.darkMode == this.darkMode &&
          other.updatedAt == this.updatedAt);
}

class DriftSettingsCompanion extends UpdateCompanion<DriftSetting> {
  final Value<int> id;
  final Value<String> config;
  final Value<bool> darkMode;
  final Value<DateTime> updatedAt;
  const DriftSettingsCompanion({
    this.id = const Value.absent(),
    this.config = const Value.absent(),
    this.darkMode = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  DriftSettingsCompanion.insert({
    this.id = const Value.absent(),
    required String config,
    this.darkMode = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : config = Value(config);
  static Insertable<DriftSetting> custom({
    Expression<int>? id,
    Expression<String>? config,
    Expression<bool>? darkMode,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (config != null) 'config': config,
      if (darkMode != null) 'dark_mode': darkMode,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  DriftSettingsCompanion copyWith({
    Value<int>? id,
    Value<String>? config,
    Value<bool>? darkMode,
    Value<DateTime>? updatedAt,
  }) {
    return DriftSettingsCompanion(
      id: id ?? this.id,
      config: config ?? this.config,
      darkMode: darkMode ?? this.darkMode,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (config.present) {
      map['config'] = Variable<String>(config.value);
    }
    if (darkMode.present) {
      map['dark_mode'] = Variable<bool>(darkMode.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftSettingsCompanion(')
          ..write('id: $id, ')
          ..write('config: $config, ')
          ..write('darkMode: $darkMode, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$DriftSoraDatabase extends GeneratedDatabase {
  _$DriftSoraDatabase(QueryExecutor e) : super(e);
  $DriftSoraDatabaseManager get managers => $DriftSoraDatabaseManager(this);
  late final $DriftDownloadInfoTable driftDownloadInfo =
      $DriftDownloadInfoTable(this);
  late final $DriftSettingsTable driftSettings = $DriftSettingsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    driftDownloadInfo,
    driftSettings,
  ];
}

typedef $$DriftDownloadInfoTableCreateCompanionBuilder =
    DriftDownloadInfoCompanion Function({
      Value<int> id,
      required String url,
      Value<String?> folder,
      Value<DateTime> updatedAt,
    });
typedef $$DriftDownloadInfoTableUpdateCompanionBuilder =
    DriftDownloadInfoCompanion Function({
      Value<int> id,
      Value<String> url,
      Value<String?> folder,
      Value<DateTime> updatedAt,
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

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
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

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
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

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
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
                Value<DateTime> updatedAt = const Value.absent(),
              }) => DriftDownloadInfoCompanion(
                id: id,
                url: url,
                folder: folder,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String url,
                Value<String?> folder = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => DriftDownloadInfoCompanion.insert(
                id: id,
                url: url,
                folder: folder,
                updatedAt: updatedAt,
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
typedef $$DriftSettingsTableCreateCompanionBuilder =
    DriftSettingsCompanion Function({
      Value<int> id,
      required String config,
      Value<bool> darkMode,
      Value<DateTime> updatedAt,
    });
typedef $$DriftSettingsTableUpdateCompanionBuilder =
    DriftSettingsCompanion Function({
      Value<int> id,
      Value<String> config,
      Value<bool> darkMode,
      Value<DateTime> updatedAt,
    });

class $$DriftSettingsTableFilterComposer
    extends Composer<_$DriftSoraDatabase, $DriftSettingsTable> {
  $$DriftSettingsTableFilterComposer({
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

  ColumnFilters<String> get config => $composableBuilder(
    column: $table.config,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get darkMode => $composableBuilder(
    column: $table.darkMode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$DriftSettingsTableOrderingComposer
    extends Composer<_$DriftSoraDatabase, $DriftSettingsTable> {
  $$DriftSettingsTableOrderingComposer({
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

  ColumnOrderings<String> get config => $composableBuilder(
    column: $table.config,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get darkMode => $composableBuilder(
    column: $table.darkMode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$DriftSettingsTableAnnotationComposer
    extends Composer<_$DriftSoraDatabase, $DriftSettingsTable> {
  $$DriftSettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get config =>
      $composableBuilder(column: $table.config, builder: (column) => column);

  GeneratedColumn<bool> get darkMode =>
      $composableBuilder(column: $table.darkMode, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$DriftSettingsTableTableManager
    extends
        RootTableManager<
          _$DriftSoraDatabase,
          $DriftSettingsTable,
          DriftSetting,
          $$DriftSettingsTableFilterComposer,
          $$DriftSettingsTableOrderingComposer,
          $$DriftSettingsTableAnnotationComposer,
          $$DriftSettingsTableCreateCompanionBuilder,
          $$DriftSettingsTableUpdateCompanionBuilder,
          (
            DriftSetting,
            BaseReferences<
              _$DriftSoraDatabase,
              $DriftSettingsTable,
              DriftSetting
            >,
          ),
          DriftSetting,
          PrefetchHooks Function()
        > {
  $$DriftSettingsTableTableManager(
    _$DriftSoraDatabase db,
    $DriftSettingsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$DriftSettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () =>
                  $$DriftSettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$DriftSettingsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> config = const Value.absent(),
                Value<bool> darkMode = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => DriftSettingsCompanion(
                id: id,
                config: config,
                darkMode: darkMode,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String config,
                Value<bool> darkMode = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => DriftSettingsCompanion.insert(
                id: id,
                config: config,
                darkMode: darkMode,
                updatedAt: updatedAt,
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

typedef $$DriftSettingsTableProcessedTableManager =
    ProcessedTableManager<
      _$DriftSoraDatabase,
      $DriftSettingsTable,
      DriftSetting,
      $$DriftSettingsTableFilterComposer,
      $$DriftSettingsTableOrderingComposer,
      $$DriftSettingsTableAnnotationComposer,
      $$DriftSettingsTableCreateCompanionBuilder,
      $$DriftSettingsTableUpdateCompanionBuilder,
      (
        DriftSetting,
        BaseReferences<_$DriftSoraDatabase, $DriftSettingsTable, DriftSetting>,
      ),
      DriftSetting,
      PrefetchHooks Function()
    >;

class $DriftSoraDatabaseManager {
  final _$DriftSoraDatabase _db;
  $DriftSoraDatabaseManager(this._db);
  $$DriftDownloadInfoTableTableManager get driftDownloadInfo =>
      $$DriftDownloadInfoTableTableManager(_db, _db.driftDownloadInfo);
  $$DriftSettingsTableTableManager get driftSettings =>
      $$DriftSettingsTableTableManager(_db, _db.driftSettings);
}
