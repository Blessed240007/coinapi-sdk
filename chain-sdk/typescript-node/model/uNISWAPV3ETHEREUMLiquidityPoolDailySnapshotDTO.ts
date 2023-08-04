/**
 * On Chain Dapps - REST API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RequestFile } from './models';

/**
* Represents a liquidity pool daily snapshot for Uniswap V3.
*/
export class UNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTO {
    'entryTime'?: Date;
    'recvTime'?: Date;
    /**
    * Number of block in which entity was recorded.
    */
    'blockNumber'?: number;
    /**
    * .
    */
    'vid'?: number;
    /**
    * The Ethereum block number associated with the liquidity pool daily snapshot.
    */
    'block'?: number;
    /**
    * Identifier, format: (smart contract address of the pool)-(# of days since Unix epoch time).
    */
    'id'?: string | null;
    /**
    * Number of days since Unix epoch time.
    */
    'day'?: number;
    /**
    * Protocol associated with the liquidity pool.
    */
    'protocol'?: string | null;
    /**
    * Pool this snapshot belongs to.
    */
    'pool'?: string | null;
    /**
    * Current tick representing the price of token0/token1.
    */
    'tick'?: string | null;
    /**
    * Current TVL (Total Value Locked) of this pool.
    */
    'totalValueLockedUsd'?: string | null;
    /**
    * The sum of all active and non-active liquidity for this pool.
    */
    'totalLiquidity'?: string | null;
    /**
    * Sum of all active and non-active liquidity in USD for this pool.
    */
    'totalLiquidityUsd'?: string | null;
    /**
    * All liquidity `k` that is active. Will be equal to totalLiquidity except for in concentrated liquidity - where activeLiquidity is all liquidity positions that contain the pools current tick.
    */
    'activeLiquidity'?: string | null;
    /**
    * All liquidity in USD that is active. Will be equal to totalLiquidity except for in concentrated liquidity - where activeLiquidity is all liquidity positions that contain the pools current tick.
    */
    'activeLiquidityUsd'?: string | null;
    /**
    * All protocol-side value locked in token amounts that remains uncollected and unused in the pool.
    */
    'uncollectedProtocolSideTokenAmounts'?: Array<string> | null;
    /**
    * All protocol-side value locking in USD that remains uncollected and unused in the pool.
    */
    'uncollectedProtocolSideValuesUsd'?: Array<string> | null;
    /**
    * All supply-side value locked in token amounts that remains uncollected and unused in the pool.
    */
    'uncollectedSupplySideTokenAmounts'?: Array<string> | null;
    /**
    * All supply-side value locked in USD that remains uncollected and unused in the pool.
    */
    'uncollectedSupplySideValuesUsd'?: Array<string> | null;
    /**
    * All revenue generated by the liquidity pool, accrued to the supply side.
    */
    'cumulativeSupplySideRevenueUsd'?: string | null;
    /**
    * Daily revenue generated by the liquidity pool, accrued to the supply side.
    */
    'dailySupplySideRevenueUsd'?: string | null;
    /**
    * All revenue generated by the liquidity pool, accrued to the protocol.
    */
    'cumulativeProtocolSideRevenueUsd'?: string | null;
    /**
    * Daily revenue generated by the liquidity pool, accrued to the protocol.
    */
    'dailyProtocolSideRevenueUsd'?: string | null;
    /**
    * All revenue generated by the liquidity pool.
    */
    'cumulativeTotalRevenueUsd'?: string | null;
    /**
    * Daily revenue generated by the liquidity pool.
    */
    'dailyTotalRevenueUsd'?: string | null;
    /**
    * All historical trade volume occurred in this pool, in USD.
    */
    'cumulativeVolumeUsd'?: string | null;
    /**
    * All trade volume occurred in a given day, in USD.
    */
    'dailyVolumeUsd'?: string | null;
    /**
    * All trade volume , in native amount. The ordering should be the same as the pool\'s `inputTokens` field.
    */
    'cumulativeVolumeByTokenAmount'?: Array<string> | null;
    /**
    * All trade volume occurred in a given day for a specific input token, in native amount. The ordering should be the same as the pool\'s `inputTokens` field.
    */
    'dailyVolumeByTokenAmount'?: Array<string> | null;
    /**
    * All trade volume, in USD. The ordering should be the same as the pool\'s `inputTokens` field.
    */
    'cumulativeVolumeByTokenUsd'?: Array<string> | null;
    /**
    *  All trade volume occurred in a given day for a specific input token, in USD. The ordering should be the same as the pool\'s `inputTokens` field.
    */
    'dailyVolumeByTokenUsd'?: Array<string> | null;
    /**
    * Amount of input tokens in the pool. The ordering should be the same as the pool\'s `inputTokens` field.
    */
    'inputTokenBalances'?: Array<string> | null;
    /**
    * Amount of input tokens in USD in the pool. The ordering should be the same as the pool\'s `inputTokens` field.
    */
    'inputTokenBalancesUsd'?: Array<string> | null;
    /**
    * Weights of input tokens in the liquidity pool in percentage values. For example, 50/50 for Uniswap pools, 48.2/51.8 for a Curve pool, 10/10/80 for a Balancer pool.
    */
    'inputTokenWeights'?: Array<string> | null;
    /**
    * Total supply of output tokens that are staked (usually in the MasterChef contract). Used to calculate reward APY.
    */
    'stakedOutputTokenAmount'?: string | null;
    /**
    * Per-block reward token emission as of the current block normalized to a day, in token\'s native amount. This should be ideally calculated as the theoretical rate instead of the realized amount.
    */
    'rewardTokenEmissionsAmount'?: Array<string> | null;
    /**
    * Per-block reward token emission as of the current block normalized to a day, in USD value. This should be ideally calculated as the theoretical rate instead of the realized amount.
    */
    'rewardTokenEmissionsUsd'?: Array<string> | null;
    /**
    * Total number of deposits (add liquidity).
    */
    'cumulativeDepositCount'?: number;
    /**
    * Total number of deposits (add liquidity) in a day.
    */
    'dailyDepositCount'?: number;
    /**
    * Total number of withdrawals (remove liquidity).
    */
    'cumulativeWithdrawCount'?: number;
    /**
    * Total number of withdrawals (remove liquidity) in a day.
    */
    'dailyWithdrawCount'?: number;
    /**
    * Total number of trades (swaps).
    */
    'cumulativeSwapCount'?: number;
    /**
    * Total number of trades (swaps) in a day.
    */
    'dailySwapCount'?: number;
    /**
    * Number of positions in this market.
    */
    'positionCount'?: number;
    /**
    * Number of open positions in this market.
    */
    'openPositionCount'?: number;
    /**
    * Number of closed positions in this market.
    */
    'closedPositionCount'?: number;
    /**
    * Timestamp of when this snapshot was taken/last modified (May be taken after interval has passed).
    */
    'timestamp'?: string | null;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "entryTime",
            "baseName": "entry_time",
            "type": "Date"
        },
        {
            "name": "recvTime",
            "baseName": "recv_time",
            "type": "Date"
        },
        {
            "name": "blockNumber",
            "baseName": "block_number",
            "type": "number"
        },
        {
            "name": "vid",
            "baseName": "vid",
            "type": "number"
        },
        {
            "name": "block",
            "baseName": "block_",
            "type": "number"
        },
        {
            "name": "id",
            "baseName": "id",
            "type": "string"
        },
        {
            "name": "day",
            "baseName": "day",
            "type": "number"
        },
        {
            "name": "protocol",
            "baseName": "protocol",
            "type": "string"
        },
        {
            "name": "pool",
            "baseName": "pool",
            "type": "string"
        },
        {
            "name": "tick",
            "baseName": "tick",
            "type": "string"
        },
        {
            "name": "totalValueLockedUsd",
            "baseName": "total_value_locked_usd",
            "type": "string"
        },
        {
            "name": "totalLiquidity",
            "baseName": "total_liquidity",
            "type": "string"
        },
        {
            "name": "totalLiquidityUsd",
            "baseName": "total_liquidity_usd",
            "type": "string"
        },
        {
            "name": "activeLiquidity",
            "baseName": "active_liquidity",
            "type": "string"
        },
        {
            "name": "activeLiquidityUsd",
            "baseName": "active_liquidity_usd",
            "type": "string"
        },
        {
            "name": "uncollectedProtocolSideTokenAmounts",
            "baseName": "uncollected_protocol_side_token_amounts",
            "type": "Array<string>"
        },
        {
            "name": "uncollectedProtocolSideValuesUsd",
            "baseName": "uncollected_protocol_side_values_usd",
            "type": "Array<string>"
        },
        {
            "name": "uncollectedSupplySideTokenAmounts",
            "baseName": "uncollected_supply_side_token_amounts",
            "type": "Array<string>"
        },
        {
            "name": "uncollectedSupplySideValuesUsd",
            "baseName": "uncollected_supply_side_values_usd",
            "type": "Array<string>"
        },
        {
            "name": "cumulativeSupplySideRevenueUsd",
            "baseName": "cumulative_supply_side_revenue_usd",
            "type": "string"
        },
        {
            "name": "dailySupplySideRevenueUsd",
            "baseName": "daily_supply_side_revenue_usd",
            "type": "string"
        },
        {
            "name": "cumulativeProtocolSideRevenueUsd",
            "baseName": "cumulative_protocol_side_revenue_usd",
            "type": "string"
        },
        {
            "name": "dailyProtocolSideRevenueUsd",
            "baseName": "daily_protocol_side_revenue_usd",
            "type": "string"
        },
        {
            "name": "cumulativeTotalRevenueUsd",
            "baseName": "cumulative_total_revenue_usd",
            "type": "string"
        },
        {
            "name": "dailyTotalRevenueUsd",
            "baseName": "daily_total_revenue_usd",
            "type": "string"
        },
        {
            "name": "cumulativeVolumeUsd",
            "baseName": "cumulative_volume_usd",
            "type": "string"
        },
        {
            "name": "dailyVolumeUsd",
            "baseName": "daily_volume_usd",
            "type": "string"
        },
        {
            "name": "cumulativeVolumeByTokenAmount",
            "baseName": "cumulative_volume_by_token_amount",
            "type": "Array<string>"
        },
        {
            "name": "dailyVolumeByTokenAmount",
            "baseName": "daily_volume_by_token_amount",
            "type": "Array<string>"
        },
        {
            "name": "cumulativeVolumeByTokenUsd",
            "baseName": "cumulative_volume_by_token_usd",
            "type": "Array<string>"
        },
        {
            "name": "dailyVolumeByTokenUsd",
            "baseName": "daily_volume_by_token_usd",
            "type": "Array<string>"
        },
        {
            "name": "inputTokenBalances",
            "baseName": "input_token_balances",
            "type": "Array<string>"
        },
        {
            "name": "inputTokenBalancesUsd",
            "baseName": "input_token_balances_usd",
            "type": "Array<string>"
        },
        {
            "name": "inputTokenWeights",
            "baseName": "input_token_weights",
            "type": "Array<string>"
        },
        {
            "name": "stakedOutputTokenAmount",
            "baseName": "staked_output_token_amount",
            "type": "string"
        },
        {
            "name": "rewardTokenEmissionsAmount",
            "baseName": "reward_token_emissions_amount",
            "type": "Array<string>"
        },
        {
            "name": "rewardTokenEmissionsUsd",
            "baseName": "reward_token_emissions_usd",
            "type": "Array<string>"
        },
        {
            "name": "cumulativeDepositCount",
            "baseName": "cumulative_deposit_count",
            "type": "number"
        },
        {
            "name": "dailyDepositCount",
            "baseName": "daily_deposit_count",
            "type": "number"
        },
        {
            "name": "cumulativeWithdrawCount",
            "baseName": "cumulative_withdraw_count",
            "type": "number"
        },
        {
            "name": "dailyWithdrawCount",
            "baseName": "daily_withdraw_count",
            "type": "number"
        },
        {
            "name": "cumulativeSwapCount",
            "baseName": "cumulative_swap_count",
            "type": "number"
        },
        {
            "name": "dailySwapCount",
            "baseName": "daily_swap_count",
            "type": "number"
        },
        {
            "name": "positionCount",
            "baseName": "position_count",
            "type": "number"
        },
        {
            "name": "openPositionCount",
            "baseName": "open_position_count",
            "type": "number"
        },
        {
            "name": "closedPositionCount",
            "baseName": "closed_position_count",
            "type": "number"
        },
        {
            "name": "timestamp",
            "baseName": "timestamp",
            "type": "string"
        }    ];

    static getAttributeTypeMap() {
        return UNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTO.attributeTypeMap;
    }
}

