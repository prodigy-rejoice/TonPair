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
import 'match_request_status.dart' as _i2;

abstract class MatchRequest
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  MatchRequest._({
    this.id,
    required this.fromUserId,
    required this.toUserId,
    required this.hackathonId,
    required this.status,
    required this.createdAt,
  });

  factory MatchRequest({
    int? id,
    required int fromUserId,
    required int toUserId,
    required int hackathonId,
    required _i2.MatchStatus status,
    required DateTime createdAt,
  }) = _MatchRequestImpl;

  factory MatchRequest.fromJson(Map<String, dynamic> jsonSerialization) {
    return MatchRequest(
      id: jsonSerialization['id'] as int?,
      fromUserId: jsonSerialization['fromUserId'] as int,
      toUserId: jsonSerialization['toUserId'] as int,
      hackathonId: jsonSerialization['hackathonId'] as int,
      status: _i2.MatchStatus.fromJson((jsonSerialization['status'] as String)),
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  static final t = MatchRequestTable();

  static const db = MatchRequestRepository._();

  @override
  int? id;

  int fromUserId;

  int toUserId;

  int hackathonId;

  _i2.MatchStatus status;

  DateTime createdAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [MatchRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  MatchRequest copyWith({
    int? id,
    int? fromUserId,
    int? toUserId,
    int? hackathonId,
    _i2.MatchStatus? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'MatchRequest',
      if (id != null) 'id': id,
      'fromUserId': fromUserId,
      'toUserId': toUserId,
      'hackathonId': hackathonId,
      'status': status.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'MatchRequest',
      if (id != null) 'id': id,
      'fromUserId': fromUserId,
      'toUserId': toUserId,
      'hackathonId': hackathonId,
      'status': status.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static MatchRequestInclude include() {
    return MatchRequestInclude._();
  }

  static MatchRequestIncludeList includeList({
    _i1.WhereExpressionBuilder<MatchRequestTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MatchRequestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MatchRequestTable>? orderByList,
    MatchRequestInclude? include,
  }) {
    return MatchRequestIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MatchRequest.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(MatchRequest.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MatchRequestImpl extends MatchRequest {
  _MatchRequestImpl({
    int? id,
    required int fromUserId,
    required int toUserId,
    required int hackathonId,
    required _i2.MatchStatus status,
    required DateTime createdAt,
  }) : super._(
         id: id,
         fromUserId: fromUserId,
         toUserId: toUserId,
         hackathonId: hackathonId,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [MatchRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  MatchRequest copyWith({
    Object? id = _Undefined,
    int? fromUserId,
    int? toUserId,
    int? hackathonId,
    _i2.MatchStatus? status,
    DateTime? createdAt,
  }) {
    return MatchRequest(
      id: id is int? ? id : this.id,
      fromUserId: fromUserId ?? this.fromUserId,
      toUserId: toUserId ?? this.toUserId,
      hackathonId: hackathonId ?? this.hackathonId,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class MatchRequestUpdateTable extends _i1.UpdateTable<MatchRequestTable> {
  MatchRequestUpdateTable(super.table);

  _i1.ColumnValue<int, int> fromUserId(int value) => _i1.ColumnValue(
    table.fromUserId,
    value,
  );

  _i1.ColumnValue<int, int> toUserId(int value) => _i1.ColumnValue(
    table.toUserId,
    value,
  );

  _i1.ColumnValue<int, int> hackathonId(int value) => _i1.ColumnValue(
    table.hackathonId,
    value,
  );

  _i1.ColumnValue<_i2.MatchStatus, _i2.MatchStatus> status(
    _i2.MatchStatus value,
  ) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );
}

class MatchRequestTable extends _i1.Table<int?> {
  MatchRequestTable({super.tableRelation})
    : super(tableName: 'match_requests') {
    updateTable = MatchRequestUpdateTable(this);
    fromUserId = _i1.ColumnInt(
      'fromUserId',
      this,
    );
    toUserId = _i1.ColumnInt(
      'toUserId',
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
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final MatchRequestUpdateTable updateTable;

  late final _i1.ColumnInt fromUserId;

  late final _i1.ColumnInt toUserId;

  late final _i1.ColumnInt hackathonId;

  late final _i1.ColumnEnum<_i2.MatchStatus> status;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
    id,
    fromUserId,
    toUserId,
    hackathonId,
    status,
    createdAt,
  ];
}

class MatchRequestInclude extends _i1.IncludeObject {
  MatchRequestInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => MatchRequest.t;
}

class MatchRequestIncludeList extends _i1.IncludeList {
  MatchRequestIncludeList._({
    _i1.WhereExpressionBuilder<MatchRequestTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(MatchRequest.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => MatchRequest.t;
}

class MatchRequestRepository {
  const MatchRequestRepository._();

  /// Returns a list of [MatchRequest]s matching the given query parameters.
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
  Future<List<MatchRequest>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MatchRequestTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MatchRequestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MatchRequestTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<MatchRequest>(
      where: where?.call(MatchRequest.t),
      orderBy: orderBy?.call(MatchRequest.t),
      orderByList: orderByList?.call(MatchRequest.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [MatchRequest] matching the given query parameters.
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
  Future<MatchRequest?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MatchRequestTable>? where,
    int? offset,
    _i1.OrderByBuilder<MatchRequestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MatchRequestTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<MatchRequest>(
      where: where?.call(MatchRequest.t),
      orderBy: orderBy?.call(MatchRequest.t),
      orderByList: orderByList?.call(MatchRequest.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [MatchRequest] by its [id] or null if no such row exists.
  Future<MatchRequest?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<MatchRequest>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [MatchRequest]s in the list and returns the inserted rows.
  ///
  /// The returned [MatchRequest]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<MatchRequest>> insert(
    _i1.Session session,
    List<MatchRequest> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<MatchRequest>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [MatchRequest] and returns the inserted row.
  ///
  /// The returned [MatchRequest] will have its `id` field set.
  Future<MatchRequest> insertRow(
    _i1.Session session,
    MatchRequest row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<MatchRequest>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [MatchRequest]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<MatchRequest>> update(
    _i1.Session session,
    List<MatchRequest> rows, {
    _i1.ColumnSelections<MatchRequestTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<MatchRequest>(
      rows,
      columns: columns?.call(MatchRequest.t),
      transaction: transaction,
    );
  }

  /// Updates a single [MatchRequest]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<MatchRequest> updateRow(
    _i1.Session session,
    MatchRequest row, {
    _i1.ColumnSelections<MatchRequestTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<MatchRequest>(
      row,
      columns: columns?.call(MatchRequest.t),
      transaction: transaction,
    );
  }

  /// Updates a single [MatchRequest] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<MatchRequest?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<MatchRequestUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<MatchRequest>(
      id,
      columnValues: columnValues(MatchRequest.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [MatchRequest]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<MatchRequest>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<MatchRequestUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<MatchRequestTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MatchRequestTable>? orderBy,
    _i1.OrderByListBuilder<MatchRequestTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<MatchRequest>(
      columnValues: columnValues(MatchRequest.t.updateTable),
      where: where(MatchRequest.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MatchRequest.t),
      orderByList: orderByList?.call(MatchRequest.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [MatchRequest]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<MatchRequest>> delete(
    _i1.Session session,
    List<MatchRequest> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<MatchRequest>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [MatchRequest].
  Future<MatchRequest> deleteRow(
    _i1.Session session,
    MatchRequest row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<MatchRequest>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<MatchRequest>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MatchRequestTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<MatchRequest>(
      where: where(MatchRequest.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MatchRequestTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<MatchRequest>(
      where: where?.call(MatchRequest.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
