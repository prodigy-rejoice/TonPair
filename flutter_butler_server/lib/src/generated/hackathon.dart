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

abstract class Hackathon
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Hackathon._({
    this.id,
    required this.name,
    required this.code,
    required this.startDate,
    required this.endDate,
    required this.description,
    required this.ownerID,
  });

  factory Hackathon({
    int? id,
    required String name,
    required String code,
    required DateTime startDate,
    required DateTime endDate,
    required String description,
    required int ownerID,
  }) = _HackathonImpl;

  factory Hackathon.fromJson(Map<String, dynamic> jsonSerialization) {
    return Hackathon(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      code: jsonSerialization['code'] as String,
      startDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['startDate'],
      ),
      endDate: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['endDate']),
      description: jsonSerialization['description'] as String,
      ownerID: jsonSerialization['ownerID'] as int,
    );
  }

  static final t = HackathonTable();

  static const db = HackathonRepository._();

  @override
  int? id;

  String name;

  String code;

  DateTime startDate;

  DateTime endDate;

  String description;

  int ownerID;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Hackathon]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Hackathon copyWith({
    int? id,
    String? name,
    String? code,
    DateTime? startDate,
    DateTime? endDate,
    String? description,
    int? ownerID,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Hackathon',
      if (id != null) 'id': id,
      'name': name,
      'code': code,
      'startDate': startDate.toJson(),
      'endDate': endDate.toJson(),
      'description': description,
      'ownerID': ownerID,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Hackathon',
      if (id != null) 'id': id,
      'name': name,
      'code': code,
      'startDate': startDate.toJson(),
      'endDate': endDate.toJson(),
      'description': description,
      'ownerID': ownerID,
    };
  }

  static HackathonInclude include() {
    return HackathonInclude._();
  }

  static HackathonIncludeList includeList({
    _i1.WhereExpressionBuilder<HackathonTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<HackathonTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<HackathonTable>? orderByList,
    HackathonInclude? include,
  }) {
    return HackathonIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Hackathon.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Hackathon.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _HackathonImpl extends Hackathon {
  _HackathonImpl({
    int? id,
    required String name,
    required String code,
    required DateTime startDate,
    required DateTime endDate,
    required String description,
    required int ownerID,
  }) : super._(
         id: id,
         name: name,
         code: code,
         startDate: startDate,
         endDate: endDate,
         description: description,
         ownerID: ownerID,
       );

  /// Returns a shallow copy of this [Hackathon]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Hackathon copyWith({
    Object? id = _Undefined,
    String? name,
    String? code,
    DateTime? startDate,
    DateTime? endDate,
    String? description,
    int? ownerID,
  }) {
    return Hackathon(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      description: description ?? this.description,
      ownerID: ownerID ?? this.ownerID,
    );
  }
}

class HackathonUpdateTable extends _i1.UpdateTable<HackathonTable> {
  HackathonUpdateTable(super.table);

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> code(String value) => _i1.ColumnValue(
    table.code,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> startDate(DateTime value) =>
      _i1.ColumnValue(
        table.startDate,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> endDate(DateTime value) =>
      _i1.ColumnValue(
        table.endDate,
        value,
      );

  _i1.ColumnValue<String, String> description(String value) => _i1.ColumnValue(
    table.description,
    value,
  );

  _i1.ColumnValue<int, int> ownerID(int value) => _i1.ColumnValue(
    table.ownerID,
    value,
  );
}

class HackathonTable extends _i1.Table<int?> {
  HackathonTable({super.tableRelation}) : super(tableName: 'hackathons') {
    updateTable = HackathonUpdateTable(this);
    name = _i1.ColumnString(
      'name',
      this,
    );
    code = _i1.ColumnString(
      'code',
      this,
    );
    startDate = _i1.ColumnDateTime(
      'startDate',
      this,
    );
    endDate = _i1.ColumnDateTime(
      'endDate',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    ownerID = _i1.ColumnInt(
      'ownerID',
      this,
    );
  }

  late final HackathonUpdateTable updateTable;

  late final _i1.ColumnString name;

  late final _i1.ColumnString code;

  late final _i1.ColumnDateTime startDate;

  late final _i1.ColumnDateTime endDate;

  late final _i1.ColumnString description;

  late final _i1.ColumnInt ownerID;

  @override
  List<_i1.Column> get columns => [
    id,
    name,
    code,
    startDate,
    endDate,
    description,
    ownerID,
  ];
}

class HackathonInclude extends _i1.IncludeObject {
  HackathonInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Hackathon.t;
}

class HackathonIncludeList extends _i1.IncludeList {
  HackathonIncludeList._({
    _i1.WhereExpressionBuilder<HackathonTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Hackathon.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Hackathon.t;
}

class HackathonRepository {
  const HackathonRepository._();

  /// Returns a list of [Hackathon]s matching the given query parameters.
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
  Future<List<Hackathon>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<HackathonTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<HackathonTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<HackathonTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Hackathon>(
      where: where?.call(Hackathon.t),
      orderBy: orderBy?.call(Hackathon.t),
      orderByList: orderByList?.call(Hackathon.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Hackathon] matching the given query parameters.
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
  Future<Hackathon?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<HackathonTable>? where,
    int? offset,
    _i1.OrderByBuilder<HackathonTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<HackathonTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Hackathon>(
      where: where?.call(Hackathon.t),
      orderBy: orderBy?.call(Hackathon.t),
      orderByList: orderByList?.call(Hackathon.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Hackathon] by its [id] or null if no such row exists.
  Future<Hackathon?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Hackathon>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Hackathon]s in the list and returns the inserted rows.
  ///
  /// The returned [Hackathon]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Hackathon>> insert(
    _i1.Session session,
    List<Hackathon> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Hackathon>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Hackathon] and returns the inserted row.
  ///
  /// The returned [Hackathon] will have its `id` field set.
  Future<Hackathon> insertRow(
    _i1.Session session,
    Hackathon row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Hackathon>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Hackathon]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Hackathon>> update(
    _i1.Session session,
    List<Hackathon> rows, {
    _i1.ColumnSelections<HackathonTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Hackathon>(
      rows,
      columns: columns?.call(Hackathon.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Hackathon]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Hackathon> updateRow(
    _i1.Session session,
    Hackathon row, {
    _i1.ColumnSelections<HackathonTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Hackathon>(
      row,
      columns: columns?.call(Hackathon.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Hackathon] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Hackathon?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<HackathonUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Hackathon>(
      id,
      columnValues: columnValues(Hackathon.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Hackathon]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Hackathon>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<HackathonUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<HackathonTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<HackathonTable>? orderBy,
    _i1.OrderByListBuilder<HackathonTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Hackathon>(
      columnValues: columnValues(Hackathon.t.updateTable),
      where: where(Hackathon.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Hackathon.t),
      orderByList: orderByList?.call(Hackathon.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Hackathon]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Hackathon>> delete(
    _i1.Session session,
    List<Hackathon> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Hackathon>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Hackathon].
  Future<Hackathon> deleteRow(
    _i1.Session session,
    Hackathon row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Hackathon>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Hackathon>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<HackathonTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Hackathon>(
      where: where(Hackathon.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<HackathonTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Hackathon>(
      where: where?.call(Hackathon.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
