// tslint:disable
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

import type {
    TransactionsETradeAggressiveSide,
} from './';

/**
 * Trade (swap) event which occurred in a pool.
 * @export
 * @interface UNISWAPV2ETHEREUMSwapDTO
 */
export interface UNISWAPV2ETHEREUMSwapDTO {
    /**
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    entry_time?: string;
    /**
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    recv_time?: string;
    /**
     * Block number of this event
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    block_number?: string | null;
    /**
     * 
     * @type {number}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    block_?: number;
    /**
     * swap-{ Transaction hash }-{ Log index }
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    id?: string | null;
    /**
     * Transaction hash of the transaction that emitted this event
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    hash?: string | null;
    /**
     * Event log index. For transactions that don\'t emit event, create arbitrary index starting from 0
     * @type {number}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    log_index?: number;
    /**
     * The protocol this transaction belongs to
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    protocol?: string | null;
    /**
     * Address that received the tokens
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    to?: string | null;
    /**
     * Address that sent the tokens
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    from?: string | null;
    /**
     * Timestamp of this event
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    timestamp?: string | null;
    /**
     * Token deposited into pool
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    token_in?: string | null;
    /**
     * Amount of token deposited into pool in native units
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    amount_in?: string | null;
    /**
     * Amount of token deposited into pool in USD
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    amount_in_usd?: string | null;
    /**
     * Token withdrawn from pool
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    token_out?: string | null;
    /**
     * Amount of token withdrawn from pool in native units
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    amount_out?: string | null;
    /**
     * Amount of token withdrawn from pool in USD
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    amount_out_usd?: string | null;
    /**
     * Amount of input tokens in the liquidity pool
     * @type {Array<string>}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    reserve_amounts?: Array<string> | null;
    /**
     * The pool involving this transaction
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    pool?: string | null;
    /**
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    readonly block_range?: string | null;
    /**
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    readonly pool_id?: string | null;
    /**
     * @type {string}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    readonly transaction_id?: string | null;
    /**
     * @type {number}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    readonly evaluated_price?: number;
    /**
     * @type {number}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    readonly evaluated_amount?: number;
    /**
     * @type {TransactionsETradeAggressiveSide}
     * @memberof UNISWAPV2ETHEREUMSwapDTO
     */
    evaluated_aggressor?: TransactionsETradeAggressiveSide;
}


