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

import * as models from './models';

/**
 * Trade (swap) event which occurred in a pool.
 */
export interface PANCAKESWAPV3ETHEREUMSwapDTO {
    entry_time?: string;

    recv_time?: string;

    /**
     * Number of block in which entity was recorded.
     */
    block_number?: number;

    /**
     * Block number in which the swap operation was recorded.
     */
    block_?: number;

    /**
     * Unique string identifier of the swap operation, format: (transaction hash)-(log index).
     */
    id?: string;

    /**
     * Transaction hash of the transaction that emitted this event.
     */
    hash?: string;

    /**
     * Nonce of the transaction that emitted this event.
     */
    nonce?: string;

    /**
     * Event log index. For transactions that don\'t emit event, create arbitrary index starting from 0.
     */
    log_index?: number;

    /**
     * Gas limit of the transaction that emitted this event.
     */
    gas_limit?: string;

    /**
     * Gas used in this transaction.
     */
    gas_used?: string;

    /**
     * Gas price of the transaction that emitted this event.
     */
    gas_price?: string;

    /**
     * The protocol this transaction belongs to.
     */
    protocol?: string;

    /**
     * Account that emitted this event.
     */
    account?: string;

    /**
     * The pool involving this event.
     */
    pool?: string;

    /**
     * Timestamp of this event.
     */
    timestamp?: string;

    /**
     * Tick of the swap operation.
     */
    tick?: string;

    /**
     * Token deposited into pool.
     */
    token_in?: string;

    /**
     * Amount of token deposited into pool in native units.
     */
    amount_in?: string;

    /**
     * Amount of token deposited into pool in USD.
     */
    amount_in_usd?: string;

    /**
     * Token withdrawn from pool.
     */
    token_out?: string;

    /**
     * Amount of token withdrawn from pool in native units.
     */
    amount_out?: string;

    /**
     * Amount of token withdrawn from pool in USD.
     */
    amount_out_usd?: string;

    /**
     * Amount of input tokens in the liquidity pool.
     */
    reserve_amounts?: Array<string>;

    pool_id?: string;

    transaction_id?: string;

    evaluated_price?: number;

    evaluated_amount?: number;

    evaluated_aggressor?: models.TransactionsETradeAggressiveSide;

}
export namespace PANCAKESWAPV3ETHEREUMSwapDTO {
}
