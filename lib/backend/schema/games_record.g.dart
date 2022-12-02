// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GamesRecord> _$gamesRecordSerializer = new _$GamesRecordSerializer();

class _$GamesRecordSerializer implements StructuredSerializer<GamesRecord> {
  @override
  final Iterable<Type> types = const [GamesRecord, _$GamesRecord];
  @override
  final String wireName = 'GamesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GamesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.categories;
    if (value != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.users;
    if (value != null) {
      result
        ..add('users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.selectMode;
    if (value != null) {
      result
        ..add('select_mode')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.questionMode;
    if (value != null) {
      result
        ..add('question_mode')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.scoreMode;
    if (value != null) {
      result
        ..add('score_mode')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.currentCategory;
    if (value != null) {
      result
        ..add('current_category')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.currentValue;
    if (value != null) {
      result
        ..add('current_value')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.selectingUser;
    if (value != null) {
      result
        ..add('selecting_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.answeringUser;
    if (value != null) {
      result
        ..add('answering_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.currentCategoryName;
    if (value != null) {
      result
        ..add('current_category_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currentQuestion;
    if (value != null) {
      result
        ..add('current_question')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currentAnswer;
    if (value != null) {
      result
        ..add('current_answer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.answeredQuestions;
    if (value != null) {
      result
        ..add('answered_questions')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  GamesRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GamesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'users':
          result.users.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'select_mode':
          result.selectMode = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'question_mode':
          result.questionMode = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'score_mode':
          result.scoreMode = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'current_category':
          result.currentCategory = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'current_value':
          result.currentValue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'selecting_user':
          result.selectingUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'answering_user':
          result.answeringUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'current_category_name':
          result.currentCategoryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'current_question':
          result.currentQuestion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'current_answer':
          result.currentAnswer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'answered_questions':
          result.answeredQuestions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$GamesRecord extends GamesRecord {
  @override
  final int? code;
  @override
  final BuiltList<int>? categories;
  @override
  final BuiltList<DocumentReference<Object?>>? users;
  @override
  final bool? selectMode;
  @override
  final bool? questionMode;
  @override
  final bool? scoreMode;
  @override
  final int? currentCategory;
  @override
  final int? currentValue;
  @override
  final DocumentReference<Object?>? selectingUser;
  @override
  final DocumentReference<Object?>? answeringUser;
  @override
  final String? currentCategoryName;
  @override
  final String? currentQuestion;
  @override
  final String? currentAnswer;
  @override
  final BuiltList<int>? answeredQuestions;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GamesRecord([void Function(GamesRecordBuilder)? updates]) =>
      (new GamesRecordBuilder()..update(updates))._build();

  _$GamesRecord._(
      {this.code,
      this.categories,
      this.users,
      this.selectMode,
      this.questionMode,
      this.scoreMode,
      this.currentCategory,
      this.currentValue,
      this.selectingUser,
      this.answeringUser,
      this.currentCategoryName,
      this.currentQuestion,
      this.currentAnswer,
      this.answeredQuestions,
      this.ffRef})
      : super._();

  @override
  GamesRecord rebuild(void Function(GamesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GamesRecordBuilder toBuilder() => new GamesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GamesRecord &&
        code == other.code &&
        categories == other.categories &&
        users == other.users &&
        selectMode == other.selectMode &&
        questionMode == other.questionMode &&
        scoreMode == other.scoreMode &&
        currentCategory == other.currentCategory &&
        currentValue == other.currentValue &&
        selectingUser == other.selectingUser &&
        answeringUser == other.answeringUser &&
        currentCategoryName == other.currentCategoryName &&
        currentQuestion == other.currentQuestion &&
        currentAnswer == other.currentAnswer &&
        answeredQuestions == other.answeredQuestions &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(0,
                                                                code.hashCode),
                                                            categories
                                                                .hashCode),
                                                        users.hashCode),
                                                    selectMode.hashCode),
                                                questionMode.hashCode),
                                            scoreMode.hashCode),
                                        currentCategory.hashCode),
                                    currentValue.hashCode),
                                selectingUser.hashCode),
                            answeringUser.hashCode),
                        currentCategoryName.hashCode),
                    currentQuestion.hashCode),
                currentAnswer.hashCode),
            answeredQuestions.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GamesRecord')
          ..add('code', code)
          ..add('categories', categories)
          ..add('users', users)
          ..add('selectMode', selectMode)
          ..add('questionMode', questionMode)
          ..add('scoreMode', scoreMode)
          ..add('currentCategory', currentCategory)
          ..add('currentValue', currentValue)
          ..add('selectingUser', selectingUser)
          ..add('answeringUser', answeringUser)
          ..add('currentCategoryName', currentCategoryName)
          ..add('currentQuestion', currentQuestion)
          ..add('currentAnswer', currentAnswer)
          ..add('answeredQuestions', answeredQuestions)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GamesRecordBuilder implements Builder<GamesRecord, GamesRecordBuilder> {
  _$GamesRecord? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  ListBuilder<int>? _categories;
  ListBuilder<int> get categories =>
      _$this._categories ??= new ListBuilder<int>();
  set categories(ListBuilder<int>? categories) =>
      _$this._categories = categories;

  ListBuilder<DocumentReference<Object?>>? _users;
  ListBuilder<DocumentReference<Object?>> get users =>
      _$this._users ??= new ListBuilder<DocumentReference<Object?>>();
  set users(ListBuilder<DocumentReference<Object?>>? users) =>
      _$this._users = users;

  bool? _selectMode;
  bool? get selectMode => _$this._selectMode;
  set selectMode(bool? selectMode) => _$this._selectMode = selectMode;

  bool? _questionMode;
  bool? get questionMode => _$this._questionMode;
  set questionMode(bool? questionMode) => _$this._questionMode = questionMode;

  bool? _scoreMode;
  bool? get scoreMode => _$this._scoreMode;
  set scoreMode(bool? scoreMode) => _$this._scoreMode = scoreMode;

  int? _currentCategory;
  int? get currentCategory => _$this._currentCategory;
  set currentCategory(int? currentCategory) =>
      _$this._currentCategory = currentCategory;

  int? _currentValue;
  int? get currentValue => _$this._currentValue;
  set currentValue(int? currentValue) => _$this._currentValue = currentValue;

  DocumentReference<Object?>? _selectingUser;
  DocumentReference<Object?>? get selectingUser => _$this._selectingUser;
  set selectingUser(DocumentReference<Object?>? selectingUser) =>
      _$this._selectingUser = selectingUser;

  DocumentReference<Object?>? _answeringUser;
  DocumentReference<Object?>? get answeringUser => _$this._answeringUser;
  set answeringUser(DocumentReference<Object?>? answeringUser) =>
      _$this._answeringUser = answeringUser;

  String? _currentCategoryName;
  String? get currentCategoryName => _$this._currentCategoryName;
  set currentCategoryName(String? currentCategoryName) =>
      _$this._currentCategoryName = currentCategoryName;

  String? _currentQuestion;
  String? get currentQuestion => _$this._currentQuestion;
  set currentQuestion(String? currentQuestion) =>
      _$this._currentQuestion = currentQuestion;

  String? _currentAnswer;
  String? get currentAnswer => _$this._currentAnswer;
  set currentAnswer(String? currentAnswer) =>
      _$this._currentAnswer = currentAnswer;

  ListBuilder<int>? _answeredQuestions;
  ListBuilder<int> get answeredQuestions =>
      _$this._answeredQuestions ??= new ListBuilder<int>();
  set answeredQuestions(ListBuilder<int>? answeredQuestions) =>
      _$this._answeredQuestions = answeredQuestions;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GamesRecordBuilder() {
    GamesRecord._initializeBuilder(this);
  }

  GamesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _categories = $v.categories?.toBuilder();
      _users = $v.users?.toBuilder();
      _selectMode = $v.selectMode;
      _questionMode = $v.questionMode;
      _scoreMode = $v.scoreMode;
      _currentCategory = $v.currentCategory;
      _currentValue = $v.currentValue;
      _selectingUser = $v.selectingUser;
      _answeringUser = $v.answeringUser;
      _currentCategoryName = $v.currentCategoryName;
      _currentQuestion = $v.currentQuestion;
      _currentAnswer = $v.currentAnswer;
      _answeredQuestions = $v.answeredQuestions?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GamesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GamesRecord;
  }

  @override
  void update(void Function(GamesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GamesRecord build() => _build();

  _$GamesRecord _build() {
    _$GamesRecord _$result;
    try {
      _$result = _$v ??
          new _$GamesRecord._(
              code: code,
              categories: _categories?.build(),
              users: _users?.build(),
              selectMode: selectMode,
              questionMode: questionMode,
              scoreMode: scoreMode,
              currentCategory: currentCategory,
              currentValue: currentValue,
              selectingUser: selectingUser,
              answeringUser: answeringUser,
              currentCategoryName: currentCategoryName,
              currentQuestion: currentQuestion,
              currentAnswer: currentAnswer,
              answeredQuestions: _answeredQuestions?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();
        _$failedField = 'users';
        _users?.build();

        _$failedField = 'answeredQuestions';
        _answeredQuestions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GamesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
