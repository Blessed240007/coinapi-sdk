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
 * Stores aggregated information for a specific token across all pairs that token is included in.
 */
export interface UNISWAPV2ETHEREUMTokenDTO {
    entry_time?: string;

    recv_time?: string;

    /**
     * Number of block in which entity was recorded.
     */
    block_number?: number;

    /**
     * .
     */
    vid?: number;

    /**
     * Smart contract address of the token
     */
    id?: string;

    /**
     * Name of the token, mirrored from the smart contract
     */
    name?: string;

    /**
     * Symbol of the token, mirrored from the smart contract
     */
    symbol?: string;

    /**
     * The number of decimal places this token uses, default to 18
     */
    decimals?: number;

    /**
     * Optional field to track the price of a token, mostly for caching purposes
     */
    last_price_usd?: string;

    /**
     * Optional field to track the block number of the last token price
     */
    last_price_block_number?: string;

    /**
     * amount of tokens in the protocol
     */
    total_supply?: string;

    /**
     * Total value locked in the protocol
     */
    total_value_locked_usd?: string;

    /**
     * Buffer for large price changes
     */
    large_price_change_buffer?: number;

    /**
     * Buffer for large TVL impacts
     */
    large_tvl_impact_buffer?: number;

    token_symbol?: string;

}
