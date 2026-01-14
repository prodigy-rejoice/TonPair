/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'participant_status.dart' as _i2;

abstract class Participant
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Participant._({
    this.id,
    required this.userId,
    required this.hackathonId,
    required this.status,
  });

  factory Participant({
    int? id,
    required int userId,
    required int hackathonId,
    required _i2.ParticipantStatus status,
  }) = _ParticipantImpl;

  factory Participant.fromJson(Map<String, dynamic> jsonSerialization) {
    return Participant(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      hackathonId: jsonSerialization['hackathonId'] as int,
      status: _i2.ParticipantStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
    );
  }

  static final t = ParticipantTable();

  static const db = ParticipantRepository._();

  @override
  int? id;

  int userId;

  int hackathonId;

  _i2.ParticipantStatus status;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Participant]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Participant copyWith({
    int? id,
    int? userId,
    int? hackathonId,
    _i2.ParticipantStatus? status,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Participant',
      if (id != null) 'id': id,
      'userId': userId,
      'hackathonId': hackathonId,
      'status': status.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Participant',
      if (id != null) 'id': id,
      'userId': userId,
      'hackathonId': hackathonId,
      'status': status.toJson(),
    };
  }

  static ParticipantInclude include() {
    return ParticipantInclude._();
  }

  static ParticipantIncludeList includeList({
    _i1.WhereExpressionBuilder<ParticipantTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ParticipantTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ParticipantTable>? orderByList,
    ParticipantInclude? include,
  }) {
    return ParticipantIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Participant.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Participant.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ParticipantImpl extends Participant {
  _ParticipantImpl({
    int? id,
    required int userId,
    required int hackathonId,
    required _i2.ParticipantStatus status,
  }) : super._(
         id: id,
         userId: userId,
         hackathonId: hackathonId,
         status: status,
       );

  /// Returns a shallow copy of this [Participant]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Participant copyWith({
    Object? id = _Undefined,
    int? userId,
    int? hackathonId,
    _i2.ParticipantStatus? status,
  }) {
    return Participant(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      hackathonId: hackathonId ?? this.hackathonId,
      status: status ?? this.status,
    );
  }
}

class ParticipantUpdateTable extends _i1.UpdateTable<ParticipantTable> {
  ParticipantUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<int, int> hackathonId(int value) => _i1.ColumnValue(
    table.hackathonId,
    value,
  );

  _i1.ColumnValue<_i2.ParticipantStatus, _i2.ParticipantStatus> status(
    _i2.ParticipantStatus value,
  ) => _i1.ColumnValue(
    table.status,
    value,
  );
}

class ParticipantTable extends _i1.Table<int?> {
  ParticipantTable({super.tableRelation}) : super(tableName: 'participants') {
    updateTable = ParticipantUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    hackathonId = _i1.ColumnInt(
      'hackathonId',
      this,
    );
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byName,
    );
  }

  late final ParticipantUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnInt hackathonId;

  late final _i1.ColumnEnum<_i2.ParticipantStatus> status;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    hackathonId,
    status,
  ];
}

class ParticipantInclude extends _i1.IncludeObject {
  ParticipantInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Participant.t;
}

class ParticipantIncludeList extends _i1.IncludeList {
  ParticipantIncludeList._({
    _i1.WhereExpressionBuilder<ParticipantTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Participant.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Participant.t;
}

class ParticipantRepository {
  const ParticipantRepository._();

  /// Returns a list of [Participant]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<Participant>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ParticipantTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ParticipantTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ParticipantTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Participant>(
      where: where?.call(Participant.t),
      orderBy: orderBy?.call(Participant.t),
      orderByList: orderByList?.call(Participant.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Participant] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<Participant?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ParticipantTable>? where,
    int? offset,
    _i1.OrderByBuilder<ParticipantTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ParticipantTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Participant>(
      where: where?.call(Participant.t),
      orderBy: orderBy?.call(Participant.t),
      orderByList: orderByList?.call(Participant.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Participant] by its [id] or null if no such row exists.
  Future<Participant?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Participant>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Participant]s in the list and returns the inserted rows.
  ///
  /// The returned [Participant]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Participant>> insert(
    _i1.Session session,
    List<Participant> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Participant>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Participant] and returns the inserted row.
  ///
  /// The returned [Participant] will have its `id` field set.
  Future<Participant> insertRow(
    _i1.Session session,
    Participant row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Participant>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Participant]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Participant>> update(
    _i1.Session session,
    List<Participant> rows, {
    _i1.ColumnSelections<ParticipantTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Participant>(
      rows,
      columns: columns?.call(Participant.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Participant]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Participant> updateRow(
    _i1.Session session,
    Participant row, {
    _i1.ColumnSelections<ParticipantTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Participant>(
      row,
      columns: columns?.call(Participant.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Participant] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Participant?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<ParticipantUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Participant>(
      id,
      columnValues: columnValues(Participant.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Participant]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Participant>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<ParticipantUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ParticipantTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ParticipantTable>? orderBy,
    _i1.OrderByListBuilder<ParticipantTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Participant>(
      columnValues: columnValues(Participant.t.updateTable),
      where: where(Participant.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Participant.t),
      orderByList: orderByList?.call(Participant.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Participant]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Participant>> delete(
    _i1.Session session,
    List<Participant> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Participant>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Participant].
  Future<Participant> deleteRow(
    _i1.Session session,
    Participant row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Participant>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Participant>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ParticipantTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Participant>(
      where: where(Participant.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ParticipantTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Participant>(
      where: where?.call(Participant.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
