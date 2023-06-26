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
import { NumericsBigInteger } from './numericsBigInteger';

/**
* Ticks are the boundaries between discrete areas in price space.
*/
export class UniswapV3TickDTO {
    'entryTime'?: Date;
    'recvTime'?: Date;
    /**
    * Number of block in which entity was recorded.
    */
    'blockNumber'?: number;
    /**
    * 
    */
    'vid'?: number;
    /**
    * Identifier, format: (pool address)#(tick index)
    */
    'id'?: string | null;
    /**
    * Pool address.
    */
    'poolAddress'?: string | null;
    'tickIdx'?: NumericsBigInteger;
    /**
    * Pool address.
    */
    'pool'?: string | null;
    'liquidityGross'?: NumericsBigInteger;
    'liquidityNet'?: NumericsBigInteger;
    /**
    * Calculated price of token0 of tick within this pool - constant.
    */
    'price0'?: string | null;
    /**
    * Calculated price of token1 of tick within this pool - constant.
    */
    'price1'?: string | null;
    /**
    * Lifetime volume of token0 with this tick in range.
    */
    'volumeToken0'?: string | null;
    /**
    * Lifetime volume of token1 with this tick in range.
    */
    'volumeToken1'?: string | null;
    /**
    * Lifetime volume in derived USD with this tick in range.
    */
    'volumeUsd'?: string | null;
    /**
    * Lifetime volume in untracked USD with this tick in range.
    */
    'untrackedVolumeUsd'?: string | null;
    /**
    * Fees in USD.
    */
    'feesUsd'?: string | null;
    /**
    * All time collected fees in token0.
    */
    'collectedFeesToken0'?: string | null;
    /**
    * All time collected fees in token1.
    */
    'collectedFeesToken1'?: string | null;
    /**
    * All time collected fees in USD.
    */
    'collectedFeesUsd'?: string | null;
    /**
    * Created time.
    */
    'createdAtTimestamp'?: Date;
    'liquidityProviderCount'?: NumericsBigInteger;
    'feeGrowthOutside0x128'?: NumericsBigInteger;
    'feeGrowthOutside1x128'?: NumericsBigInteger;

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
            "name": "id",
            "baseName": "id",
            "type": "string"
        },
        {
            "name": "poolAddress",
            "baseName": "pool_address",
            "type": "string"
        },
        {
            "name": "tickIdx",
            "baseName": "tick_idx",
            "type": "NumericsBigInteger"
        },
        {
            "name": "pool",
            "baseName": "pool",
            "type": "string"
        },
        {
            "name": "liquidityGross",
            "baseName": "liquidity_gross",
            "type": "NumericsBigInteger"
        },
        {
            "name": "liquidityNet",
            "baseName": "liquidity_net",
            "type": "NumericsBigInteger"
        },
        {
            "name": "price0",
            "baseName": "price_0",
            "type": "string"
        },
        {
            "name": "price1",
            "baseName": "price_1",
            "type": "string"
        },
        {
            "name": "volumeToken0",
            "baseName": "volume_token_0",
            "type": "string"
        },
        {
            "name": "volumeToken1",
            "baseName": "volume_token_1",
            "type": "string"
        },
        {
            "name": "volumeUsd",
            "baseName": "volume_usd",
            "type": "string"
        },
        {
            "name": "untrackedVolumeUsd",
            "baseName": "untracked_volume_usd",
            "type": "string"
        },
        {
            "name": "feesUsd",
            "baseName": "fees_usd",
            "type": "string"
        },
        {
            "name": "collectedFeesToken0",
            "baseName": "collected_fees_token_0",
            "type": "string"
        },
        {
            "name": "collectedFeesToken1",
            "baseName": "collected_fees_token_1",
            "type": "string"
        },
        {
            "name": "collectedFeesUsd",
            "baseName": "collected_fees_usd",
            "type": "string"
        },
        {
            "name": "createdAtTimestamp",
            "baseName": "created_at_timestamp",
            "type": "Date"
        },
        {
            "name": "liquidityProviderCount",
            "baseName": "liquidity_provider_count",
            "type": "NumericsBigInteger"
        },
        {
            "name": "feeGrowthOutside0x128",
            "baseName": "fee_growth_outside_0x128",
            "type": "NumericsBigInteger"
        },
        {
            "name": "feeGrowthOutside1x128",
            "baseName": "fee_growth_outside_1x128",
            "type": "NumericsBigInteger"
        }    ];

    static getAttributeTypeMap() {
        return UniswapV3TickDTO.attributeTypeMap;
    }
}

