import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for UNISWAPV2ETHEREUMLiquidityPoolDTO
void main() {
  final instance = UNISWAPV2ETHEREUMLiquidityPoolDTOBuilder();
  // TODO add properties to the builder and call build()

  group(UNISWAPV2ETHEREUMLiquidityPoolDTO, () {
    // DateTime entryTime
    test('to test the property `entryTime`', () async {
      // TODO
    });

    // DateTime recvTime
    test('to test the property `recvTime`', () async {
      // TODO
    });

    // Number of block in which entity was recorded.
    // int blockNumber
    test('to test the property `blockNumber`', () async {
      // TODO
    });

    // .
    // int vid
    test('to test the property `vid`', () async {
      // TODO
    });

    // Smart contract address of the pool
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The protocol this pool belongs to
    // String protocol
    test('to test the property `protocol`', () async {
      // TODO
    });

    // Name of liquidity pool (e.g. Curve.fi DAI/USDC/USDT)
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Symbol of liquidity pool (e.g. 3CRV)
    // String symbol
    test('to test the property `symbol`', () async {
      // TODO
    });

    // Tokens that need to be deposited to take a position in the protocol
    // BuiltList<String> inputTokens
    test('to test the property `inputTokens`', () async {
      // TODO
    });

    // Token that is minted to track ownership of position in protocol
    // String outputToken
    test('to test the property `outputToken`', () async {
      // TODO
    });

    // Aditional tokens that are given as reward for position in a protocol
    // BuiltList<String> rewardTokens
    test('to test the property `rewardTokens`', () async {
      // TODO
    });

    // Fees per trade incurred to the user
    // BuiltList<String> fees
    test('to test the property `fees`', () async {
      // TODO
    });

    // Whether this pool is single-sided
    // bool isSingleSided
    test('to test the property `isSingleSided`', () async {
      // TODO
    });

    // Creation timestamp
    // String createdTimestamp
    test('to test the property `createdTimestamp`', () async {
      // TODO
    });

    // Creation block number
    // String createdBlockNumber
    test('to test the property `createdBlockNumber`', () async {
      // TODO
    });

    // Current TVL (Total Value Locked) of this pool in USD
    // String totalValueLockedUsd
    test('to test the property `totalValueLockedUsd`', () async {
      // TODO
    });

    // All revenue generated by the liquidity pool, accrued to the supply side
    // String cumulativeSupplySideRevenueUsd
    test('to test the property `cumulativeSupplySideRevenueUsd`', () async {
      // TODO
    });

    // All revenue generated by the liquidity pool, accrued to the protocol
    // String cumulativeProtocolSideRevenueUsd
    test('to test the property `cumulativeProtocolSideRevenueUsd`', () async {
      // TODO
    });

    // All revenue generated by the liquidity pool
    // String cumulativeTotalRevenueUsd
    test('to test the property `cumulativeTotalRevenueUsd`', () async {
      // TODO
    });

    // All historical trade volume occurred in this pool, in USD
    // String cumulativeVolumeUsd
    test('to test the property `cumulativeVolumeUsd`', () async {
      // TODO
    });

    // Amount of input tokens in the pool
    // BuiltList<String> inputTokenBalances
    test('to test the property `inputTokenBalances`', () async {
      // TODO
    });

    // Weights of input tokens in the liquidity pool in percentage values
    // BuiltList<String> inputTokenWeights
    test('to test the property `inputTokenWeights`', () async {
      // TODO
    });

    // Total supply of output token
    // String outputTokenSupply
    test('to test the property `outputTokenSupply`', () async {
      // TODO
    });

    // Price per share of output token in USD
    // String outputTokenPriceUsd
    test('to test the property `outputTokenPriceUsd`', () async {
      // TODO
    });

    // Total supply of output tokens that are staked
    // String stakedOutputTokenAmount
    test('to test the property `stakedOutputTokenAmount`', () async {
      // TODO
    });

    // Per-block reward token emission as of the current block normalized to a day, in token's native amount
    // BuiltList<String> rewardTokenEmissionsAmount
    test('to test the property `rewardTokenEmissionsAmount`', () async {
      // TODO
    });

    // Per-block reward token emission as of the current block normalized to a day, in USD value
    // BuiltList<String> rewardTokenEmissionsUsd
    test('to test the property `rewardTokenEmissionsUsd`', () async {
      // TODO
    });

    // Evaluated ask value of the liquidity pool.
    // double evaluatedAsk
    test('to test the property `evaluatedAsk`', () async {
      // TODO
    });

  });
}
