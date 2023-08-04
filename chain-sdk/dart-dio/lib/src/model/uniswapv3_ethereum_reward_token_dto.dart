//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'uniswapv3_ethereum_reward_token_dto.g.dart';

/// Reward tokens awarded to lenders and borrowers.
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [id] - (reward token type)-(smart contract address of the reward token)
/// * [token] - Reference to the actual token
@BuiltValue()
abstract class UNISWAPV3ETHEREUMRewardTokenDTO implements Built<UNISWAPV3ETHEREUMRewardTokenDTO, UNISWAPV3ETHEREUMRewardTokenDTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// Number of block in which entity was recorded.
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// (reward token type)-(smart contract address of the reward token)
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Reference to the actual token
  @BuiltValueField(wireName: r'token')
  String? get token;

  UNISWAPV3ETHEREUMRewardTokenDTO._();

  factory UNISWAPV3ETHEREUMRewardTokenDTO([void updates(UNISWAPV3ETHEREUMRewardTokenDTOBuilder b)]) = _$UNISWAPV3ETHEREUMRewardTokenDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UNISWAPV3ETHEREUMRewardTokenDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UNISWAPV3ETHEREUMRewardTokenDTO> get serializer => _$UNISWAPV3ETHEREUMRewardTokenDTOSerializer();
}

class _$UNISWAPV3ETHEREUMRewardTokenDTOSerializer implements PrimitiveSerializer<UNISWAPV3ETHEREUMRewardTokenDTO> {
  @override
  final Iterable<Type> types = const [UNISWAPV3ETHEREUMRewardTokenDTO, _$UNISWAPV3ETHEREUMRewardTokenDTO];

  @override
  final String wireName = r'UNISWAPV3ETHEREUMRewardTokenDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UNISWAPV3ETHEREUMRewardTokenDTO object, {
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
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UNISWAPV3ETHEREUMRewardTokenDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UNISWAPV3ETHEREUMRewardTokenDTOBuilder result,
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
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UNISWAPV3ETHEREUMRewardTokenDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UNISWAPV3ETHEREUMRewardTokenDTOBuilder();
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

