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
 * Token price in conjuction with batch id.
 *
 * @param entryTime 
 * @param recvTime 
 * @param blockNumber Number of block in which entity was recorded.
 * @param id Identifier, format: (token id)-(batch id).
 * @param token Token identifier.
 * @param batchId Batch identifier.
 * @param priceInOwlNumerator Price enumerator in OWL (derivative of the GNO token).
 * @param priceInOwlDenominator Price denominator in OWL (derivative of the GNO token).
 * @param volume Volume.
 * @param createEpoch Create epoch.
 * @param txHash Transaction hash.
 * @param vid 
 */


data class DexPriceDTO (

    @Json(name = "entry_time")
    val entryTime: java.time.OffsetDateTime? = null,

    @Json(name = "recv_time")
    val recvTime: java.time.OffsetDateTime? = null,

    /* Number of block in which entity was recorded. */
    @Json(name = "block_number")
    val blockNumber: kotlin.Long? = null,

    /* Identifier, format: (token id)-(batch id). */
    @Json(name = "id")
    val id: kotlin.String? = null,

    /* Token identifier. */
    @Json(name = "token")
    val token: kotlin.String? = null,

    /* Batch identifier. */
    @Json(name = "batch_id")
    val batchId: kotlin.String? = null,

    /* Price enumerator in OWL (derivative of the GNO token). */
    @Json(name = "price_in_owl_numerator")
    val priceInOwlNumerator: kotlin.String? = null,

    /* Price denominator in OWL (derivative of the GNO token). */
    @Json(name = "price_in_owl_denominator")
    val priceInOwlDenominator: kotlin.String? = null,

    /* Volume. */
    @Json(name = "volume")
    val volume: kotlin.String? = null,

    /* Create epoch. */
    @Json(name = "create_epoch")
    val createEpoch: kotlin.String? = null,

    /* Transaction hash. */
    @Json(name = "tx_hash")
    val txHash: kotlin.String? = null,

    /*  */
    @Json(name = "vid")
    val vid: kotlin.Long? = null

)

