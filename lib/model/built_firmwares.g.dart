// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_firmwares.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltFirmwares> _$builtFirmwaresSerializer =
    new _$BuiltFirmwaresSerializer();

class _$BuiltFirmwaresSerializer
    implements StructuredSerializer<BuiltFirmwares> {
  @override
  final Iterable<Type> types = const [BuiltFirmwares, _$BuiltFirmwares];
  @override
  final String wireName = 'BuiltFirmwares';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltFirmwares object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'firmwares',
      serializers.serialize(object.firmwares,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BuiltFirmware)])),
      'total',
      serializers.serialize(object.total, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  BuiltFirmwares deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltFirmwaresBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'firmwares':
          result.firmwares.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltFirmware)]))
              as BuiltList<dynamic>);
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltFirmwares extends BuiltFirmwares {
  @override
  final BuiltList<BuiltFirmware> firmwares;
  @override
  final int total;

  factory _$BuiltFirmwares([void Function(BuiltFirmwaresBuilder) updates]) =>
      (new BuiltFirmwaresBuilder()..update(updates)).build();

  _$BuiltFirmwares._({this.firmwares, this.total}) : super._() {
    if (firmwares == null) {
      throw new BuiltValueNullFieldError('BuiltFirmwares', 'firmwares');
    }
    if (total == null) {
      throw new BuiltValueNullFieldError('BuiltFirmwares', 'total');
    }
  }

  @override
  BuiltFirmwares rebuild(void Function(BuiltFirmwaresBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltFirmwaresBuilder toBuilder() =>
      new BuiltFirmwaresBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltFirmwares &&
        firmwares == other.firmwares &&
        total == other.total;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, firmwares.hashCode), total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltFirmwares')
          ..add('firmwares', firmwares)
          ..add('total', total))
        .toString();
  }
}

class BuiltFirmwaresBuilder
    implements Builder<BuiltFirmwares, BuiltFirmwaresBuilder> {
  _$BuiltFirmwares _$v;

  ListBuilder<BuiltFirmware> _firmwares;
  ListBuilder<BuiltFirmware> get firmwares =>
      _$this._firmwares ??= new ListBuilder<BuiltFirmware>();
  set firmwares(ListBuilder<BuiltFirmware> firmwares) =>
      _$this._firmwares = firmwares;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  BuiltFirmwaresBuilder();

  BuiltFirmwaresBuilder get _$this {
    if (_$v != null) {
      _firmwares = _$v.firmwares?.toBuilder();
      _total = _$v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltFirmwares other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltFirmwares;
  }

  @override
  void update(void Function(BuiltFirmwaresBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltFirmwares build() {
    _$BuiltFirmwares _$result;
    try {
      _$result = _$v ??
          new _$BuiltFirmwares._(firmwares: firmwares.build(), total: total);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'firmwares';
        firmwares.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltFirmwares', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
