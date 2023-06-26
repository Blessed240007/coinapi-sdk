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
 * 
 *
 * @param entryTime 
 * @param recvTime 
 * @param blockNumber Number of block in which entity was recorded.
 * @param vid 
 * @param blockRange 
 * @param id 
 * @param name 
 * @param symbol 
 * @param totalSupply 
 * @param royaltyFee 
 * @param cumulativeTradeVolumeEth 
 * @param marketplaceRevenueEth 
 * @param creatorRevenueEth 
 * @param totalRevenueEth 
 * @param tradeCount 
 * @param buyerCount 
 * @param sellerCount 
 */


data class CRYPTOPUNKSCollectionDTO (

    @Json(name = "entry_time")
    val entryTime: java.time.OffsetDateTime? = null,

    @Json(name = "recv_time")
    val recvTime: java.time.OffsetDateTime? = null,

    /* Number of block in which entity was recorded. */
    @Json(name = "block_number")
    val blockNumber: kotlin.Long? = null,

    /*  */
    @Json(name = "vid")
    val vid: kotlin.Long? = null,

    /*  */
    @Json(name = "block_range")
    val blockRange: kotlin.String? = null,

    /*  */
    @Json(name = "id")
    val id: kotlin.String? = null,

    /*  */
    @Json(name = "name")
    val name: kotlin.String? = null,

    /*  */
    @Json(name = "symbol")
    val symbol: kotlin.String? = null,

    /*  */
    @Json(name = "total_supply")
    val totalSupply: kotlin.String? = null,

    /*  */
    @Json(name = "royalty_fee")
    val royaltyFee: kotlin.String? = null,

    /*  */
    @Json(name = "cumulative_trade_volume_eth")
    val cumulativeTradeVolumeEth: kotlin.String? = null,

    /*  */
    @Json(name = "marketplace_revenue_eth")
    val marketplaceRevenueEth: kotlin.String? = null,

    /*  */
    @Json(name = "creator_revenue_eth")
    val creatorRevenueEth: kotlin.String? = null,

    /*  */
    @Json(name = "total_revenue_eth")
    val totalRevenueEth: kotlin.String? = null,

    /*  */
    @Json(name = "trade_count")
    val tradeCount: kotlin.Int? = null,

    /*  */
    @Json(name = "buyer_count")
    val buyerCount: kotlin.Int? = null,

    /*  */
    @Json(name = "seller_count")
    val sellerCount: kotlin.Int? = null

)

