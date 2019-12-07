// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_firmware.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltFirmware> _$builtFirmwareSerializer =
    new _$BuiltFirmwareSerializer();

class _$BuiltFirmwareSerializer implements StructuredSerializer<BuiltFirmware> {
  @override
  final Iterable<Type> types = const [BuiltFirmware, _$BuiltFirmware];
  @override
  final String wireName = 'BuiltFirmware';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltFirmware object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'photo',
      serializers.serialize(object.photo,
          specifiedType: const FullType(String)),
      'brand',
      serializers.serialize(object.brand,
          specifiedType: const FullType(String)),
    ];
    if (object.buildnumber != null) {
      result
        ..add('buildnumber')
        ..add(serializers.serialize(object.buildnumber,
            specifiedType: const FullType(String)));
    }
    if (object.version != null) {
      result
        ..add('version')
        ..add(serializers.serialize(object.version,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltFirmware deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltFirmwareBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'buildnumber':
          result.buildnumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'brand':
          result.brand = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltFirmware extends BuiltFirmware {
  @override
  final int id;
  @override
  final String name;
  @override
  final String photo;
  @override
  final String buildnumber;
  @override
  final String brand;
  @override
  final String version;

  factory _$BuiltFirmware([void Function(BuiltFirmwareBuilder) updates]) =>
      (new BuiltFirmwareBuilder()..update(updates)).build();

  _$BuiltFirmware._(
      {this.id,
      this.name,
      this.photo,
      this.buildnumber,
      this.brand,
      this.version})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltFirmware', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('BuiltFirmware', 'name');
    }
    if (photo == null) {
      throw new BuiltValueNullFieldError('BuiltFirmware', 'photo');
    }
    if (brand == null) {
      throw new BuiltValueNullFieldError('BuiltFirmware', 'brand');
    }
  }

  @override
  BuiltFirmware rebuild(void Function(BuiltFirmwareBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltFirmwareBuilder toBuilder() => new BuiltFirmwareBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltFirmware &&
        id == other.id &&
        name == other.name &&
        photo == other.photo &&
        buildnumber == other.buildnumber &&
        brand == other.brand &&
        version == other.version;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), name.hashCode), photo.hashCode),
                buildnumber.hashCode),
            brand.hashCode),
        version.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltFirmware')
          ..add('id', id)
          ..add('name', name)
          ..add('photo', photo)
          ..add('buildnumber', buildnumber)
          ..add('brand', brand)
          ..add('version', version))
        .toString();
  }
}

class BuiltFirmwareBuilder
    implements Builder<BuiltFirmware, BuiltFirmwareBuilder> {
  _$BuiltFirmware _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _photo;
  String get photo => _$this._photo;
  set photo(String photo) => _$this._photo = photo;

  String _buildnumber;
  String get buildnumber => _$this._buildnumber;
  set buildnumber(String buildnumber) => _$this._buildnumber = buildnumber;

  String _brand;
  String get brand => _$this._brand;
  set brand(String brand) => _$this._brand = brand;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  BuiltFirmwareBuilder();

  BuiltFirmwareBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _photo = _$v.photo;
      _buildnumber = _$v.buildnumber;
      _brand = _$v.brand;
      _version = _$v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltFirmware other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltFirmware;
  }

  @override
  void update(void Function(BuiltFirmwareBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltFirmware build() {
    final _$result = _$v ??
        new _$BuiltFirmware._(
            id: id,
            name: name,
            photo: photo,
            buildnumber: buildnumber,
            brand: brand,
            version: version);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
