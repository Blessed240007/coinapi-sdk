package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class SUSHISWAPV3ETHEREUMLiquidityPoolDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* . */
    Long vid
    /* Block range of the liquidity pool. */
    String blockRange
    /* Smart contract address of the pool. */
    String id
    /* Protocol this pool belongs to. */
    String protocol
    /* Name of liquidity pool (e.g. Curve.fi DAI/USDC/USDT). */
    String name
    /* Symbol of liquidity pool (e.g. 3CRV). */
    String symbol
    /* Token that is to represent ownership of liquidity. */
    String liquidityToken
    /* Tokens that need to be deposited to take a position in protocol. e.g. WETH and USDC to deposit into the WETH-USDC pool. Array to account for multi-asset pools like Curve and Balancer. */
    List<String> inputTokens
    /* Additional tokens that are given as reward for position in a protocol, usually in liquidity mining programs. e.g. SUSHI in the Onsen program, MATIC for Aave Polygon, usually in liquidity mining programs. e.g. SUSHI in the Onsen program, MATIC for Aave Polygon. */
    List<String> rewardTokens
    /* Fees per trade incurred to the user. Should include all fees that apply to a pool (e.g. Curve has a trading fee AND an admin fee, which is a portion of the trading fee. Uniswap only has a trading fee and no protocol fee.). */
    List<String> fees
    /* Specifies whether this pool is single-sided (e.g. Bancor, Platypus's Alternative Pool). The specifics of the implementation depends on the protocol. */
    Boolean isSingleSided
    /* Timestamp when the liquidity pool was created. */
    String createdTimestamp
    /* Block number when the liquidity pool was created. */
    String createdBlockNumber
    /* Current tick representing the price of token0/token1. */
    String tick
    /* Current TVL (Total Value Locked) of this pool in USD. */
    String totalValueLockedUsd
    /* Sum of all active and non-active liquidity for this pool. */
    String totalLiquidity
    /* Sum of all active and non-active liquidity in USD for this pool. */
    String totalLiquidityUsd
    /* All liquidity `k` that is active. Will be equal to totalLiquidity except for in concentrated liquidity - where activeLiquidity is all liquidity positions that contain the pools current tick. */
    String activeLiquidity
    /* All liquidity in USD that is active. Will be equal to totalLiquidity except for in concentrated liquidity - where activeLiquidity is all liquidity positions that contain the pools current tick. */
    String activeLiquidityUsd
    /* All protocol-side value locked in token amounts that remains uncollected and unused in the pool. */
    List<String> uncollectedProtocolSideTokenAmounts
    /* All protocol-side value locking in USD that remains uncollected and unused in the pool. */
    List<String> uncollectedProtocolSideValuesUsd
    /* All supply-side value locked in token amounts that remains uncollected and unused in the pool. */
    List<String> uncollectedSupplySideTokenAmounts
    /* All supply-side value locked in USD that remains uncollected and unused in the pool. */
    List<String> uncollectedSupplySideValuesUsd
    /* All revenue generated by the liquidity pool, accrued to the supply side. */
    String cumulativeSupplySideRevenueUsd
    /* All revenue generated by the liquidity pool, accrued to the protocol. */
    String cumulativeProtocolSideRevenueUsd
    /*  All revenue generated by the liquidity pool. */
    String cumulativeTotalRevenueUsd
    /* All trade volume occurred for a specific input token, in native amount. The ordering should be the same as the pool's `inputTokens` field. */
    List<String> cumulativeVolumeByTokenAmount
    /* All trade volume occurred for a specific input token, in USD. The ordering should be the same as the pool's `inputTokens` field. */
    List<String> cumulativeVolumeByTokenUsd
    /* All trade volume occurred for a specific input token, in USD. The ordering should be the same as the pool's `inputTokens` field. */
    String cumulativeVolumeUsd
    /* Amount of input tokens in the pool. The ordering should be the same as the pool's `inputTokens` field. */
    List<String> inputTokenBalances
    /* Amount of input tokens in USD in the pool. The ordering should be the same as the pool's `inputTokens` field. */
    List<String> inputTokenBalancesUsd
    /* Weights of input tokens in the liquidity pool in percentage values. For example, 50/50 for Uniswap pools, 48.2/51.8 for a Curve pool, 10/10/80 for a Balancer pool. */
    List<String> inputTokenWeights
    /* Total supply of output tokens that are staked (usually in the MasterChef contract). Used to calculate reward APY. */
    String stakedOutputTokenAmount
    /* Per-block reward token emission as of the current block normalized to a day, in token's native amount. This should be ideally calculated as the theoretical rate instead of the realized amount. */
    List<String> rewardTokenEmissionsAmount
    /* Per-block reward token emission as of the current block normalized to a day, in USD value. This should be ideally calculated as the theoretical rate instead of the realized amount. */
    List<String> rewardTokenEmissionsUsd
    /* Total number of deposits (add liquidity). */
    Integer cumulativeDepositCount
    /* Total number of withdrawals (remove liquidity). */
    Integer cumulativeWithdrawCount
    /* Total number of trades (swaps). */
    Integer cumulativeSwapCount
    /* Number of positions in this market. */
    Integer positionCount
    /* Number of open positions in this market. */
    Integer openPositionCount
    /* Number of closed positions in this market. */
    Integer closedPositionCount
    /* Day ID of the most recent daily snapshot. */
    Integer lastSnapshotDayId
    /* Hour ID of the most recent hourly snapshot. */
    Integer lastSnapshotHourId
    /* Timestamp of the last time this entity was updated. */
    String lastUpdateTimestamp
    /* Block number of the last time this entity was updated. */
    String lastUpdateBlockNumber
    /*  */
    Double evaluatedAsk
}
