// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $UserAccountsTable extends UserAccounts
    with TableInfo<$UserAccountsTable, UserAccount> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserAccountsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userAccountIdMeta =
      const VerificationMeta('userAccountId');
  @override
  late final GeneratedColumn<int> userAccountId = GeneratedColumn<int>(
      'user_account_id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
      'display_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<double> weight = GeneratedColumn<double>(
      'weight', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _onboardingStatusMeta =
      const VerificationMeta('onboardingStatus');
  @override
  late final GeneratedColumnWithTypeConverter<BooleanStatus?, String>
      onboardingStatus = GeneratedColumn<String>(
              'onboarding_status', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<BooleanStatus?>(
              $UserAccountsTable.$converteronboardingStatusn);
  static const VerificationMeta _dateOfBirthMeta =
      const VerificationMeta('dateOfBirth');
  @override
  late final GeneratedColumn<DateTime> dateOfBirth = GeneratedColumn<DateTime>(
      'date_of_birth', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _sleepTimeMeta =
      const VerificationMeta('sleepTime');
  @override
  late final GeneratedColumn<DateTime> sleepTime = GeneratedColumn<DateTime>(
      'sleep_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _wakeUpTimeMeta =
      const VerificationMeta('wakeUpTime');
  @override
  late final GeneratedColumn<DateTime> wakeUpTime = GeneratedColumn<DateTime>(
      'wake_up_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  @override
  late final GeneratedColumn<DateTime> createdTime = GeneratedColumn<DateTime>(
      'created_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdatedTimeMeta =
      const VerificationMeta('lastUpdatedTime');
  @override
  late final GeneratedColumn<DateTime> lastUpdatedTime =
      GeneratedColumn<DateTime>('last_updated_time', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        userAccountId,
        displayName,
        weight,
        onboardingStatus,
        dateOfBirth,
        sleepTime,
        wakeUpTime,
        createdTime,
        lastUpdatedTime
      ];
  @override
  String get aliasedName => _alias ?? 'user_accounts';
  @override
  String get actualTableName => 'user_accounts';
  @override
  VerificationContext validateIntegrity(Insertable<UserAccount> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_account_id')) {
      context.handle(
          _userAccountIdMeta,
          userAccountId.isAcceptableOrUnknown(
              data['user_account_id']!, _userAccountIdMeta));
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name']!, _displayNameMeta));
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight']!, _weightMeta));
    }
    context.handle(_onboardingStatusMeta, const VerificationResult.success());
    if (data.containsKey('date_of_birth')) {
      context.handle(
          _dateOfBirthMeta,
          dateOfBirth.isAcceptableOrUnknown(
              data['date_of_birth']!, _dateOfBirthMeta));
    }
    if (data.containsKey('sleep_time')) {
      context.handle(_sleepTimeMeta,
          sleepTime.isAcceptableOrUnknown(data['sleep_time']!, _sleepTimeMeta));
    }
    if (data.containsKey('wake_up_time')) {
      context.handle(
          _wakeUpTimeMeta,
          wakeUpTime.isAcceptableOrUnknown(
              data['wake_up_time']!, _wakeUpTimeMeta));
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    } else if (isInserting) {
      context.missing(_createdTimeMeta);
    }
    if (data.containsKey('last_updated_time')) {
      context.handle(
          _lastUpdatedTimeMeta,
          lastUpdatedTime.isAcceptableOrUnknown(
              data['last_updated_time']!, _lastUpdatedTimeMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userAccountId};
  @override
  UserAccount map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserAccount(
      userAccountId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_account_id']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      weight: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}weight']),
      onboardingStatus: $UserAccountsTable.$converteronboardingStatusn.fromSql(
          attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}onboarding_status'])),
      dateOfBirth: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_of_birth']),
      sleepTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}sleep_time']),
      wakeUpTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}wake_up_time']),
      createdTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_time'])!,
      lastUpdatedTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_updated_time'])!,
    );
  }

  @override
  $UserAccountsTable createAlias(String alias) {
    return $UserAccountsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<BooleanStatus, String, String>
      $converteronboardingStatus =
      const EnumNameConverter<BooleanStatus>(BooleanStatus.values);
  static JsonTypeConverter2<BooleanStatus?, String?, String?>
      $converteronboardingStatusn =
      JsonTypeConverter2.asNullable($converteronboardingStatus);
}

class UserAccount extends DataClass implements Insertable<UserAccount> {
  final int? userAccountId;
  final String? displayName;
  final double? weight;
  final BooleanStatus? onboardingStatus;
  final DateTime? dateOfBirth;
  final DateTime? sleepTime;
  final DateTime? wakeUpTime;
  final DateTime createdTime;
  final DateTime lastUpdatedTime;
  const UserAccount(
      {this.userAccountId,
      this.displayName,
      this.weight,
      this.onboardingStatus,
      this.dateOfBirth,
      this.sleepTime,
      this.wakeUpTime,
      required this.createdTime,
      required this.lastUpdatedTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || userAccountId != null) {
      map['user_account_id'] = Variable<int>(userAccountId);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<double>(weight);
    }
    if (!nullToAbsent || onboardingStatus != null) {
      final converter = $UserAccountsTable.$converteronboardingStatusn;
      map['onboarding_status'] =
          Variable<String>(converter.toSql(onboardingStatus));
    }
    if (!nullToAbsent || dateOfBirth != null) {
      map['date_of_birth'] = Variable<DateTime>(dateOfBirth);
    }
    if (!nullToAbsent || sleepTime != null) {
      map['sleep_time'] = Variable<DateTime>(sleepTime);
    }
    if (!nullToAbsent || wakeUpTime != null) {
      map['wake_up_time'] = Variable<DateTime>(wakeUpTime);
    }
    map['created_time'] = Variable<DateTime>(createdTime);
    map['last_updated_time'] = Variable<DateTime>(lastUpdatedTime);
    return map;
  }

  UserAccountsCompanion toCompanion(bool nullToAbsent) {
    return UserAccountsCompanion(
      userAccountId: userAccountId == null && nullToAbsent
          ? const Value.absent()
          : Value(userAccountId),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
      onboardingStatus: onboardingStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(onboardingStatus),
      dateOfBirth: dateOfBirth == null && nullToAbsent
          ? const Value.absent()
          : Value(dateOfBirth),
      sleepTime: sleepTime == null && nullToAbsent
          ? const Value.absent()
          : Value(sleepTime),
      wakeUpTime: wakeUpTime == null && nullToAbsent
          ? const Value.absent()
          : Value(wakeUpTime),
      createdTime: Value(createdTime),
      lastUpdatedTime: Value(lastUpdatedTime),
    );
  }

  factory UserAccount.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserAccount(
      userAccountId: serializer.fromJson<int?>(json['userAccountId']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      weight: serializer.fromJson<double?>(json['weight']),
      onboardingStatus: $UserAccountsTable.$converteronboardingStatusn
          .fromJson(serializer.fromJson<String?>(json['onboardingStatus'])),
      dateOfBirth: serializer.fromJson<DateTime?>(json['dateOfBirth']),
      sleepTime: serializer.fromJson<DateTime?>(json['sleepTime']),
      wakeUpTime: serializer.fromJson<DateTime?>(json['wakeUpTime']),
      createdTime: serializer.fromJson<DateTime>(json['createdTime']),
      lastUpdatedTime: serializer.fromJson<DateTime>(json['lastUpdatedTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userAccountId': serializer.toJson<int?>(userAccountId),
      'displayName': serializer.toJson<String?>(displayName),
      'weight': serializer.toJson<double?>(weight),
      'onboardingStatus': serializer.toJson<String?>($UserAccountsTable
          .$converteronboardingStatusn
          .toJson(onboardingStatus)),
      'dateOfBirth': serializer.toJson<DateTime?>(dateOfBirth),
      'sleepTime': serializer.toJson<DateTime?>(sleepTime),
      'wakeUpTime': serializer.toJson<DateTime?>(wakeUpTime),
      'createdTime': serializer.toJson<DateTime>(createdTime),
      'lastUpdatedTime': serializer.toJson<DateTime>(lastUpdatedTime),
    };
  }

  UserAccount copyWith(
          {Value<int?> userAccountId = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<double?> weight = const Value.absent(),
          Value<BooleanStatus?> onboardingStatus = const Value.absent(),
          Value<DateTime?> dateOfBirth = const Value.absent(),
          Value<DateTime?> sleepTime = const Value.absent(),
          Value<DateTime?> wakeUpTime = const Value.absent(),
          DateTime? createdTime,
          DateTime? lastUpdatedTime}) =>
      UserAccount(
        userAccountId:
            userAccountId.present ? userAccountId.value : this.userAccountId,
        displayName: displayName.present ? displayName.value : this.displayName,
        weight: weight.present ? weight.value : this.weight,
        onboardingStatus: onboardingStatus.present
            ? onboardingStatus.value
            : this.onboardingStatus,
        dateOfBirth: dateOfBirth.present ? dateOfBirth.value : this.dateOfBirth,
        sleepTime: sleepTime.present ? sleepTime.value : this.sleepTime,
        wakeUpTime: wakeUpTime.present ? wakeUpTime.value : this.wakeUpTime,
        createdTime: createdTime ?? this.createdTime,
        lastUpdatedTime: lastUpdatedTime ?? this.lastUpdatedTime,
      );
  @override
  String toString() {
    return (StringBuffer('UserAccount(')
          ..write('userAccountId: $userAccountId, ')
          ..write('displayName: $displayName, ')
          ..write('weight: $weight, ')
          ..write('onboardingStatus: $onboardingStatus, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('sleepTime: $sleepTime, ')
          ..write('wakeUpTime: $wakeUpTime, ')
          ..write('createdTime: $createdTime, ')
          ..write('lastUpdatedTime: $lastUpdatedTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      userAccountId,
      displayName,
      weight,
      onboardingStatus,
      dateOfBirth,
      sleepTime,
      wakeUpTime,
      createdTime,
      lastUpdatedTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserAccount &&
          other.userAccountId == this.userAccountId &&
          other.displayName == this.displayName &&
          other.weight == this.weight &&
          other.onboardingStatus == this.onboardingStatus &&
          other.dateOfBirth == this.dateOfBirth &&
          other.sleepTime == this.sleepTime &&
          other.wakeUpTime == this.wakeUpTime &&
          other.createdTime == this.createdTime &&
          other.lastUpdatedTime == this.lastUpdatedTime);
}

class UserAccountsCompanion extends UpdateCompanion<UserAccount> {
  final Value<int?> userAccountId;
  final Value<String?> displayName;
  final Value<double?> weight;
  final Value<BooleanStatus?> onboardingStatus;
  final Value<DateTime?> dateOfBirth;
  final Value<DateTime?> sleepTime;
  final Value<DateTime?> wakeUpTime;
  final Value<DateTime> createdTime;
  final Value<DateTime> lastUpdatedTime;
  const UserAccountsCompanion({
    this.userAccountId = const Value.absent(),
    this.displayName = const Value.absent(),
    this.weight = const Value.absent(),
    this.onboardingStatus = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.sleepTime = const Value.absent(),
    this.wakeUpTime = const Value.absent(),
    this.createdTime = const Value.absent(),
    this.lastUpdatedTime = const Value.absent(),
  });
  UserAccountsCompanion.insert({
    this.userAccountId = const Value.absent(),
    this.displayName = const Value.absent(),
    this.weight = const Value.absent(),
    this.onboardingStatus = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.sleepTime = const Value.absent(),
    this.wakeUpTime = const Value.absent(),
    required DateTime createdTime,
    required DateTime lastUpdatedTime,
  })  : createdTime = Value(createdTime),
        lastUpdatedTime = Value(lastUpdatedTime);
  static Insertable<UserAccount> custom({
    Expression<int>? userAccountId,
    Expression<String>? displayName,
    Expression<double>? weight,
    Expression<String>? onboardingStatus,
    Expression<DateTime>? dateOfBirth,
    Expression<DateTime>? sleepTime,
    Expression<DateTime>? wakeUpTime,
    Expression<DateTime>? createdTime,
    Expression<DateTime>? lastUpdatedTime,
  }) {
    return RawValuesInsertable({
      if (userAccountId != null) 'user_account_id': userAccountId,
      if (displayName != null) 'display_name': displayName,
      if (weight != null) 'weight': weight,
      if (onboardingStatus != null) 'onboarding_status': onboardingStatus,
      if (dateOfBirth != null) 'date_of_birth': dateOfBirth,
      if (sleepTime != null) 'sleep_time': sleepTime,
      if (wakeUpTime != null) 'wake_up_time': wakeUpTime,
      if (createdTime != null) 'created_time': createdTime,
      if (lastUpdatedTime != null) 'last_updated_time': lastUpdatedTime,
    });
  }

  UserAccountsCompanion copyWith(
      {Value<int?>? userAccountId,
      Value<String?>? displayName,
      Value<double?>? weight,
      Value<BooleanStatus?>? onboardingStatus,
      Value<DateTime?>? dateOfBirth,
      Value<DateTime?>? sleepTime,
      Value<DateTime?>? wakeUpTime,
      Value<DateTime>? createdTime,
      Value<DateTime>? lastUpdatedTime}) {
    return UserAccountsCompanion(
      userAccountId: userAccountId ?? this.userAccountId,
      displayName: displayName ?? this.displayName,
      weight: weight ?? this.weight,
      onboardingStatus: onboardingStatus ?? this.onboardingStatus,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      sleepTime: sleepTime ?? this.sleepTime,
      wakeUpTime: wakeUpTime ?? this.wakeUpTime,
      createdTime: createdTime ?? this.createdTime,
      lastUpdatedTime: lastUpdatedTime ?? this.lastUpdatedTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userAccountId.present) {
      map['user_account_id'] = Variable<int>(userAccountId.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (weight.present) {
      map['weight'] = Variable<double>(weight.value);
    }
    if (onboardingStatus.present) {
      final converter = $UserAccountsTable.$converteronboardingStatusn;
      map['onboarding_status'] =
          Variable<String>(converter.toSql(onboardingStatus.value));
    }
    if (dateOfBirth.present) {
      map['date_of_birth'] = Variable<DateTime>(dateOfBirth.value);
    }
    if (sleepTime.present) {
      map['sleep_time'] = Variable<DateTime>(sleepTime.value);
    }
    if (wakeUpTime.present) {
      map['wake_up_time'] = Variable<DateTime>(wakeUpTime.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<DateTime>(createdTime.value);
    }
    if (lastUpdatedTime.present) {
      map['last_updated_time'] = Variable<DateTime>(lastUpdatedTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserAccountsCompanion(')
          ..write('userAccountId: $userAccountId, ')
          ..write('displayName: $displayName, ')
          ..write('weight: $weight, ')
          ..write('onboardingStatus: $onboardingStatus, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('sleepTime: $sleepTime, ')
          ..write('wakeUpTime: $wakeUpTime, ')
          ..write('createdTime: $createdTime, ')
          ..write('lastUpdatedTime: $lastUpdatedTime')
          ..write(')'))
        .toString();
  }
}

class $TaskActivityRecordsTable extends TaskActivityRecords
    with TableInfo<$TaskActivityRecordsTable, TaskActivityRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TaskActivityRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _taskActivityRecordIdMeta =
      const VerificationMeta('taskActivityRecordId');
  @override
  late final GeneratedColumn<int> taskActivityRecordId = GeneratedColumn<int>(
      'task_activity_record_id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _drinkTypeMeta =
      const VerificationMeta('drinkType');
  @override
  late final GeneratedColumn<String> drinkType = GeneratedColumn<String>(
      'drink_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
      'quantity', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _userAccountIdMeta =
      const VerificationMeta('userAccountId');
  @override
  late final GeneratedColumn<int> userAccountId = GeneratedColumn<int>(
      'user_account_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES user_accounts (user_account_id)'));
  static const VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  @override
  late final GeneratedColumn<DateTime> createdTime = GeneratedColumn<DateTime>(
      'created_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _lastUpdatedTimeMeta =
      const VerificationMeta('lastUpdatedTime');
  @override
  late final GeneratedColumn<DateTime> lastUpdatedTime =
      GeneratedColumn<DateTime>('last_updated_time', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        taskActivityRecordId,
        drinkType,
        quantity,
        userAccountId,
        createdTime,
        lastUpdatedTime
      ];
  @override
  String get aliasedName => _alias ?? 'task_activity_records';
  @override
  String get actualTableName => 'task_activity_records';
  @override
  VerificationContext validateIntegrity(Insertable<TaskActivityRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('task_activity_record_id')) {
      context.handle(
          _taskActivityRecordIdMeta,
          taskActivityRecordId.isAcceptableOrUnknown(
              data['task_activity_record_id']!, _taskActivityRecordIdMeta));
    }
    if (data.containsKey('drink_type')) {
      context.handle(_drinkTypeMeta,
          drinkType.isAcceptableOrUnknown(data['drink_type']!, _drinkTypeMeta));
    } else if (isInserting) {
      context.missing(_drinkTypeMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('user_account_id')) {
      context.handle(
          _userAccountIdMeta,
          userAccountId.isAcceptableOrUnknown(
              data['user_account_id']!, _userAccountIdMeta));
    } else if (isInserting) {
      context.missing(_userAccountIdMeta);
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    }
    if (data.containsKey('last_updated_time')) {
      context.handle(
          _lastUpdatedTimeMeta,
          lastUpdatedTime.isAcceptableOrUnknown(
              data['last_updated_time']!, _lastUpdatedTimeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {taskActivityRecordId};
  @override
  TaskActivityRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TaskActivityRecord(
      taskActivityRecordId: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}task_activity_record_id']),
      drinkType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}drink_type'])!,
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quantity'])!,
      userAccountId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_account_id'])!,
      createdTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_time']),
      lastUpdatedTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_updated_time']),
    );
  }

  @override
  $TaskActivityRecordsTable createAlias(String alias) {
    return $TaskActivityRecordsTable(attachedDatabase, alias);
  }
}

class TaskActivityRecord extends DataClass
    implements Insertable<TaskActivityRecord> {
  final int? taskActivityRecordId;
  final String drinkType;
  final int quantity;
  final int userAccountId;
  final DateTime? createdTime;
  final DateTime? lastUpdatedTime;
  const TaskActivityRecord(
      {this.taskActivityRecordId,
      required this.drinkType,
      required this.quantity,
      required this.userAccountId,
      this.createdTime,
      this.lastUpdatedTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || taskActivityRecordId != null) {
      map['task_activity_record_id'] = Variable<int>(taskActivityRecordId);
    }
    map['drink_type'] = Variable<String>(drinkType);
    map['quantity'] = Variable<int>(quantity);
    map['user_account_id'] = Variable<int>(userAccountId);
    if (!nullToAbsent || createdTime != null) {
      map['created_time'] = Variable<DateTime>(createdTime);
    }
    if (!nullToAbsent || lastUpdatedTime != null) {
      map['last_updated_time'] = Variable<DateTime>(lastUpdatedTime);
    }
    return map;
  }

  TaskActivityRecordsCompanion toCompanion(bool nullToAbsent) {
    return TaskActivityRecordsCompanion(
      taskActivityRecordId: taskActivityRecordId == null && nullToAbsent
          ? const Value.absent()
          : Value(taskActivityRecordId),
      drinkType: Value(drinkType),
      quantity: Value(quantity),
      userAccountId: Value(userAccountId),
      createdTime: createdTime == null && nullToAbsent
          ? const Value.absent()
          : Value(createdTime),
      lastUpdatedTime: lastUpdatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdatedTime),
    );
  }

  factory TaskActivityRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TaskActivityRecord(
      taskActivityRecordId:
          serializer.fromJson<int?>(json['taskActivityRecordId']),
      drinkType: serializer.fromJson<String>(json['drinkType']),
      quantity: serializer.fromJson<int>(json['quantity']),
      userAccountId: serializer.fromJson<int>(json['userAccountId']),
      createdTime: serializer.fromJson<DateTime?>(json['createdTime']),
      lastUpdatedTime: serializer.fromJson<DateTime?>(json['lastUpdatedTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'taskActivityRecordId': serializer.toJson<int?>(taskActivityRecordId),
      'drinkType': serializer.toJson<String>(drinkType),
      'quantity': serializer.toJson<int>(quantity),
      'userAccountId': serializer.toJson<int>(userAccountId),
      'createdTime': serializer.toJson<DateTime?>(createdTime),
      'lastUpdatedTime': serializer.toJson<DateTime?>(lastUpdatedTime),
    };
  }

  TaskActivityRecord copyWith(
          {Value<int?> taskActivityRecordId = const Value.absent(),
          String? drinkType,
          int? quantity,
          int? userAccountId,
          Value<DateTime?> createdTime = const Value.absent(),
          Value<DateTime?> lastUpdatedTime = const Value.absent()}) =>
      TaskActivityRecord(
        taskActivityRecordId: taskActivityRecordId.present
            ? taskActivityRecordId.value
            : this.taskActivityRecordId,
        drinkType: drinkType ?? this.drinkType,
        quantity: quantity ?? this.quantity,
        userAccountId: userAccountId ?? this.userAccountId,
        createdTime: createdTime.present ? createdTime.value : this.createdTime,
        lastUpdatedTime: lastUpdatedTime.present
            ? lastUpdatedTime.value
            : this.lastUpdatedTime,
      );
  @override
  String toString() {
    return (StringBuffer('TaskActivityRecord(')
          ..write('taskActivityRecordId: $taskActivityRecordId, ')
          ..write('drinkType: $drinkType, ')
          ..write('quantity: $quantity, ')
          ..write('userAccountId: $userAccountId, ')
          ..write('createdTime: $createdTime, ')
          ..write('lastUpdatedTime: $lastUpdatedTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(taskActivityRecordId, drinkType, quantity,
      userAccountId, createdTime, lastUpdatedTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TaskActivityRecord &&
          other.taskActivityRecordId == this.taskActivityRecordId &&
          other.drinkType == this.drinkType &&
          other.quantity == this.quantity &&
          other.userAccountId == this.userAccountId &&
          other.createdTime == this.createdTime &&
          other.lastUpdatedTime == this.lastUpdatedTime);
}

class TaskActivityRecordsCompanion extends UpdateCompanion<TaskActivityRecord> {
  final Value<int?> taskActivityRecordId;
  final Value<String> drinkType;
  final Value<int> quantity;
  final Value<int> userAccountId;
  final Value<DateTime?> createdTime;
  final Value<DateTime?> lastUpdatedTime;
  const TaskActivityRecordsCompanion({
    this.taskActivityRecordId = const Value.absent(),
    this.drinkType = const Value.absent(),
    this.quantity = const Value.absent(),
    this.userAccountId = const Value.absent(),
    this.createdTime = const Value.absent(),
    this.lastUpdatedTime = const Value.absent(),
  });
  TaskActivityRecordsCompanion.insert({
    this.taskActivityRecordId = const Value.absent(),
    required String drinkType,
    required int quantity,
    required int userAccountId,
    this.createdTime = const Value.absent(),
    this.lastUpdatedTime = const Value.absent(),
  })  : drinkType = Value(drinkType),
        quantity = Value(quantity),
        userAccountId = Value(userAccountId);
  static Insertable<TaskActivityRecord> custom({
    Expression<int>? taskActivityRecordId,
    Expression<String>? drinkType,
    Expression<int>? quantity,
    Expression<int>? userAccountId,
    Expression<DateTime>? createdTime,
    Expression<DateTime>? lastUpdatedTime,
  }) {
    return RawValuesInsertable({
      if (taskActivityRecordId != null)
        'task_activity_record_id': taskActivityRecordId,
      if (drinkType != null) 'drink_type': drinkType,
      if (quantity != null) 'quantity': quantity,
      if (userAccountId != null) 'user_account_id': userAccountId,
      if (createdTime != null) 'created_time': createdTime,
      if (lastUpdatedTime != null) 'last_updated_time': lastUpdatedTime,
    });
  }

  TaskActivityRecordsCompanion copyWith(
      {Value<int?>? taskActivityRecordId,
      Value<String>? drinkType,
      Value<int>? quantity,
      Value<int>? userAccountId,
      Value<DateTime?>? createdTime,
      Value<DateTime?>? lastUpdatedTime}) {
    return TaskActivityRecordsCompanion(
      taskActivityRecordId: taskActivityRecordId ?? this.taskActivityRecordId,
      drinkType: drinkType ?? this.drinkType,
      quantity: quantity ?? this.quantity,
      userAccountId: userAccountId ?? this.userAccountId,
      createdTime: createdTime ?? this.createdTime,
      lastUpdatedTime: lastUpdatedTime ?? this.lastUpdatedTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (taskActivityRecordId.present) {
      map['task_activity_record_id'] =
          Variable<int>(taskActivityRecordId.value);
    }
    if (drinkType.present) {
      map['drink_type'] = Variable<String>(drinkType.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (userAccountId.present) {
      map['user_account_id'] = Variable<int>(userAccountId.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<DateTime>(createdTime.value);
    }
    if (lastUpdatedTime.present) {
      map['last_updated_time'] = Variable<DateTime>(lastUpdatedTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TaskActivityRecordsCompanion(')
          ..write('taskActivityRecordId: $taskActivityRecordId, ')
          ..write('drinkType: $drinkType, ')
          ..write('quantity: $quantity, ')
          ..write('userAccountId: $userAccountId, ')
          ..write('createdTime: $createdTime, ')
          ..write('lastUpdatedTime: $lastUpdatedTime')
          ..write(')'))
        .toString();
  }
}

class $TaskActivityGoalsTable extends TaskActivityGoals
    with TableInfo<$TaskActivityGoalsTable, TaskActivityGoal> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TaskActivityGoalsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _taskActivityGoalIdMeta =
      const VerificationMeta('taskActivityGoalId');
  @override
  late final GeneratedColumn<int> taskActivityGoalId = GeneratedColumn<int>(
      'task_activity_goal_id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _goalTypeMeta =
      const VerificationMeta('goalType');
  @override
  late final GeneratedColumnWithTypeConverter<GoalType, String> goalType =
      GeneratedColumn<String>('goal_type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<GoalType>($TaskActivityGoalsTable.$convertergoalType);
  static const VerificationMeta _goalValueMeta =
      const VerificationMeta('goalValue');
  @override
  late final GeneratedColumn<double> goalValue = GeneratedColumn<double>(
      'goal_value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<BooleanStatus, String> status =
      GeneratedColumn<String>('status', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<BooleanStatus>(
              $TaskActivityGoalsTable.$converterstatus);
  static const VerificationMeta _userAccountIdMeta =
      const VerificationMeta('userAccountId');
  @override
  late final GeneratedColumn<int> userAccountId = GeneratedColumn<int>(
      'user_account_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES user_accounts (user_account_id)'));
  static const VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  @override
  late final GeneratedColumn<DateTime> createdTime = GeneratedColumn<DateTime>(
      'created_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _lastUpdatedTimeMeta =
      const VerificationMeta('lastUpdatedTime');
  @override
  late final GeneratedColumn<DateTime> lastUpdatedTime =
      GeneratedColumn<DateTime>('last_updated_time', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        taskActivityGoalId,
        goalType,
        goalValue,
        status,
        userAccountId,
        createdTime,
        lastUpdatedTime
      ];
  @override
  String get aliasedName => _alias ?? 'task_activity_goals';
  @override
  String get actualTableName => 'task_activity_goals';
  @override
  VerificationContext validateIntegrity(Insertable<TaskActivityGoal> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('task_activity_goal_id')) {
      context.handle(
          _taskActivityGoalIdMeta,
          taskActivityGoalId.isAcceptableOrUnknown(
              data['task_activity_goal_id']!, _taskActivityGoalIdMeta));
    }
    context.handle(_goalTypeMeta, const VerificationResult.success());
    if (data.containsKey('goal_value')) {
      context.handle(_goalValueMeta,
          goalValue.isAcceptableOrUnknown(data['goal_value']!, _goalValueMeta));
    } else if (isInserting) {
      context.missing(_goalValueMeta);
    }
    context.handle(_statusMeta, const VerificationResult.success());
    if (data.containsKey('user_account_id')) {
      context.handle(
          _userAccountIdMeta,
          userAccountId.isAcceptableOrUnknown(
              data['user_account_id']!, _userAccountIdMeta));
    } else if (isInserting) {
      context.missing(_userAccountIdMeta);
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    }
    if (data.containsKey('last_updated_time')) {
      context.handle(
          _lastUpdatedTimeMeta,
          lastUpdatedTime.isAcceptableOrUnknown(
              data['last_updated_time']!, _lastUpdatedTimeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {taskActivityGoalId};
  @override
  TaskActivityGoal map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TaskActivityGoal(
      taskActivityGoalId: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}task_activity_goal_id']),
      goalType: $TaskActivityGoalsTable.$convertergoalType.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}goal_type'])!),
      goalValue: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}goal_value'])!,
      status: $TaskActivityGoalsTable.$converterstatus.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!),
      userAccountId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_account_id'])!,
      createdTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_time']),
      lastUpdatedTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_updated_time']),
    );
  }

  @override
  $TaskActivityGoalsTable createAlias(String alias) {
    return $TaskActivityGoalsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<GoalType, String, String> $convertergoalType =
      const EnumNameConverter<GoalType>(GoalType.values);
  static JsonTypeConverter2<BooleanStatus, String, String> $converterstatus =
      const EnumNameConverter<BooleanStatus>(BooleanStatus.values);
}

class TaskActivityGoal extends DataClass
    implements Insertable<TaskActivityGoal> {
  final int? taskActivityGoalId;
  final GoalType goalType;
  final double goalValue;
  final BooleanStatus status;
  final int userAccountId;
  final DateTime? createdTime;
  final DateTime? lastUpdatedTime;
  const TaskActivityGoal(
      {this.taskActivityGoalId,
      required this.goalType,
      required this.goalValue,
      required this.status,
      required this.userAccountId,
      this.createdTime,
      this.lastUpdatedTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || taskActivityGoalId != null) {
      map['task_activity_goal_id'] = Variable<int>(taskActivityGoalId);
    }
    {
      final converter = $TaskActivityGoalsTable.$convertergoalType;
      map['goal_type'] = Variable<String>(converter.toSql(goalType));
    }
    map['goal_value'] = Variable<double>(goalValue);
    {
      final converter = $TaskActivityGoalsTable.$converterstatus;
      map['status'] = Variable<String>(converter.toSql(status));
    }
    map['user_account_id'] = Variable<int>(userAccountId);
    if (!nullToAbsent || createdTime != null) {
      map['created_time'] = Variable<DateTime>(createdTime);
    }
    if (!nullToAbsent || lastUpdatedTime != null) {
      map['last_updated_time'] = Variable<DateTime>(lastUpdatedTime);
    }
    return map;
  }

  TaskActivityGoalsCompanion toCompanion(bool nullToAbsent) {
    return TaskActivityGoalsCompanion(
      taskActivityGoalId: taskActivityGoalId == null && nullToAbsent
          ? const Value.absent()
          : Value(taskActivityGoalId),
      goalType: Value(goalType),
      goalValue: Value(goalValue),
      status: Value(status),
      userAccountId: Value(userAccountId),
      createdTime: createdTime == null && nullToAbsent
          ? const Value.absent()
          : Value(createdTime),
      lastUpdatedTime: lastUpdatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdatedTime),
    );
  }

  factory TaskActivityGoal.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TaskActivityGoal(
      taskActivityGoalId: serializer.fromJson<int?>(json['taskActivityGoalId']),
      goalType: $TaskActivityGoalsTable.$convertergoalType
          .fromJson(serializer.fromJson<String>(json['goalType'])),
      goalValue: serializer.fromJson<double>(json['goalValue']),
      status: $TaskActivityGoalsTable.$converterstatus
          .fromJson(serializer.fromJson<String>(json['status'])),
      userAccountId: serializer.fromJson<int>(json['userAccountId']),
      createdTime: serializer.fromJson<DateTime?>(json['createdTime']),
      lastUpdatedTime: serializer.fromJson<DateTime?>(json['lastUpdatedTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'taskActivityGoalId': serializer.toJson<int?>(taskActivityGoalId),
      'goalType': serializer.toJson<String>(
          $TaskActivityGoalsTable.$convertergoalType.toJson(goalType)),
      'goalValue': serializer.toJson<double>(goalValue),
      'status': serializer.toJson<String>(
          $TaskActivityGoalsTable.$converterstatus.toJson(status)),
      'userAccountId': serializer.toJson<int>(userAccountId),
      'createdTime': serializer.toJson<DateTime?>(createdTime),
      'lastUpdatedTime': serializer.toJson<DateTime?>(lastUpdatedTime),
    };
  }

  TaskActivityGoal copyWith(
          {Value<int?> taskActivityGoalId = const Value.absent(),
          GoalType? goalType,
          double? goalValue,
          BooleanStatus? status,
          int? userAccountId,
          Value<DateTime?> createdTime = const Value.absent(),
          Value<DateTime?> lastUpdatedTime = const Value.absent()}) =>
      TaskActivityGoal(
        taskActivityGoalId: taskActivityGoalId.present
            ? taskActivityGoalId.value
            : this.taskActivityGoalId,
        goalType: goalType ?? this.goalType,
        goalValue: goalValue ?? this.goalValue,
        status: status ?? this.status,
        userAccountId: userAccountId ?? this.userAccountId,
        createdTime: createdTime.present ? createdTime.value : this.createdTime,
        lastUpdatedTime: lastUpdatedTime.present
            ? lastUpdatedTime.value
            : this.lastUpdatedTime,
      );
  @override
  String toString() {
    return (StringBuffer('TaskActivityGoal(')
          ..write('taskActivityGoalId: $taskActivityGoalId, ')
          ..write('goalType: $goalType, ')
          ..write('goalValue: $goalValue, ')
          ..write('status: $status, ')
          ..write('userAccountId: $userAccountId, ')
          ..write('createdTime: $createdTime, ')
          ..write('lastUpdatedTime: $lastUpdatedTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(taskActivityGoalId, goalType, goalValue,
      status, userAccountId, createdTime, lastUpdatedTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TaskActivityGoal &&
          other.taskActivityGoalId == this.taskActivityGoalId &&
          other.goalType == this.goalType &&
          other.goalValue == this.goalValue &&
          other.status == this.status &&
          other.userAccountId == this.userAccountId &&
          other.createdTime == this.createdTime &&
          other.lastUpdatedTime == this.lastUpdatedTime);
}

class TaskActivityGoalsCompanion extends UpdateCompanion<TaskActivityGoal> {
  final Value<int?> taskActivityGoalId;
  final Value<GoalType> goalType;
  final Value<double> goalValue;
  final Value<BooleanStatus> status;
  final Value<int> userAccountId;
  final Value<DateTime?> createdTime;
  final Value<DateTime?> lastUpdatedTime;
  const TaskActivityGoalsCompanion({
    this.taskActivityGoalId = const Value.absent(),
    this.goalType = const Value.absent(),
    this.goalValue = const Value.absent(),
    this.status = const Value.absent(),
    this.userAccountId = const Value.absent(),
    this.createdTime = const Value.absent(),
    this.lastUpdatedTime = const Value.absent(),
  });
  TaskActivityGoalsCompanion.insert({
    this.taskActivityGoalId = const Value.absent(),
    required GoalType goalType,
    required double goalValue,
    required BooleanStatus status,
    required int userAccountId,
    this.createdTime = const Value.absent(),
    this.lastUpdatedTime = const Value.absent(),
  })  : goalType = Value(goalType),
        goalValue = Value(goalValue),
        status = Value(status),
        userAccountId = Value(userAccountId);
  static Insertable<TaskActivityGoal> custom({
    Expression<int>? taskActivityGoalId,
    Expression<String>? goalType,
    Expression<double>? goalValue,
    Expression<String>? status,
    Expression<int>? userAccountId,
    Expression<DateTime>? createdTime,
    Expression<DateTime>? lastUpdatedTime,
  }) {
    return RawValuesInsertable({
      if (taskActivityGoalId != null)
        'task_activity_goal_id': taskActivityGoalId,
      if (goalType != null) 'goal_type': goalType,
      if (goalValue != null) 'goal_value': goalValue,
      if (status != null) 'status': status,
      if (userAccountId != null) 'user_account_id': userAccountId,
      if (createdTime != null) 'created_time': createdTime,
      if (lastUpdatedTime != null) 'last_updated_time': lastUpdatedTime,
    });
  }

  TaskActivityGoalsCompanion copyWith(
      {Value<int?>? taskActivityGoalId,
      Value<GoalType>? goalType,
      Value<double>? goalValue,
      Value<BooleanStatus>? status,
      Value<int>? userAccountId,
      Value<DateTime?>? createdTime,
      Value<DateTime?>? lastUpdatedTime}) {
    return TaskActivityGoalsCompanion(
      taskActivityGoalId: taskActivityGoalId ?? this.taskActivityGoalId,
      goalType: goalType ?? this.goalType,
      goalValue: goalValue ?? this.goalValue,
      status: status ?? this.status,
      userAccountId: userAccountId ?? this.userAccountId,
      createdTime: createdTime ?? this.createdTime,
      lastUpdatedTime: lastUpdatedTime ?? this.lastUpdatedTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (taskActivityGoalId.present) {
      map['task_activity_goal_id'] = Variable<int>(taskActivityGoalId.value);
    }
    if (goalType.present) {
      final converter = $TaskActivityGoalsTable.$convertergoalType;
      map['goal_type'] = Variable<String>(converter.toSql(goalType.value));
    }
    if (goalValue.present) {
      map['goal_value'] = Variable<double>(goalValue.value);
    }
    if (status.present) {
      final converter = $TaskActivityGoalsTable.$converterstatus;
      map['status'] = Variable<String>(converter.toSql(status.value));
    }
    if (userAccountId.present) {
      map['user_account_id'] = Variable<int>(userAccountId.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<DateTime>(createdTime.value);
    }
    if (lastUpdatedTime.present) {
      map['last_updated_time'] = Variable<DateTime>(lastUpdatedTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TaskActivityGoalsCompanion(')
          ..write('taskActivityGoalId: $taskActivityGoalId, ')
          ..write('goalType: $goalType, ')
          ..write('goalValue: $goalValue, ')
          ..write('status: $status, ')
          ..write('userAccountId: $userAccountId, ')
          ..write('createdTime: $createdTime, ')
          ..write('lastUpdatedTime: $lastUpdatedTime')
          ..write(')'))
        .toString();
  }
}

class $PlanRoutinesTable extends PlanRoutines
    with TableInfo<$PlanRoutinesTable, PlanRoutine> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlanRoutinesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _planRoutineIdMeta =
      const VerificationMeta('planRoutineId');
  @override
  late final GeneratedColumn<int> planRoutineId = GeneratedColumn<int>(
      'plan_routine_id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _planRoutineNameMeta =
      const VerificationMeta('planRoutineName');
  @override
  late final GeneratedColumn<String> planRoutineName = GeneratedColumn<String>(
      'plan_routine_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _drinkTypeMeta =
      const VerificationMeta('drinkType');
  @override
  late final GeneratedColumn<String> drinkType = GeneratedColumn<String>(
      'drink_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userAccountIdMeta =
      const VerificationMeta('userAccountId');
  @override
  late final GeneratedColumn<int> userAccountId = GeneratedColumn<int>(
      'user_account_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES user_accounts (user_account_id)'));
  static const VerificationMeta _notificationStatusMeta =
      const VerificationMeta('notificationStatus');
  @override
  late final GeneratedColumnWithTypeConverter<BooleanStatus, String>
      notificationStatus = GeneratedColumn<String>(
              'notification_status', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<BooleanStatus>(
              $PlanRoutinesTable.$converternotificationStatus);
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<DateTime> time = GeneratedColumn<DateTime>(
      'time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  @override
  late final GeneratedColumn<DateTime> createdTime = GeneratedColumn<DateTime>(
      'created_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdatedTimeMeta =
      const VerificationMeta('lastUpdatedTime');
  @override
  late final GeneratedColumn<DateTime> lastUpdatedTime =
      GeneratedColumn<DateTime>('last_updated_time', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        planRoutineId,
        planRoutineName,
        drinkType,
        userAccountId,
        notificationStatus,
        time,
        createdTime,
        lastUpdatedTime
      ];
  @override
  String get aliasedName => _alias ?? 'plan_routines';
  @override
  String get actualTableName => 'plan_routines';
  @override
  VerificationContext validateIntegrity(Insertable<PlanRoutine> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('plan_routine_id')) {
      context.handle(
          _planRoutineIdMeta,
          planRoutineId.isAcceptableOrUnknown(
              data['plan_routine_id']!, _planRoutineIdMeta));
    }
    if (data.containsKey('plan_routine_name')) {
      context.handle(
          _planRoutineNameMeta,
          planRoutineName.isAcceptableOrUnknown(
              data['plan_routine_name']!, _planRoutineNameMeta));
    }
    if (data.containsKey('drink_type')) {
      context.handle(_drinkTypeMeta,
          drinkType.isAcceptableOrUnknown(data['drink_type']!, _drinkTypeMeta));
    } else if (isInserting) {
      context.missing(_drinkTypeMeta);
    }
    if (data.containsKey('user_account_id')) {
      context.handle(
          _userAccountIdMeta,
          userAccountId.isAcceptableOrUnknown(
              data['user_account_id']!, _userAccountIdMeta));
    } else if (isInserting) {
      context.missing(_userAccountIdMeta);
    }
    context.handle(_notificationStatusMeta, const VerificationResult.success());
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time']!, _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    } else if (isInserting) {
      context.missing(_createdTimeMeta);
    }
    if (data.containsKey('last_updated_time')) {
      context.handle(
          _lastUpdatedTimeMeta,
          lastUpdatedTime.isAcceptableOrUnknown(
              data['last_updated_time']!, _lastUpdatedTimeMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {planRoutineId};
  @override
  PlanRoutine map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PlanRoutine(
      planRoutineId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}plan_routine_id']),
      planRoutineName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}plan_routine_name']),
      drinkType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}drink_type'])!,
      userAccountId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_account_id'])!,
      notificationStatus: $PlanRoutinesTable.$converternotificationStatus
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}notification_status'])!),
      time: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}time'])!,
      createdTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_time'])!,
      lastUpdatedTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_updated_time'])!,
    );
  }

  @override
  $PlanRoutinesTable createAlias(String alias) {
    return $PlanRoutinesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<BooleanStatus, String, String>
      $converternotificationStatus =
      const EnumNameConverter<BooleanStatus>(BooleanStatus.values);
}

class PlanRoutine extends DataClass implements Insertable<PlanRoutine> {
  final int? planRoutineId;
  final String? planRoutineName;
  final String drinkType;
  final int userAccountId;
  final BooleanStatus notificationStatus;
  final DateTime time;
  final DateTime createdTime;
  final DateTime lastUpdatedTime;
  const PlanRoutine(
      {this.planRoutineId,
      this.planRoutineName,
      required this.drinkType,
      required this.userAccountId,
      required this.notificationStatus,
      required this.time,
      required this.createdTime,
      required this.lastUpdatedTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || planRoutineId != null) {
      map['plan_routine_id'] = Variable<int>(planRoutineId);
    }
    if (!nullToAbsent || planRoutineName != null) {
      map['plan_routine_name'] = Variable<String>(planRoutineName);
    }
    map['drink_type'] = Variable<String>(drinkType);
    map['user_account_id'] = Variable<int>(userAccountId);
    {
      final converter = $PlanRoutinesTable.$converternotificationStatus;
      map['notification_status'] =
          Variable<String>(converter.toSql(notificationStatus));
    }
    map['time'] = Variable<DateTime>(time);
    map['created_time'] = Variable<DateTime>(createdTime);
    map['last_updated_time'] = Variable<DateTime>(lastUpdatedTime);
    return map;
  }

  PlanRoutinesCompanion toCompanion(bool nullToAbsent) {
    return PlanRoutinesCompanion(
      planRoutineId: planRoutineId == null && nullToAbsent
          ? const Value.absent()
          : Value(planRoutineId),
      planRoutineName: planRoutineName == null && nullToAbsent
          ? const Value.absent()
          : Value(planRoutineName),
      drinkType: Value(drinkType),
      userAccountId: Value(userAccountId),
      notificationStatus: Value(notificationStatus),
      time: Value(time),
      createdTime: Value(createdTime),
      lastUpdatedTime: Value(lastUpdatedTime),
    );
  }

  factory PlanRoutine.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PlanRoutine(
      planRoutineId: serializer.fromJson<int?>(json['planRoutineId']),
      planRoutineName: serializer.fromJson<String?>(json['planRoutineName']),
      drinkType: serializer.fromJson<String>(json['drinkType']),
      userAccountId: serializer.fromJson<int>(json['userAccountId']),
      notificationStatus: $PlanRoutinesTable.$converternotificationStatus
          .fromJson(serializer.fromJson<String>(json['notificationStatus'])),
      time: serializer.fromJson<DateTime>(json['time']),
      createdTime: serializer.fromJson<DateTime>(json['createdTime']),
      lastUpdatedTime: serializer.fromJson<DateTime>(json['lastUpdatedTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'planRoutineId': serializer.toJson<int?>(planRoutineId),
      'planRoutineName': serializer.toJson<String?>(planRoutineName),
      'drinkType': serializer.toJson<String>(drinkType),
      'userAccountId': serializer.toJson<int>(userAccountId),
      'notificationStatus': serializer.toJson<String>($PlanRoutinesTable
          .$converternotificationStatus
          .toJson(notificationStatus)),
      'time': serializer.toJson<DateTime>(time),
      'createdTime': serializer.toJson<DateTime>(createdTime),
      'lastUpdatedTime': serializer.toJson<DateTime>(lastUpdatedTime),
    };
  }

  PlanRoutine copyWith(
          {Value<int?> planRoutineId = const Value.absent(),
          Value<String?> planRoutineName = const Value.absent(),
          String? drinkType,
          int? userAccountId,
          BooleanStatus? notificationStatus,
          DateTime? time,
          DateTime? createdTime,
          DateTime? lastUpdatedTime}) =>
      PlanRoutine(
        planRoutineId:
            planRoutineId.present ? planRoutineId.value : this.planRoutineId,
        planRoutineName: planRoutineName.present
            ? planRoutineName.value
            : this.planRoutineName,
        drinkType: drinkType ?? this.drinkType,
        userAccountId: userAccountId ?? this.userAccountId,
        notificationStatus: notificationStatus ?? this.notificationStatus,
        time: time ?? this.time,
        createdTime: createdTime ?? this.createdTime,
        lastUpdatedTime: lastUpdatedTime ?? this.lastUpdatedTime,
      );
  @override
  String toString() {
    return (StringBuffer('PlanRoutine(')
          ..write('planRoutineId: $planRoutineId, ')
          ..write('planRoutineName: $planRoutineName, ')
          ..write('drinkType: $drinkType, ')
          ..write('userAccountId: $userAccountId, ')
          ..write('notificationStatus: $notificationStatus, ')
          ..write('time: $time, ')
          ..write('createdTime: $createdTime, ')
          ..write('lastUpdatedTime: $lastUpdatedTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(planRoutineId, planRoutineName, drinkType,
      userAccountId, notificationStatus, time, createdTime, lastUpdatedTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PlanRoutine &&
          other.planRoutineId == this.planRoutineId &&
          other.planRoutineName == this.planRoutineName &&
          other.drinkType == this.drinkType &&
          other.userAccountId == this.userAccountId &&
          other.notificationStatus == this.notificationStatus &&
          other.time == this.time &&
          other.createdTime == this.createdTime &&
          other.lastUpdatedTime == this.lastUpdatedTime);
}

class PlanRoutinesCompanion extends UpdateCompanion<PlanRoutine> {
  final Value<int?> planRoutineId;
  final Value<String?> planRoutineName;
  final Value<String> drinkType;
  final Value<int> userAccountId;
  final Value<BooleanStatus> notificationStatus;
  final Value<DateTime> time;
  final Value<DateTime> createdTime;
  final Value<DateTime> lastUpdatedTime;
  const PlanRoutinesCompanion({
    this.planRoutineId = const Value.absent(),
    this.planRoutineName = const Value.absent(),
    this.drinkType = const Value.absent(),
    this.userAccountId = const Value.absent(),
    this.notificationStatus = const Value.absent(),
    this.time = const Value.absent(),
    this.createdTime = const Value.absent(),
    this.lastUpdatedTime = const Value.absent(),
  });
  PlanRoutinesCompanion.insert({
    this.planRoutineId = const Value.absent(),
    this.planRoutineName = const Value.absent(),
    required String drinkType,
    required int userAccountId,
    required BooleanStatus notificationStatus,
    required DateTime time,
    required DateTime createdTime,
    required DateTime lastUpdatedTime,
  })  : drinkType = Value(drinkType),
        userAccountId = Value(userAccountId),
        notificationStatus = Value(notificationStatus),
        time = Value(time),
        createdTime = Value(createdTime),
        lastUpdatedTime = Value(lastUpdatedTime);
  static Insertable<PlanRoutine> custom({
    Expression<int>? planRoutineId,
    Expression<String>? planRoutineName,
    Expression<String>? drinkType,
    Expression<int>? userAccountId,
    Expression<String>? notificationStatus,
    Expression<DateTime>? time,
    Expression<DateTime>? createdTime,
    Expression<DateTime>? lastUpdatedTime,
  }) {
    return RawValuesInsertable({
      if (planRoutineId != null) 'plan_routine_id': planRoutineId,
      if (planRoutineName != null) 'plan_routine_name': planRoutineName,
      if (drinkType != null) 'drink_type': drinkType,
      if (userAccountId != null) 'user_account_id': userAccountId,
      if (notificationStatus != null) 'notification_status': notificationStatus,
      if (time != null) 'time': time,
      if (createdTime != null) 'created_time': createdTime,
      if (lastUpdatedTime != null) 'last_updated_time': lastUpdatedTime,
    });
  }

  PlanRoutinesCompanion copyWith(
      {Value<int?>? planRoutineId,
      Value<String?>? planRoutineName,
      Value<String>? drinkType,
      Value<int>? userAccountId,
      Value<BooleanStatus>? notificationStatus,
      Value<DateTime>? time,
      Value<DateTime>? createdTime,
      Value<DateTime>? lastUpdatedTime}) {
    return PlanRoutinesCompanion(
      planRoutineId: planRoutineId ?? this.planRoutineId,
      planRoutineName: planRoutineName ?? this.planRoutineName,
      drinkType: drinkType ?? this.drinkType,
      userAccountId: userAccountId ?? this.userAccountId,
      notificationStatus: notificationStatus ?? this.notificationStatus,
      time: time ?? this.time,
      createdTime: createdTime ?? this.createdTime,
      lastUpdatedTime: lastUpdatedTime ?? this.lastUpdatedTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (planRoutineId.present) {
      map['plan_routine_id'] = Variable<int>(planRoutineId.value);
    }
    if (planRoutineName.present) {
      map['plan_routine_name'] = Variable<String>(planRoutineName.value);
    }
    if (drinkType.present) {
      map['drink_type'] = Variable<String>(drinkType.value);
    }
    if (userAccountId.present) {
      map['user_account_id'] = Variable<int>(userAccountId.value);
    }
    if (notificationStatus.present) {
      final converter = $PlanRoutinesTable.$converternotificationStatus;
      map['notification_status'] =
          Variable<String>(converter.toSql(notificationStatus.value));
    }
    if (time.present) {
      map['time'] = Variable<DateTime>(time.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<DateTime>(createdTime.value);
    }
    if (lastUpdatedTime.present) {
      map['last_updated_time'] = Variable<DateTime>(lastUpdatedTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlanRoutinesCompanion(')
          ..write('planRoutineId: $planRoutineId, ')
          ..write('planRoutineName: $planRoutineName, ')
          ..write('drinkType: $drinkType, ')
          ..write('userAccountId: $userAccountId, ')
          ..write('notificationStatus: $notificationStatus, ')
          ..write('time: $time, ')
          ..write('createdTime: $createdTime, ')
          ..write('lastUpdatedTime: $lastUpdatedTime')
          ..write(')'))
        .toString();
  }
}

class $UserTaskActivityGoalsTable extends UserTaskActivityGoals
    with TableInfo<$UserTaskActivityGoalsTable, UserTaskActivityGoal> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTaskActivityGoalsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userTaskActivityGoalIdMeta =
      const VerificationMeta('userTaskActivityGoalId');
  @override
  late final GeneratedColumn<int> userTaskActivityGoalId = GeneratedColumn<int>(
      'user_task_activity_goal_id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _taskActivityGoalIdMeta =
      const VerificationMeta('taskActivityGoalId');
  @override
  late final GeneratedColumn<int> taskActivityGoalId = GeneratedColumn<int>(
      'task_activity_goal_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES task_activity_goals (task_activity_goal_id)'));
  static const VerificationMeta _currentGoalValueMeta =
      const VerificationMeta('currentGoalValue');
  @override
  late final GeneratedColumn<double> currentGoalValue = GeneratedColumn<double>(
      'current_goal_value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _targetGoalValueMeta =
      const VerificationMeta('targetGoalValue');
  @override
  late final GeneratedColumn<double> targetGoalValue = GeneratedColumn<double>(
      'target_goal_value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _normalizedCurrentGoalValueMeta =
      const VerificationMeta('normalizedCurrentGoalValue');
  @override
  late final GeneratedColumn<double> normalizedCurrentGoalValue =
      GeneratedColumn<double>(
          'normalized_current_goal_value', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _normalizedTargetGoalValueMeta =
      const VerificationMeta('normalizedTargetGoalValue');
  @override
  late final GeneratedColumn<double> normalizedTargetGoalValue =
      GeneratedColumn<double>(
          'normalized_target_goal_value', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _startTimeMeta =
      const VerificationMeta('startTime');
  @override
  late final GeneratedColumn<DateTime> startTime = GeneratedColumn<DateTime>(
      'start_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _endTimeMeta =
      const VerificationMeta('endTime');
  @override
  late final GeneratedColumn<DateTime> endTime = GeneratedColumn<DateTime>(
      'end_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<BooleanStatus, String> status =
      GeneratedColumn<String>('status', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<BooleanStatus>(
              $UserTaskActivityGoalsTable.$converterstatus);
  static const VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  @override
  late final GeneratedColumn<DateTime> createdTime = GeneratedColumn<DateTime>(
      'created_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _lastUpdatedTimeMeta =
      const VerificationMeta('lastUpdatedTime');
  @override
  late final GeneratedColumn<DateTime> lastUpdatedTime =
      GeneratedColumn<DateTime>('last_updated_time', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        userTaskActivityGoalId,
        taskActivityGoalId,
        currentGoalValue,
        targetGoalValue,
        normalizedCurrentGoalValue,
        normalizedTargetGoalValue,
        startTime,
        endTime,
        status,
        createdTime,
        lastUpdatedTime
      ];
  @override
  String get aliasedName => _alias ?? 'user_task_activity_goals';
  @override
  String get actualTableName => 'user_task_activity_goals';
  @override
  VerificationContext validateIntegrity(
      Insertable<UserTaskActivityGoal> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_task_activity_goal_id')) {
      context.handle(
          _userTaskActivityGoalIdMeta,
          userTaskActivityGoalId.isAcceptableOrUnknown(
              data['user_task_activity_goal_id']!,
              _userTaskActivityGoalIdMeta));
    }
    if (data.containsKey('task_activity_goal_id')) {
      context.handle(
          _taskActivityGoalIdMeta,
          taskActivityGoalId.isAcceptableOrUnknown(
              data['task_activity_goal_id']!, _taskActivityGoalIdMeta));
    } else if (isInserting) {
      context.missing(_taskActivityGoalIdMeta);
    }
    if (data.containsKey('current_goal_value')) {
      context.handle(
          _currentGoalValueMeta,
          currentGoalValue.isAcceptableOrUnknown(
              data['current_goal_value']!, _currentGoalValueMeta));
    } else if (isInserting) {
      context.missing(_currentGoalValueMeta);
    }
    if (data.containsKey('target_goal_value')) {
      context.handle(
          _targetGoalValueMeta,
          targetGoalValue.isAcceptableOrUnknown(
              data['target_goal_value']!, _targetGoalValueMeta));
    } else if (isInserting) {
      context.missing(_targetGoalValueMeta);
    }
    if (data.containsKey('normalized_current_goal_value')) {
      context.handle(
          _normalizedCurrentGoalValueMeta,
          normalizedCurrentGoalValue.isAcceptableOrUnknown(
              data['normalized_current_goal_value']!,
              _normalizedCurrentGoalValueMeta));
    } else if (isInserting) {
      context.missing(_normalizedCurrentGoalValueMeta);
    }
    if (data.containsKey('normalized_target_goal_value')) {
      context.handle(
          _normalizedTargetGoalValueMeta,
          normalizedTargetGoalValue.isAcceptableOrUnknown(
              data['normalized_target_goal_value']!,
              _normalizedTargetGoalValueMeta));
    } else if (isInserting) {
      context.missing(_normalizedTargetGoalValueMeta);
    }
    if (data.containsKey('start_time')) {
      context.handle(_startTimeMeta,
          startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta));
    } else if (isInserting) {
      context.missing(_startTimeMeta);
    }
    if (data.containsKey('end_time')) {
      context.handle(_endTimeMeta,
          endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta));
    } else if (isInserting) {
      context.missing(_endTimeMeta);
    }
    context.handle(_statusMeta, const VerificationResult.success());
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    }
    if (data.containsKey('last_updated_time')) {
      context.handle(
          _lastUpdatedTimeMeta,
          lastUpdatedTime.isAcceptableOrUnknown(
              data['last_updated_time']!, _lastUpdatedTimeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userTaskActivityGoalId};
  @override
  UserTaskActivityGoal map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserTaskActivityGoal(
      userTaskActivityGoalId: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}user_task_activity_goal_id']),
      taskActivityGoalId: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}task_activity_goal_id'])!,
      currentGoalValue: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}current_goal_value'])!,
      targetGoalValue: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}target_goal_value'])!,
      normalizedCurrentGoalValue: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}normalized_current_goal_value'])!,
      normalizedTargetGoalValue: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}normalized_target_goal_value'])!,
      startTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_time'])!,
      endTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_time'])!,
      status: $UserTaskActivityGoalsTable.$converterstatus.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}status'])!),
      createdTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_time']),
      lastUpdatedTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_updated_time']),
    );
  }

  @override
  $UserTaskActivityGoalsTable createAlias(String alias) {
    return $UserTaskActivityGoalsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<BooleanStatus, String, String> $converterstatus =
      const EnumNameConverter<BooleanStatus>(BooleanStatus.values);
}

class UserTaskActivityGoal extends DataClass
    implements Insertable<UserTaskActivityGoal> {
  final int? userTaskActivityGoalId;
  final int taskActivityGoalId;
  final double currentGoalValue;
  final double targetGoalValue;
  final double normalizedCurrentGoalValue;
  final double normalizedTargetGoalValue;
  final DateTime startTime;
  final DateTime endTime;
  final BooleanStatus status;
  final DateTime? createdTime;
  final DateTime? lastUpdatedTime;
  const UserTaskActivityGoal(
      {this.userTaskActivityGoalId,
      required this.taskActivityGoalId,
      required this.currentGoalValue,
      required this.targetGoalValue,
      required this.normalizedCurrentGoalValue,
      required this.normalizedTargetGoalValue,
      required this.startTime,
      required this.endTime,
      required this.status,
      this.createdTime,
      this.lastUpdatedTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || userTaskActivityGoalId != null) {
      map['user_task_activity_goal_id'] = Variable<int>(userTaskActivityGoalId);
    }
    map['task_activity_goal_id'] = Variable<int>(taskActivityGoalId);
    map['current_goal_value'] = Variable<double>(currentGoalValue);
    map['target_goal_value'] = Variable<double>(targetGoalValue);
    map['normalized_current_goal_value'] =
        Variable<double>(normalizedCurrentGoalValue);
    map['normalized_target_goal_value'] =
        Variable<double>(normalizedTargetGoalValue);
    map['start_time'] = Variable<DateTime>(startTime);
    map['end_time'] = Variable<DateTime>(endTime);
    {
      final converter = $UserTaskActivityGoalsTable.$converterstatus;
      map['status'] = Variable<String>(converter.toSql(status));
    }
    if (!nullToAbsent || createdTime != null) {
      map['created_time'] = Variable<DateTime>(createdTime);
    }
    if (!nullToAbsent || lastUpdatedTime != null) {
      map['last_updated_time'] = Variable<DateTime>(lastUpdatedTime);
    }
    return map;
  }

  UserTaskActivityGoalsCompanion toCompanion(bool nullToAbsent) {
    return UserTaskActivityGoalsCompanion(
      userTaskActivityGoalId: userTaskActivityGoalId == null && nullToAbsent
          ? const Value.absent()
          : Value(userTaskActivityGoalId),
      taskActivityGoalId: Value(taskActivityGoalId),
      currentGoalValue: Value(currentGoalValue),
      targetGoalValue: Value(targetGoalValue),
      normalizedCurrentGoalValue: Value(normalizedCurrentGoalValue),
      normalizedTargetGoalValue: Value(normalizedTargetGoalValue),
      startTime: Value(startTime),
      endTime: Value(endTime),
      status: Value(status),
      createdTime: createdTime == null && nullToAbsent
          ? const Value.absent()
          : Value(createdTime),
      lastUpdatedTime: lastUpdatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdatedTime),
    );
  }

  factory UserTaskActivityGoal.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserTaskActivityGoal(
      userTaskActivityGoalId:
          serializer.fromJson<int?>(json['userTaskActivityGoalId']),
      taskActivityGoalId: serializer.fromJson<int>(json['taskActivityGoalId']),
      currentGoalValue: serializer.fromJson<double>(json['currentGoalValue']),
      targetGoalValue: serializer.fromJson<double>(json['targetGoalValue']),
      normalizedCurrentGoalValue:
          serializer.fromJson<double>(json['normalizedCurrentGoalValue']),
      normalizedTargetGoalValue:
          serializer.fromJson<double>(json['normalizedTargetGoalValue']),
      startTime: serializer.fromJson<DateTime>(json['startTime']),
      endTime: serializer.fromJson<DateTime>(json['endTime']),
      status: $UserTaskActivityGoalsTable.$converterstatus
          .fromJson(serializer.fromJson<String>(json['status'])),
      createdTime: serializer.fromJson<DateTime?>(json['createdTime']),
      lastUpdatedTime: serializer.fromJson<DateTime?>(json['lastUpdatedTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userTaskActivityGoalId': serializer.toJson<int?>(userTaskActivityGoalId),
      'taskActivityGoalId': serializer.toJson<int>(taskActivityGoalId),
      'currentGoalValue': serializer.toJson<double>(currentGoalValue),
      'targetGoalValue': serializer.toJson<double>(targetGoalValue),
      'normalizedCurrentGoalValue':
          serializer.toJson<double>(normalizedCurrentGoalValue),
      'normalizedTargetGoalValue':
          serializer.toJson<double>(normalizedTargetGoalValue),
      'startTime': serializer.toJson<DateTime>(startTime),
      'endTime': serializer.toJson<DateTime>(endTime),
      'status': serializer.toJson<String>(
          $UserTaskActivityGoalsTable.$converterstatus.toJson(status)),
      'createdTime': serializer.toJson<DateTime?>(createdTime),
      'lastUpdatedTime': serializer.toJson<DateTime?>(lastUpdatedTime),
    };
  }

  UserTaskActivityGoal copyWith(
          {Value<int?> userTaskActivityGoalId = const Value.absent(),
          int? taskActivityGoalId,
          double? currentGoalValue,
          double? targetGoalValue,
          double? normalizedCurrentGoalValue,
          double? normalizedTargetGoalValue,
          DateTime? startTime,
          DateTime? endTime,
          BooleanStatus? status,
          Value<DateTime?> createdTime = const Value.absent(),
          Value<DateTime?> lastUpdatedTime = const Value.absent()}) =>
      UserTaskActivityGoal(
        userTaskActivityGoalId: userTaskActivityGoalId.present
            ? userTaskActivityGoalId.value
            : this.userTaskActivityGoalId,
        taskActivityGoalId: taskActivityGoalId ?? this.taskActivityGoalId,
        currentGoalValue: currentGoalValue ?? this.currentGoalValue,
        targetGoalValue: targetGoalValue ?? this.targetGoalValue,
        normalizedCurrentGoalValue:
            normalizedCurrentGoalValue ?? this.normalizedCurrentGoalValue,
        normalizedTargetGoalValue:
            normalizedTargetGoalValue ?? this.normalizedTargetGoalValue,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        status: status ?? this.status,
        createdTime: createdTime.present ? createdTime.value : this.createdTime,
        lastUpdatedTime: lastUpdatedTime.present
            ? lastUpdatedTime.value
            : this.lastUpdatedTime,
      );
  @override
  String toString() {
    return (StringBuffer('UserTaskActivityGoal(')
          ..write('userTaskActivityGoalId: $userTaskActivityGoalId, ')
          ..write('taskActivityGoalId: $taskActivityGoalId, ')
          ..write('currentGoalValue: $currentGoalValue, ')
          ..write('targetGoalValue: $targetGoalValue, ')
          ..write('normalizedCurrentGoalValue: $normalizedCurrentGoalValue, ')
          ..write('normalizedTargetGoalValue: $normalizedTargetGoalValue, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('status: $status, ')
          ..write('createdTime: $createdTime, ')
          ..write('lastUpdatedTime: $lastUpdatedTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      userTaskActivityGoalId,
      taskActivityGoalId,
      currentGoalValue,
      targetGoalValue,
      normalizedCurrentGoalValue,
      normalizedTargetGoalValue,
      startTime,
      endTime,
      status,
      createdTime,
      lastUpdatedTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserTaskActivityGoal &&
          other.userTaskActivityGoalId == this.userTaskActivityGoalId &&
          other.taskActivityGoalId == this.taskActivityGoalId &&
          other.currentGoalValue == this.currentGoalValue &&
          other.targetGoalValue == this.targetGoalValue &&
          other.normalizedCurrentGoalValue == this.normalizedCurrentGoalValue &&
          other.normalizedTargetGoalValue == this.normalizedTargetGoalValue &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime &&
          other.status == this.status &&
          other.createdTime == this.createdTime &&
          other.lastUpdatedTime == this.lastUpdatedTime);
}

class UserTaskActivityGoalsCompanion
    extends UpdateCompanion<UserTaskActivityGoal> {
  final Value<int?> userTaskActivityGoalId;
  final Value<int> taskActivityGoalId;
  final Value<double> currentGoalValue;
  final Value<double> targetGoalValue;
  final Value<double> normalizedCurrentGoalValue;
  final Value<double> normalizedTargetGoalValue;
  final Value<DateTime> startTime;
  final Value<DateTime> endTime;
  final Value<BooleanStatus> status;
  final Value<DateTime?> createdTime;
  final Value<DateTime?> lastUpdatedTime;
  const UserTaskActivityGoalsCompanion({
    this.userTaskActivityGoalId = const Value.absent(),
    this.taskActivityGoalId = const Value.absent(),
    this.currentGoalValue = const Value.absent(),
    this.targetGoalValue = const Value.absent(),
    this.normalizedCurrentGoalValue = const Value.absent(),
    this.normalizedTargetGoalValue = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.status = const Value.absent(),
    this.createdTime = const Value.absent(),
    this.lastUpdatedTime = const Value.absent(),
  });
  UserTaskActivityGoalsCompanion.insert({
    this.userTaskActivityGoalId = const Value.absent(),
    required int taskActivityGoalId,
    required double currentGoalValue,
    required double targetGoalValue,
    required double normalizedCurrentGoalValue,
    required double normalizedTargetGoalValue,
    required DateTime startTime,
    required DateTime endTime,
    required BooleanStatus status,
    this.createdTime = const Value.absent(),
    this.lastUpdatedTime = const Value.absent(),
  })  : taskActivityGoalId = Value(taskActivityGoalId),
        currentGoalValue = Value(currentGoalValue),
        targetGoalValue = Value(targetGoalValue),
        normalizedCurrentGoalValue = Value(normalizedCurrentGoalValue),
        normalizedTargetGoalValue = Value(normalizedTargetGoalValue),
        startTime = Value(startTime),
        endTime = Value(endTime),
        status = Value(status);
  static Insertable<UserTaskActivityGoal> custom({
    Expression<int>? userTaskActivityGoalId,
    Expression<int>? taskActivityGoalId,
    Expression<double>? currentGoalValue,
    Expression<double>? targetGoalValue,
    Expression<double>? normalizedCurrentGoalValue,
    Expression<double>? normalizedTargetGoalValue,
    Expression<DateTime>? startTime,
    Expression<DateTime>? endTime,
    Expression<String>? status,
    Expression<DateTime>? createdTime,
    Expression<DateTime>? lastUpdatedTime,
  }) {
    return RawValuesInsertable({
      if (userTaskActivityGoalId != null)
        'user_task_activity_goal_id': userTaskActivityGoalId,
      if (taskActivityGoalId != null)
        'task_activity_goal_id': taskActivityGoalId,
      if (currentGoalValue != null) 'current_goal_value': currentGoalValue,
      if (targetGoalValue != null) 'target_goal_value': targetGoalValue,
      if (normalizedCurrentGoalValue != null)
        'normalized_current_goal_value': normalizedCurrentGoalValue,
      if (normalizedTargetGoalValue != null)
        'normalized_target_goal_value': normalizedTargetGoalValue,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
      if (status != null) 'status': status,
      if (createdTime != null) 'created_time': createdTime,
      if (lastUpdatedTime != null) 'last_updated_time': lastUpdatedTime,
    });
  }

  UserTaskActivityGoalsCompanion copyWith(
      {Value<int?>? userTaskActivityGoalId,
      Value<int>? taskActivityGoalId,
      Value<double>? currentGoalValue,
      Value<double>? targetGoalValue,
      Value<double>? normalizedCurrentGoalValue,
      Value<double>? normalizedTargetGoalValue,
      Value<DateTime>? startTime,
      Value<DateTime>? endTime,
      Value<BooleanStatus>? status,
      Value<DateTime?>? createdTime,
      Value<DateTime?>? lastUpdatedTime}) {
    return UserTaskActivityGoalsCompanion(
      userTaskActivityGoalId:
          userTaskActivityGoalId ?? this.userTaskActivityGoalId,
      taskActivityGoalId: taskActivityGoalId ?? this.taskActivityGoalId,
      currentGoalValue: currentGoalValue ?? this.currentGoalValue,
      targetGoalValue: targetGoalValue ?? this.targetGoalValue,
      normalizedCurrentGoalValue:
          normalizedCurrentGoalValue ?? this.normalizedCurrentGoalValue,
      normalizedTargetGoalValue:
          normalizedTargetGoalValue ?? this.normalizedTargetGoalValue,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      status: status ?? this.status,
      createdTime: createdTime ?? this.createdTime,
      lastUpdatedTime: lastUpdatedTime ?? this.lastUpdatedTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userTaskActivityGoalId.present) {
      map['user_task_activity_goal_id'] =
          Variable<int>(userTaskActivityGoalId.value);
    }
    if (taskActivityGoalId.present) {
      map['task_activity_goal_id'] = Variable<int>(taskActivityGoalId.value);
    }
    if (currentGoalValue.present) {
      map['current_goal_value'] = Variable<double>(currentGoalValue.value);
    }
    if (targetGoalValue.present) {
      map['target_goal_value'] = Variable<double>(targetGoalValue.value);
    }
    if (normalizedCurrentGoalValue.present) {
      map['normalized_current_goal_value'] =
          Variable<double>(normalizedCurrentGoalValue.value);
    }
    if (normalizedTargetGoalValue.present) {
      map['normalized_target_goal_value'] =
          Variable<double>(normalizedTargetGoalValue.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<DateTime>(startTime.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<DateTime>(endTime.value);
    }
    if (status.present) {
      final converter = $UserTaskActivityGoalsTable.$converterstatus;
      map['status'] = Variable<String>(converter.toSql(status.value));
    }
    if (createdTime.present) {
      map['created_time'] = Variable<DateTime>(createdTime.value);
    }
    if (lastUpdatedTime.present) {
      map['last_updated_time'] = Variable<DateTime>(lastUpdatedTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserTaskActivityGoalsCompanion(')
          ..write('userTaskActivityGoalId: $userTaskActivityGoalId, ')
          ..write('taskActivityGoalId: $taskActivityGoalId, ')
          ..write('currentGoalValue: $currentGoalValue, ')
          ..write('targetGoalValue: $targetGoalValue, ')
          ..write('normalizedCurrentGoalValue: $normalizedCurrentGoalValue, ')
          ..write('normalizedTargetGoalValue: $normalizedTargetGoalValue, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('status: $status, ')
          ..write('createdTime: $createdTime, ')
          ..write('lastUpdatedTime: $lastUpdatedTime')
          ..write(')'))
        .toString();
  }
}

class $UserStreaksTable extends UserStreaks
    with TableInfo<$UserStreaksTable, UserStreak> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserStreaksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userStreakIdMeta =
      const VerificationMeta('userStreakId');
  @override
  late final GeneratedColumn<int> userStreakId = GeneratedColumn<int>(
      'user_streak_id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userAccountIdMeta =
      const VerificationMeta('userAccountId');
  @override
  late final GeneratedColumn<int> userAccountId = GeneratedColumn<int>(
      'user_account_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES user_accounts (user_account_id)'));
  static const VerificationMeta _startTimeMeta =
      const VerificationMeta('startTime');
  @override
  late final GeneratedColumn<DateTime> startTime = GeneratedColumn<DateTime>(
      'start_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _endTimeMeta =
      const VerificationMeta('endTime');
  @override
  late final GeneratedColumn<DateTime> endTime = GeneratedColumn<DateTime>(
      'end_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _lastStreakUpdatedTimeMeta =
      const VerificationMeta('lastStreakUpdatedTime');
  @override
  late final GeneratedColumn<DateTime> lastStreakUpdatedTime =
      GeneratedColumn<DateTime>('last_streak_updated_time', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<BooleanStatus, String> status =
      GeneratedColumn<String>('status', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<BooleanStatus>($UserStreaksTable.$converterstatus);
  static const VerificationMeta _totalNumberOfDaysMeta =
      const VerificationMeta('totalNumberOfDays');
  @override
  late final GeneratedColumn<int> totalNumberOfDays = GeneratedColumn<int>(
      'total_number_of_days', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  @override
  late final GeneratedColumn<DateTime> createdTime = GeneratedColumn<DateTime>(
      'created_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _lastUpdatedTimeMeta =
      const VerificationMeta('lastUpdatedTime');
  @override
  late final GeneratedColumn<DateTime> lastUpdatedTime =
      GeneratedColumn<DateTime>('last_updated_time', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        userStreakId,
        userAccountId,
        startTime,
        endTime,
        lastStreakUpdatedTime,
        status,
        totalNumberOfDays,
        createdTime,
        lastUpdatedTime
      ];
  @override
  String get aliasedName => _alias ?? 'user_streaks';
  @override
  String get actualTableName => 'user_streaks';
  @override
  VerificationContext validateIntegrity(Insertable<UserStreak> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_streak_id')) {
      context.handle(
          _userStreakIdMeta,
          userStreakId.isAcceptableOrUnknown(
              data['user_streak_id']!, _userStreakIdMeta));
    }
    if (data.containsKey('user_account_id')) {
      context.handle(
          _userAccountIdMeta,
          userAccountId.isAcceptableOrUnknown(
              data['user_account_id']!, _userAccountIdMeta));
    } else if (isInserting) {
      context.missing(_userAccountIdMeta);
    }
    if (data.containsKey('start_time')) {
      context.handle(_startTimeMeta,
          startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta));
    }
    if (data.containsKey('end_time')) {
      context.handle(_endTimeMeta,
          endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta));
    }
    if (data.containsKey('last_streak_updated_time')) {
      context.handle(
          _lastStreakUpdatedTimeMeta,
          lastStreakUpdatedTime.isAcceptableOrUnknown(
              data['last_streak_updated_time']!, _lastStreakUpdatedTimeMeta));
    }
    context.handle(_statusMeta, const VerificationResult.success());
    if (data.containsKey('total_number_of_days')) {
      context.handle(
          _totalNumberOfDaysMeta,
          totalNumberOfDays.isAcceptableOrUnknown(
              data['total_number_of_days']!, _totalNumberOfDaysMeta));
    } else if (isInserting) {
      context.missing(_totalNumberOfDaysMeta);
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    }
    if (data.containsKey('last_updated_time')) {
      context.handle(
          _lastUpdatedTimeMeta,
          lastUpdatedTime.isAcceptableOrUnknown(
              data['last_updated_time']!, _lastUpdatedTimeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userStreakId};
  @override
  UserStreak map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserStreak(
      userStreakId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_streak_id']),
      userAccountId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_account_id'])!,
      startTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_time']),
      endTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_time']),
      lastStreakUpdatedTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}last_streak_updated_time']),
      status: $UserStreaksTable.$converterstatus.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!),
      totalNumberOfDays: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}total_number_of_days'])!,
      createdTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_time']),
      lastUpdatedTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_updated_time']),
    );
  }

  @override
  $UserStreaksTable createAlias(String alias) {
    return $UserStreaksTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<BooleanStatus, String, String> $converterstatus =
      const EnumNameConverter<BooleanStatus>(BooleanStatus.values);
}

class UserStreak extends DataClass implements Insertable<UserStreak> {
  final int? userStreakId;
  final int userAccountId;
  final DateTime? startTime;
  final DateTime? endTime;
  final DateTime? lastStreakUpdatedTime;
  final BooleanStatus status;
  final int totalNumberOfDays;
  final DateTime? createdTime;
  final DateTime? lastUpdatedTime;
  const UserStreak(
      {this.userStreakId,
      required this.userAccountId,
      this.startTime,
      this.endTime,
      this.lastStreakUpdatedTime,
      required this.status,
      required this.totalNumberOfDays,
      this.createdTime,
      this.lastUpdatedTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || userStreakId != null) {
      map['user_streak_id'] = Variable<int>(userStreakId);
    }
    map['user_account_id'] = Variable<int>(userAccountId);
    if (!nullToAbsent || startTime != null) {
      map['start_time'] = Variable<DateTime>(startTime);
    }
    if (!nullToAbsent || endTime != null) {
      map['end_time'] = Variable<DateTime>(endTime);
    }
    if (!nullToAbsent || lastStreakUpdatedTime != null) {
      map['last_streak_updated_time'] =
          Variable<DateTime>(lastStreakUpdatedTime);
    }
    {
      final converter = $UserStreaksTable.$converterstatus;
      map['status'] = Variable<String>(converter.toSql(status));
    }
    map['total_number_of_days'] = Variable<int>(totalNumberOfDays);
    if (!nullToAbsent || createdTime != null) {
      map['created_time'] = Variable<DateTime>(createdTime);
    }
    if (!nullToAbsent || lastUpdatedTime != null) {
      map['last_updated_time'] = Variable<DateTime>(lastUpdatedTime);
    }
    return map;
  }

  UserStreaksCompanion toCompanion(bool nullToAbsent) {
    return UserStreaksCompanion(
      userStreakId: userStreakId == null && nullToAbsent
          ? const Value.absent()
          : Value(userStreakId),
      userAccountId: Value(userAccountId),
      startTime: startTime == null && nullToAbsent
          ? const Value.absent()
          : Value(startTime),
      endTime: endTime == null && nullToAbsent
          ? const Value.absent()
          : Value(endTime),
      lastStreakUpdatedTime: lastStreakUpdatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(lastStreakUpdatedTime),
      status: Value(status),
      totalNumberOfDays: Value(totalNumberOfDays),
      createdTime: createdTime == null && nullToAbsent
          ? const Value.absent()
          : Value(createdTime),
      lastUpdatedTime: lastUpdatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdatedTime),
    );
  }

  factory UserStreak.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserStreak(
      userStreakId: serializer.fromJson<int?>(json['userStreakId']),
      userAccountId: serializer.fromJson<int>(json['userAccountId']),
      startTime: serializer.fromJson<DateTime?>(json['startTime']),
      endTime: serializer.fromJson<DateTime?>(json['endTime']),
      lastStreakUpdatedTime:
          serializer.fromJson<DateTime?>(json['lastStreakUpdatedTime']),
      status: $UserStreaksTable.$converterstatus
          .fromJson(serializer.fromJson<String>(json['status'])),
      totalNumberOfDays: serializer.fromJson<int>(json['totalNumberOfDays']),
      createdTime: serializer.fromJson<DateTime?>(json['createdTime']),
      lastUpdatedTime: serializer.fromJson<DateTime?>(json['lastUpdatedTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userStreakId': serializer.toJson<int?>(userStreakId),
      'userAccountId': serializer.toJson<int>(userAccountId),
      'startTime': serializer.toJson<DateTime?>(startTime),
      'endTime': serializer.toJson<DateTime?>(endTime),
      'lastStreakUpdatedTime':
          serializer.toJson<DateTime?>(lastStreakUpdatedTime),
      'status': serializer
          .toJson<String>($UserStreaksTable.$converterstatus.toJson(status)),
      'totalNumberOfDays': serializer.toJson<int>(totalNumberOfDays),
      'createdTime': serializer.toJson<DateTime?>(createdTime),
      'lastUpdatedTime': serializer.toJson<DateTime?>(lastUpdatedTime),
    };
  }

  UserStreak copyWith(
          {Value<int?> userStreakId = const Value.absent(),
          int? userAccountId,
          Value<DateTime?> startTime = const Value.absent(),
          Value<DateTime?> endTime = const Value.absent(),
          Value<DateTime?> lastStreakUpdatedTime = const Value.absent(),
          BooleanStatus? status,
          int? totalNumberOfDays,
          Value<DateTime?> createdTime = const Value.absent(),
          Value<DateTime?> lastUpdatedTime = const Value.absent()}) =>
      UserStreak(
        userStreakId:
            userStreakId.present ? userStreakId.value : this.userStreakId,
        userAccountId: userAccountId ?? this.userAccountId,
        startTime: startTime.present ? startTime.value : this.startTime,
        endTime: endTime.present ? endTime.value : this.endTime,
        lastStreakUpdatedTime: lastStreakUpdatedTime.present
            ? lastStreakUpdatedTime.value
            : this.lastStreakUpdatedTime,
        status: status ?? this.status,
        totalNumberOfDays: totalNumberOfDays ?? this.totalNumberOfDays,
        createdTime: createdTime.present ? createdTime.value : this.createdTime,
        lastUpdatedTime: lastUpdatedTime.present
            ? lastUpdatedTime.value
            : this.lastUpdatedTime,
      );
  @override
  String toString() {
    return (StringBuffer('UserStreak(')
          ..write('userStreakId: $userStreakId, ')
          ..write('userAccountId: $userAccountId, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('lastStreakUpdatedTime: $lastStreakUpdatedTime, ')
          ..write('status: $status, ')
          ..write('totalNumberOfDays: $totalNumberOfDays, ')
          ..write('createdTime: $createdTime, ')
          ..write('lastUpdatedTime: $lastUpdatedTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      userStreakId,
      userAccountId,
      startTime,
      endTime,
      lastStreakUpdatedTime,
      status,
      totalNumberOfDays,
      createdTime,
      lastUpdatedTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserStreak &&
          other.userStreakId == this.userStreakId &&
          other.userAccountId == this.userAccountId &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime &&
          other.lastStreakUpdatedTime == this.lastStreakUpdatedTime &&
          other.status == this.status &&
          other.totalNumberOfDays == this.totalNumberOfDays &&
          other.createdTime == this.createdTime &&
          other.lastUpdatedTime == this.lastUpdatedTime);
}

class UserStreaksCompanion extends UpdateCompanion<UserStreak> {
  final Value<int?> userStreakId;
  final Value<int> userAccountId;
  final Value<DateTime?> startTime;
  final Value<DateTime?> endTime;
  final Value<DateTime?> lastStreakUpdatedTime;
  final Value<BooleanStatus> status;
  final Value<int> totalNumberOfDays;
  final Value<DateTime?> createdTime;
  final Value<DateTime?> lastUpdatedTime;
  const UserStreaksCompanion({
    this.userStreakId = const Value.absent(),
    this.userAccountId = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.lastStreakUpdatedTime = const Value.absent(),
    this.status = const Value.absent(),
    this.totalNumberOfDays = const Value.absent(),
    this.createdTime = const Value.absent(),
    this.lastUpdatedTime = const Value.absent(),
  });
  UserStreaksCompanion.insert({
    this.userStreakId = const Value.absent(),
    required int userAccountId,
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.lastStreakUpdatedTime = const Value.absent(),
    required BooleanStatus status,
    required int totalNumberOfDays,
    this.createdTime = const Value.absent(),
    this.lastUpdatedTime = const Value.absent(),
  })  : userAccountId = Value(userAccountId),
        status = Value(status),
        totalNumberOfDays = Value(totalNumberOfDays);
  static Insertable<UserStreak> custom({
    Expression<int>? userStreakId,
    Expression<int>? userAccountId,
    Expression<DateTime>? startTime,
    Expression<DateTime>? endTime,
    Expression<DateTime>? lastStreakUpdatedTime,
    Expression<String>? status,
    Expression<int>? totalNumberOfDays,
    Expression<DateTime>? createdTime,
    Expression<DateTime>? lastUpdatedTime,
  }) {
    return RawValuesInsertable({
      if (userStreakId != null) 'user_streak_id': userStreakId,
      if (userAccountId != null) 'user_account_id': userAccountId,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
      if (lastStreakUpdatedTime != null)
        'last_streak_updated_time': lastStreakUpdatedTime,
      if (status != null) 'status': status,
      if (totalNumberOfDays != null) 'total_number_of_days': totalNumberOfDays,
      if (createdTime != null) 'created_time': createdTime,
      if (lastUpdatedTime != null) 'last_updated_time': lastUpdatedTime,
    });
  }

  UserStreaksCompanion copyWith(
      {Value<int?>? userStreakId,
      Value<int>? userAccountId,
      Value<DateTime?>? startTime,
      Value<DateTime?>? endTime,
      Value<DateTime?>? lastStreakUpdatedTime,
      Value<BooleanStatus>? status,
      Value<int>? totalNumberOfDays,
      Value<DateTime?>? createdTime,
      Value<DateTime?>? lastUpdatedTime}) {
    return UserStreaksCompanion(
      userStreakId: userStreakId ?? this.userStreakId,
      userAccountId: userAccountId ?? this.userAccountId,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      lastStreakUpdatedTime:
          lastStreakUpdatedTime ?? this.lastStreakUpdatedTime,
      status: status ?? this.status,
      totalNumberOfDays: totalNumberOfDays ?? this.totalNumberOfDays,
      createdTime: createdTime ?? this.createdTime,
      lastUpdatedTime: lastUpdatedTime ?? this.lastUpdatedTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userStreakId.present) {
      map['user_streak_id'] = Variable<int>(userStreakId.value);
    }
    if (userAccountId.present) {
      map['user_account_id'] = Variable<int>(userAccountId.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<DateTime>(startTime.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<DateTime>(endTime.value);
    }
    if (lastStreakUpdatedTime.present) {
      map['last_streak_updated_time'] =
          Variable<DateTime>(lastStreakUpdatedTime.value);
    }
    if (status.present) {
      final converter = $UserStreaksTable.$converterstatus;
      map['status'] = Variable<String>(converter.toSql(status.value));
    }
    if (totalNumberOfDays.present) {
      map['total_number_of_days'] = Variable<int>(totalNumberOfDays.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<DateTime>(createdTime.value);
    }
    if (lastUpdatedTime.present) {
      map['last_updated_time'] = Variable<DateTime>(lastUpdatedTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserStreaksCompanion(')
          ..write('userStreakId: $userStreakId, ')
          ..write('userAccountId: $userAccountId, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('lastStreakUpdatedTime: $lastStreakUpdatedTime, ')
          ..write('status: $status, ')
          ..write('totalNumberOfDays: $totalNumberOfDays, ')
          ..write('createdTime: $createdTime, ')
          ..write('lastUpdatedTime: $lastUpdatedTime')
          ..write(')'))
        .toString();
  }
}

class $UserStreakItemsTable extends UserStreakItems
    with TableInfo<$UserStreakItemsTable, UserStreakItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserStreakItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userStreakItemIdMeta =
      const VerificationMeta('userStreakItemId');
  @override
  late final GeneratedColumn<int> userStreakItemId = GeneratedColumn<int>(
      'user_streak_item_id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userStreakIdMeta =
      const VerificationMeta('userStreakId');
  @override
  late final GeneratedColumn<int> userStreakId = GeneratedColumn<int>(
      'user_streak_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES user_streaks (user_streak_id)'));
  static const VerificationMeta _userStreakDateMeta =
      const VerificationMeta('userStreakDate');
  @override
  late final GeneratedColumn<DateTime> userStreakDate =
      GeneratedColumn<DateTime>('user_streak_date', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _streakDayMeta =
      const VerificationMeta('streakDay');
  @override
  late final GeneratedColumn<int> streakDay = GeneratedColumn<int>(
      'streak_day', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  @override
  late final GeneratedColumn<DateTime> createdTime = GeneratedColumn<DateTime>(
      'created_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _lastUpdatedTimeMeta =
      const VerificationMeta('lastUpdatedTime');
  @override
  late final GeneratedColumn<DateTime> lastUpdatedTime =
      GeneratedColumn<DateTime>('last_updated_time', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        userStreakItemId,
        userStreakId,
        userStreakDate,
        streakDay,
        createdTime,
        lastUpdatedTime
      ];
  @override
  String get aliasedName => _alias ?? 'user_streak_items';
  @override
  String get actualTableName => 'user_streak_items';
  @override
  VerificationContext validateIntegrity(Insertable<UserStreakItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_streak_item_id')) {
      context.handle(
          _userStreakItemIdMeta,
          userStreakItemId.isAcceptableOrUnknown(
              data['user_streak_item_id']!, _userStreakItemIdMeta));
    }
    if (data.containsKey('user_streak_id')) {
      context.handle(
          _userStreakIdMeta,
          userStreakId.isAcceptableOrUnknown(
              data['user_streak_id']!, _userStreakIdMeta));
    } else if (isInserting) {
      context.missing(_userStreakIdMeta);
    }
    if (data.containsKey('user_streak_date')) {
      context.handle(
          _userStreakDateMeta,
          userStreakDate.isAcceptableOrUnknown(
              data['user_streak_date']!, _userStreakDateMeta));
    }
    if (data.containsKey('streak_day')) {
      context.handle(_streakDayMeta,
          streakDay.isAcceptableOrUnknown(data['streak_day']!, _streakDayMeta));
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    }
    if (data.containsKey('last_updated_time')) {
      context.handle(
          _lastUpdatedTimeMeta,
          lastUpdatedTime.isAcceptableOrUnknown(
              data['last_updated_time']!, _lastUpdatedTimeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userStreakItemId};
  @override
  UserStreakItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserStreakItem(
      userStreakItemId: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}user_streak_item_id']),
      userStreakId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_streak_id'])!,
      userStreakDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}user_streak_date']),
      streakDay: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}streak_day']),
      createdTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_time']),
      lastUpdatedTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_updated_time']),
    );
  }

  @override
  $UserStreakItemsTable createAlias(String alias) {
    return $UserStreakItemsTable(attachedDatabase, alias);
  }
}

class UserStreakItem extends DataClass implements Insertable<UserStreakItem> {
  final int? userStreakItemId;
  final int userStreakId;
  final DateTime? userStreakDate;
  final int? streakDay;
  final DateTime? createdTime;
  final DateTime? lastUpdatedTime;
  const UserStreakItem(
      {this.userStreakItemId,
      required this.userStreakId,
      this.userStreakDate,
      this.streakDay,
      this.createdTime,
      this.lastUpdatedTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || userStreakItemId != null) {
      map['user_streak_item_id'] = Variable<int>(userStreakItemId);
    }
    map['user_streak_id'] = Variable<int>(userStreakId);
    if (!nullToAbsent || userStreakDate != null) {
      map['user_streak_date'] = Variable<DateTime>(userStreakDate);
    }
    if (!nullToAbsent || streakDay != null) {
      map['streak_day'] = Variable<int>(streakDay);
    }
    if (!nullToAbsent || createdTime != null) {
      map['created_time'] = Variable<DateTime>(createdTime);
    }
    if (!nullToAbsent || lastUpdatedTime != null) {
      map['last_updated_time'] = Variable<DateTime>(lastUpdatedTime);
    }
    return map;
  }

  UserStreakItemsCompanion toCompanion(bool nullToAbsent) {
    return UserStreakItemsCompanion(
      userStreakItemId: userStreakItemId == null && nullToAbsent
          ? const Value.absent()
          : Value(userStreakItemId),
      userStreakId: Value(userStreakId),
      userStreakDate: userStreakDate == null && nullToAbsent
          ? const Value.absent()
          : Value(userStreakDate),
      streakDay: streakDay == null && nullToAbsent
          ? const Value.absent()
          : Value(streakDay),
      createdTime: createdTime == null && nullToAbsent
          ? const Value.absent()
          : Value(createdTime),
      lastUpdatedTime: lastUpdatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdatedTime),
    );
  }

  factory UserStreakItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserStreakItem(
      userStreakItemId: serializer.fromJson<int?>(json['userStreakItemId']),
      userStreakId: serializer.fromJson<int>(json['userStreakId']),
      userStreakDate: serializer.fromJson<DateTime?>(json['userStreakDate']),
      streakDay: serializer.fromJson<int?>(json['streakDay']),
      createdTime: serializer.fromJson<DateTime?>(json['createdTime']),
      lastUpdatedTime: serializer.fromJson<DateTime?>(json['lastUpdatedTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userStreakItemId': serializer.toJson<int?>(userStreakItemId),
      'userStreakId': serializer.toJson<int>(userStreakId),
      'userStreakDate': serializer.toJson<DateTime?>(userStreakDate),
      'streakDay': serializer.toJson<int?>(streakDay),
      'createdTime': serializer.toJson<DateTime?>(createdTime),
      'lastUpdatedTime': serializer.toJson<DateTime?>(lastUpdatedTime),
    };
  }

  UserStreakItem copyWith(
          {Value<int?> userStreakItemId = const Value.absent(),
          int? userStreakId,
          Value<DateTime?> userStreakDate = const Value.absent(),
          Value<int?> streakDay = const Value.absent(),
          Value<DateTime?> createdTime = const Value.absent(),
          Value<DateTime?> lastUpdatedTime = const Value.absent()}) =>
      UserStreakItem(
        userStreakItemId: userStreakItemId.present
            ? userStreakItemId.value
            : this.userStreakItemId,
        userStreakId: userStreakId ?? this.userStreakId,
        userStreakDate:
            userStreakDate.present ? userStreakDate.value : this.userStreakDate,
        streakDay: streakDay.present ? streakDay.value : this.streakDay,
        createdTime: createdTime.present ? createdTime.value : this.createdTime,
        lastUpdatedTime: lastUpdatedTime.present
            ? lastUpdatedTime.value
            : this.lastUpdatedTime,
      );
  @override
  String toString() {
    return (StringBuffer('UserStreakItem(')
          ..write('userStreakItemId: $userStreakItemId, ')
          ..write('userStreakId: $userStreakId, ')
          ..write('userStreakDate: $userStreakDate, ')
          ..write('streakDay: $streakDay, ')
          ..write('createdTime: $createdTime, ')
          ..write('lastUpdatedTime: $lastUpdatedTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userStreakItemId, userStreakId,
      userStreakDate, streakDay, createdTime, lastUpdatedTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserStreakItem &&
          other.userStreakItemId == this.userStreakItemId &&
          other.userStreakId == this.userStreakId &&
          other.userStreakDate == this.userStreakDate &&
          other.streakDay == this.streakDay &&
          other.createdTime == this.createdTime &&
          other.lastUpdatedTime == this.lastUpdatedTime);
}

class UserStreakItemsCompanion extends UpdateCompanion<UserStreakItem> {
  final Value<int?> userStreakItemId;
  final Value<int> userStreakId;
  final Value<DateTime?> userStreakDate;
  final Value<int?> streakDay;
  final Value<DateTime?> createdTime;
  final Value<DateTime?> lastUpdatedTime;
  const UserStreakItemsCompanion({
    this.userStreakItemId = const Value.absent(),
    this.userStreakId = const Value.absent(),
    this.userStreakDate = const Value.absent(),
    this.streakDay = const Value.absent(),
    this.createdTime = const Value.absent(),
    this.lastUpdatedTime = const Value.absent(),
  });
  UserStreakItemsCompanion.insert({
    this.userStreakItemId = const Value.absent(),
    required int userStreakId,
    this.userStreakDate = const Value.absent(),
    this.streakDay = const Value.absent(),
    this.createdTime = const Value.absent(),
    this.lastUpdatedTime = const Value.absent(),
  }) : userStreakId = Value(userStreakId);
  static Insertable<UserStreakItem> custom({
    Expression<int>? userStreakItemId,
    Expression<int>? userStreakId,
    Expression<DateTime>? userStreakDate,
    Expression<int>? streakDay,
    Expression<DateTime>? createdTime,
    Expression<DateTime>? lastUpdatedTime,
  }) {
    return RawValuesInsertable({
      if (userStreakItemId != null) 'user_streak_item_id': userStreakItemId,
      if (userStreakId != null) 'user_streak_id': userStreakId,
      if (userStreakDate != null) 'user_streak_date': userStreakDate,
      if (streakDay != null) 'streak_day': streakDay,
      if (createdTime != null) 'created_time': createdTime,
      if (lastUpdatedTime != null) 'last_updated_time': lastUpdatedTime,
    });
  }

  UserStreakItemsCompanion copyWith(
      {Value<int?>? userStreakItemId,
      Value<int>? userStreakId,
      Value<DateTime?>? userStreakDate,
      Value<int?>? streakDay,
      Value<DateTime?>? createdTime,
      Value<DateTime?>? lastUpdatedTime}) {
    return UserStreakItemsCompanion(
      userStreakItemId: userStreakItemId ?? this.userStreakItemId,
      userStreakId: userStreakId ?? this.userStreakId,
      userStreakDate: userStreakDate ?? this.userStreakDate,
      streakDay: streakDay ?? this.streakDay,
      createdTime: createdTime ?? this.createdTime,
      lastUpdatedTime: lastUpdatedTime ?? this.lastUpdatedTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userStreakItemId.present) {
      map['user_streak_item_id'] = Variable<int>(userStreakItemId.value);
    }
    if (userStreakId.present) {
      map['user_streak_id'] = Variable<int>(userStreakId.value);
    }
    if (userStreakDate.present) {
      map['user_streak_date'] = Variable<DateTime>(userStreakDate.value);
    }
    if (streakDay.present) {
      map['streak_day'] = Variable<int>(streakDay.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<DateTime>(createdTime.value);
    }
    if (lastUpdatedTime.present) {
      map['last_updated_time'] = Variable<DateTime>(lastUpdatedTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserStreakItemsCompanion(')
          ..write('userStreakItemId: $userStreakItemId, ')
          ..write('userStreakId: $userStreakId, ')
          ..write('userStreakDate: $userStreakDate, ')
          ..write('streakDay: $streakDay, ')
          ..write('createdTime: $createdTime, ')
          ..write('lastUpdatedTime: $lastUpdatedTime')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $UserAccountsTable userAccounts = $UserAccountsTable(this);
  late final $TaskActivityRecordsTable taskActivityRecords =
      $TaskActivityRecordsTable(this);
  late final $TaskActivityGoalsTable taskActivityGoals =
      $TaskActivityGoalsTable(this);
  late final $PlanRoutinesTable planRoutines = $PlanRoutinesTable(this);
  late final $UserTaskActivityGoalsTable userTaskActivityGoals =
      $UserTaskActivityGoalsTable(this);
  late final $UserStreaksTable userStreaks = $UserStreaksTable(this);
  late final $UserStreakItemsTable userStreakItems =
      $UserStreakItemsTable(this);
  late final UserAccountsDao userAccountsDao =
      UserAccountsDao(this as AppDatabase);
  late final TaskActivityRecordsDao taskActivityRecordsDao =
      TaskActivityRecordsDao(this as AppDatabase);
  late final TaskActivityGoalsDao taskActivityGoalsDao =
      TaskActivityGoalsDao(this as AppDatabase);
  late final PlanRoutinesDao planRoutinesDao =
      PlanRoutinesDao(this as AppDatabase);
  late final UserTaskActivityGoalsDao userTaskActivityGoalsDao =
      UserTaskActivityGoalsDao(this as AppDatabase);
  late final UserStreaksDao userStreaksDao =
      UserStreaksDao(this as AppDatabase);
  late final UserStreakItemsDao userStreakItemsDao =
      UserStreakItemsDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        userAccounts,
        taskActivityRecords,
        taskActivityGoals,
        planRoutines,
        userTaskActivityGoals,
        userStreaks,
        userStreakItems
      ];
}
