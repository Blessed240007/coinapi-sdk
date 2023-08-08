/**
 * On Chain Dapps - REST API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.client.model

import java.time.OffsetDateTime
import org.openapitools.client.core.ApiModel

case class WithdrawDTO (
  entryTime: Option[OffsetDateTime] = None,
  recvTime: Option[OffsetDateTime] = None,
  /* Number of block in which entity was recorded. */
  blockNumber: Option[Long] = None,
  /* (transaction hash)-(log index) */
  id: Option[String] = None,
  /* Transaction hash of the transaction that emitted this event */
  hash: Option[String] = None,
  /* Nonce of the transaction that emitted this event */
  nonce: Option[String] = None,
  /* Event log index. For transactions that don't emit event, create arbitrary index starting from 0 */
  logIndex: Option[Int] = None,
  /* Gas limit of the transaction that emitted this event */
  gasLimit: Option[String] = None,
  /* Gas used in this transaction. (Optional because not every chain will support this) */
  gasUsed: Option[String] = None,
  /* Gas price of the transaction that emitted this event */
  gasPrice: Option[String] = None,
  /* The protocol this transaction belongs to */
  protocol: Option[String] = None,
  /* Account that emitted this event */
  account: Option[String] = None,
  /* The user position changed by this event */
  position: Option[String] = None,
  /* lower tick of position */
  tickLower: Option[String] = None,
  /* upper tick of position */
  tickUpper: Option[String] = None,
  /* The pool involving this event */
  pool: Option[String] = None,
  /* Timestamp of this event */
  timestamp: Option[String] = None,
  /* Amount of liquidity burned */
  liquidity: Option[String] = None,
  /* Input tokens of the pool (not input tokens of the event/transaction). E.g. WETH and USDC from a WETH-USDC pool */
  inputTokens: Option[Seq[String]] = None,
  /* Amount of input tokens in the token's native unit */
  inputTokenAmounts: Option[Seq[String]] = None,
  /* Amount of input tokens in the liquidity pool */
  reserveAmounts: Option[Seq[String]] = None,
  /* USD-normalized value of the transaction of the underlying (e.g. sum of tokens withdrawn from a pool) */
  amountUsd: Option[String] = None
) extends ApiModel

