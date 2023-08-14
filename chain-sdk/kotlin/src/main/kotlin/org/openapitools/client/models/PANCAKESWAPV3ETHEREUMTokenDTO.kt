/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.models


import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * Stores aggregated information for a specific token across all pairs that token is included in.
 *
 * @param entryTime 
 * @param recvTime 
 * @param blockNumber Number of block in which entity was recorded.
 * @param vid .
 * @param blockRange 
 * @param id Smart contract address of the token.
 * @param name Name of the token, mirrored from the smart contract.
 * @param symbol Symbol of the token, mirrored from the smart contract.
 * @param decimals The number of decimal places this token uses, default to 18.
 * @param lastPriceUsd Optional field to track the price of a token, mostly for caching purposes.
 * @param lastPriceBlockNumber Optional field to track the block number of the last token price.
 * @param lastPricePool Last pool that gave this token a price.
 * @param totalSupply Amount of tokens in the protocol.
 * @param totalValueLockedUsd Total value locked in the protocol.
 * @param largePriceChangeBuffer The buffer for detecting large price changes.
 * @param largeTvlImpactBuffer The buffer for detecting large TVL (Total Value Locked) impact.
 * @param tokenSymbol 
 */


data class PANCAKESWAPV3ETHEREUMTokenDTO (

    @Json(name = "entry_time")
    val entryTime: java.time.OffsetDateTime? = null,

    @Json(name = "recv_time")
    val recvTime: java.time.OffsetDateTime? = null,

    /* Number of block in which entity was recorded. */
    @Json(name = "block_number")
    val blockNumber: kotlin.Long? = null,

    /* . */
    @Json(name = "vid")
    val vid: kotlin.Long? = null,

    /*  */
    @Json(name = "block_range")
    val blockRange: kotlin.String? = null,

    /* Smart contract address of the token. */
    @Json(name = "id")
    val id: kotlin.String? = null,

    /* Name of the token, mirrored from the smart contract. */
    @Json(name = "name")
    val name: kotlin.String? = null,

    /* Symbol of the token, mirrored from the smart contract. */
    @Json(name = "symbol")
    val symbol: kotlin.String? = null,

    /* The number of decimal places this token uses, default to 18. */
    @Json(name = "decimals")
    val decimals: kotlin.Int? = null,

    /* Optional field to track the price of a token, mostly for caching purposes. */
    @Json(name = "last_price_usd")
    val lastPriceUsd: kotlin.String? = null,

    /* Optional field to track the block number of the last token price. */
    @Json(name = "last_price_block_number")
    val lastPriceBlockNumber: kotlin.String? = null,

    /* Last pool that gave this token a price. */
    @Json(name = "last_price_pool")
    val lastPricePool: kotlin.String? = null,

    /* Amount of tokens in the protocol. */
    @Json(name = "total_supply")
    val totalSupply: kotlin.String? = null,

    /* Total value locked in the protocol. */
    @Json(name = "total_value_locked_usd")
    val totalValueLockedUsd: kotlin.String? = null,

    /* The buffer for detecting large price changes. */
    @Json(name = "large_price_change_buffer")
    val largePriceChangeBuffer: kotlin.Int? = null,

    /* The buffer for detecting large TVL (Total Value Locked) impact. */
    @Json(name = "large_tvl_impact_buffer")
    val largeTvlImpactBuffer: kotlin.Int? = null,

    @Json(name = "token_symbol")
    val tokenSymbol: kotlin.String? = null

)

