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
 * Token data aggregated across all pairs that include token.
 *
 * @param entryTime 
 * @param recvTime 
 * @param blockNumber Number of block in which entity was recorded.
 * @param id Identifier, day start timestamp in unix / 86400.
 * @param date Unix timestamp for start of day.
 * @param token Reference to token entity.
 * @param volume Amount of token swapped across all pairs throughout day.
 * @param volumeEth Amount of token swapped across all pairs throughout day stored as a derived amount of ETH.
 * @param volumeUsd Amount of token swapped across all pairs throughout day stored as a derived amount of USD.
 * @param txCount Amount of transactions with this token across all pairs.
 * @param liquidity Token amount of token deposited across all pairs.
 * @param liquidityEth Token amount of token deposited across all pairs stored as amount of ETH.
 * @param liquidityUsd Token amount of token deposited across all pairs stored as amount of USD.
 * @param priceUsd Price of token in derived USD.
 * @param vid 
 */


data class SushiswapTokenDayDataDTO (

    @Json(name = "entry_time")
    val entryTime: java.time.OffsetDateTime? = null,

    @Json(name = "recv_time")
    val recvTime: java.time.OffsetDateTime? = null,

    /* Number of block in which entity was recorded. */
    @Json(name = "block_number")
    val blockNumber: kotlin.Long? = null,

    /* Identifier, day start timestamp in unix / 86400. */
    @Json(name = "id")
    val id: kotlin.String? = null,

    /* Unix timestamp for start of day. */
    @Json(name = "date")
    val date: kotlin.Int? = null,

    /* Reference to token entity. */
    @Json(name = "token")
    val token: kotlin.String? = null,

    /* Amount of token swapped across all pairs throughout day. */
    @Json(name = "volume")
    val volume: kotlin.String? = null,

    /* Amount of token swapped across all pairs throughout day stored as a derived amount of ETH. */
    @Json(name = "volume_eth")
    val volumeEth: kotlin.String? = null,

    /* Amount of token swapped across all pairs throughout day stored as a derived amount of USD. */
    @Json(name = "volume_usd")
    val volumeUsd: kotlin.String? = null,

    /* Amount of transactions with this token across all pairs. */
    @Json(name = "tx_count")
    val txCount: kotlin.String? = null,

    /* Token amount of token deposited across all pairs. */
    @Json(name = "liquidity")
    val liquidity: kotlin.String? = null,

    /* Token amount of token deposited across all pairs stored as amount of ETH. */
    @Json(name = "liquidity_eth")
    val liquidityEth: kotlin.String? = null,

    /* Token amount of token deposited across all pairs stored as amount of USD. */
    @Json(name = "liquidity_usd")
    val liquidityUsd: kotlin.String? = null,

    /* Price of token in derived USD. */
    @Json(name = "price_usd")
    val priceUsd: kotlin.String? = null,

    /*  */
    @Json(name = "vid")
    val vid: kotlin.Long? = null

)

