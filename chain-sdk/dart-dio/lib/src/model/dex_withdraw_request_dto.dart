//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dex_withdraw_request_dto.g.dart';

/// Withdraw request of an user
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [id] - Identifier, format: (transaction hash)-(id).
/// * [user] - 
/// * [tokenAddress] - 
/// * [amount] - 
/// * [withdrawableFromBatchId] - 
/// * [createEpoch] - 
/// * [createBatchId] - 
/// * [txHash] - 
/// * [vid] - 
@BuiltValue()
abstract class DexWithdrawRequestDTO implements Built<DexWithdrawRequestDTO, DexWithdrawRequestDTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// Number of block in which entity was recorded.
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// Identifier, format: (transaction hash)-(id).
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// 
  @BuiltValueField(wireName: r'user')
  String? get user;

  /// 
  @BuiltValueField(wireName: r'token_address')
  String? get tokenAddress;

  /// 
  @BuiltValueField(wireName: r'amount')
  String? get amount;

  /// 
  @BuiltValueField(wireName: r'withdrawable_from_batch_id')
  String? get withdrawableFromBatchId;

  /// 
  @BuiltValueField(wireName: r'create_epoch')
  String? get createEpoch;

  /// 
  @BuiltValueField(wireName: r'create_batch_id')
  String? get createBatchId;

  /// 
  @BuiltValueField(wireName: r'tx_hash')
  String? get txHash;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  DexWithdrawRequestDTO._();

  factory DexWithdrawRequestDTO([void updates(DexWithdrawRequestDTOBuilder b)]) = _$DexWithdrawRequestDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DexWithdrawRequestDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DexWithdrawRequestDTO> get serializer => _$DexWithdrawRequestDTOSerializer();
}

class _$DexWithdrawRequestDTOSerializer implements PrimitiveSerializer<DexWithdrawRequestDTO> {
  @override
  final Iterable<Type> types = const [DexWithdrawRequestDTO, _$DexWithdrawRequestDTO];

  @override
  final String wireName = r'DexWithdrawRequestDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DexWithdrawRequestDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entryTime != null) {
      yield r'entry_time';
      yield serializers.serialize(
        object.entryTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.recvTime != null) {
      yield r'recv_time';
      yield serializers.serialize(
        object.recvTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.blockNumber != null) {
      yield r'block_number';
      yield serializers.serialize(
        object.blockNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tokenAddress != null) {
      yield r'token_address';
      yield serializers.serialize(
        object.tokenAddress,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.withdrawableFromBatchId != null) {
      yield r'withdrawable_from_batch_id';
      yield serializers.serialize(
        object.withdrawableFromBatchId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.createEpoch != null) {
      yield r'create_epoch';
      yield serializers.serialize(
        object.createEpoch,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.createBatchId != null) {
      yield r'create_batch_id';
      yield serializers.serialize(
        object.createBatchId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.txHash != null) {
      yield r'tx_hash';
      yield serializers.serialize(
        object.txHash,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.vid != null) {
      yield r'vid';
      yield serializers.serialize(
        object.vid,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DexWithdrawRequestDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DexWithdrawRequestDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entry_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.entryTime = valueDes;
          break;
        case r'recv_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.recvTime = valueDes;
          break;
        case r'block_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.blockNumber = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.user = valueDes;
          break;
        case r'token_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tokenAddress = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.amount = valueDes;
          break;
        case r'withdrawable_from_batch_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.withdrawableFromBatchId = valueDes;
          break;
        case r'create_epoch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.createEpoch = valueDes;
          break;
        case r'create_batch_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.createBatchId = valueDes;
          break;
        case r'tx_hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.txHash = valueDes;
          break;
        case r'vid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DexWithdrawRequestDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DexWithdrawRequestDTOBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

