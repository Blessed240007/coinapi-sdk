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
 *
 */

import ApiClient from '../ApiClient';

/**
 * The UNISWAPV3ETHEREUMTokenDTO model module.
 * @module model/UNISWAPV3ETHEREUMTokenDTO
 * @version v1
 */
class UNISWAPV3ETHEREUMTokenDTO {
    /**
     * Constructs a new <code>UNISWAPV3ETHEREUMTokenDTO</code>.
     * Stores aggregated information for a specific token across all pairs that token is included in.
     * @alias module:model/UNISWAPV3ETHEREUMTokenDTO
     */
    constructor() { 
        
        UNISWAPV3ETHEREUMTokenDTO.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>UNISWAPV3ETHEREUMTokenDTO</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/UNISWAPV3ETHEREUMTokenDTO} obj Optional instance to populate.
     * @return {module:model/UNISWAPV3ETHEREUMTokenDTO} The populated <code>UNISWAPV3ETHEREUMTokenDTO</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new UNISWAPV3ETHEREUMTokenDTO();

            if (data.hasOwnProperty('entry_time')) {
                obj['entry_time'] = ApiClient.convertToType(data['entry_time'], 'Date');
            }
            if (data.hasOwnProperty('recv_time')) {
                obj['recv_time'] = ApiClient.convertToType(data['recv_time'], 'Date');
            }
            if (data.hasOwnProperty('block_number')) {
                obj['block_number'] = ApiClient.convertToType(data['block_number'], 'Number');
            }
            if (data.hasOwnProperty('vid')) {
                obj['vid'] = ApiClient.convertToType(data['vid'], 'Number');
            }
            if (data.hasOwnProperty('block_range')) {
                obj['block_range'] = ApiClient.convertToType(data['block_range'], 'String');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('symbol')) {
                obj['symbol'] = ApiClient.convertToType(data['symbol'], 'String');
            }
            if (data.hasOwnProperty('decimals')) {
                obj['decimals'] = ApiClient.convertToType(data['decimals'], 'Number');
            }
            if (data.hasOwnProperty('last_price_usd')) {
                obj['last_price_usd'] = ApiClient.convertToType(data['last_price_usd'], 'String');
            }
            if (data.hasOwnProperty('last_price_block_number')) {
                obj['last_price_block_number'] = ApiClient.convertToType(data['last_price_block_number'], 'String');
            }
            if (data.hasOwnProperty('last_price_pool')) {
                obj['last_price_pool'] = ApiClient.convertToType(data['last_price_pool'], 'String');
            }
            if (data.hasOwnProperty('total_supply')) {
                obj['total_supply'] = ApiClient.convertToType(data['total_supply'], 'String');
            }
            if (data.hasOwnProperty('total_value_locked_usd')) {
                obj['total_value_locked_usd'] = ApiClient.convertToType(data['total_value_locked_usd'], 'String');
            }
            if (data.hasOwnProperty('large_price_change_buffer')) {
                obj['large_price_change_buffer'] = ApiClient.convertToType(data['large_price_change_buffer'], 'Number');
            }
            if (data.hasOwnProperty('large_tvl_impact_buffer')) {
                obj['large_tvl_impact_buffer'] = ApiClient.convertToType(data['large_tvl_impact_buffer'], 'Number');
            }
            if (data.hasOwnProperty('token_symbol')) {
                obj['token_symbol'] = ApiClient.convertToType(data['token_symbol'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>UNISWAPV3ETHEREUMTokenDTO</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>UNISWAPV3ETHEREUMTokenDTO</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['block_range'] && !(typeof data['block_range'] === 'string' || data['block_range'] instanceof String)) {
            throw new Error("Expected the field `block_range` to be a primitive type in the JSON string but got " + data['block_range']);
        }
        // ensure the json data is a string
        if (data['id'] && !(typeof data['id'] === 'string' || data['id'] instanceof String)) {
            throw new Error("Expected the field `id` to be a primitive type in the JSON string but got " + data['id']);
        }
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }
        // ensure the json data is a string
        if (data['symbol'] && !(typeof data['symbol'] === 'string' || data['symbol'] instanceof String)) {
            throw new Error("Expected the field `symbol` to be a primitive type in the JSON string but got " + data['symbol']);
        }
        // ensure the json data is a string
        if (data['last_price_usd'] && !(typeof data['last_price_usd'] === 'string' || data['last_price_usd'] instanceof String)) {
            throw new Error("Expected the field `last_price_usd` to be a primitive type in the JSON string but got " + data['last_price_usd']);
        }
        // ensure the json data is a string
        if (data['last_price_block_number'] && !(typeof data['last_price_block_number'] === 'string' || data['last_price_block_number'] instanceof String)) {
            throw new Error("Expected the field `last_price_block_number` to be a primitive type in the JSON string but got " + data['last_price_block_number']);
        }
        // ensure the json data is a string
        if (data['last_price_pool'] && !(typeof data['last_price_pool'] === 'string' || data['last_price_pool'] instanceof String)) {
            throw new Error("Expected the field `last_price_pool` to be a primitive type in the JSON string but got " + data['last_price_pool']);
        }
        // ensure the json data is a string
        if (data['total_supply'] && !(typeof data['total_supply'] === 'string' || data['total_supply'] instanceof String)) {
            throw new Error("Expected the field `total_supply` to be a primitive type in the JSON string but got " + data['total_supply']);
        }
        // ensure the json data is a string
        if (data['total_value_locked_usd'] && !(typeof data['total_value_locked_usd'] === 'string' || data['total_value_locked_usd'] instanceof String)) {
            throw new Error("Expected the field `total_value_locked_usd` to be a primitive type in the JSON string but got " + data['total_value_locked_usd']);
        }
        // ensure the json data is a string
        if (data['token_symbol'] && !(typeof data['token_symbol'] === 'string' || data['token_symbol'] instanceof String)) {
            throw new Error("Expected the field `token_symbol` to be a primitive type in the JSON string but got " + data['token_symbol']);
        }

        return true;
    }


}



/**
 * @member {Date} entry_time
 */
UNISWAPV3ETHEREUMTokenDTO.prototype['entry_time'] = undefined;

/**
 * @member {Date} recv_time
 */
UNISWAPV3ETHEREUMTokenDTO.prototype['recv_time'] = undefined;

/**
 * Number of block in which entity was recorded.
 * @member {Number} block_number
 */
UNISWAPV3ETHEREUMTokenDTO.prototype['block_number'] = undefined;

/**
 * .
 * @member {Number} vid
 */
UNISWAPV3ETHEREUMTokenDTO.prototype['vid'] = undefined;

/**
 * 
 * @member {String} block_range
 */
UNISWAPV3ETHEREUMTokenDTO.prototype['block_range'] = undefined;

/**
 * Smart contract address of the token.
 * @member {String} id
 */
UNISWAPV3ETHEREUMTokenDTO.prototype['id'] = undefined;

/**
 * Name of the token, mirrored from the smart contract.
 * @member {String} name
 */
UNISWAPV3ETHEREUMTokenDTO.prototype['name'] = undefined;

/**
 * Symbol of the token, mirrored from the smart contract.
 * @member {String} symbol
 */
UNISWAPV3ETHEREUMTokenDTO.prototype['symbol'] = undefined;

/**
 * The number of decimal places this token uses, default to 18.
 * @member {Number} decimals
 */
UNISWAPV3ETHEREUMTokenDTO.prototype['decimals'] = undefined;

/**
 * Optional field to track the price of a token, mostly for caching purposes.
 * @member {String} last_price_usd
 */
UNISWAPV3ETHEREUMTokenDTO.prototype['last_price_usd'] = undefined;

/**
 * Optional field to track the block number of the last token price.
 * @member {String} last_price_block_number
 */
UNISWAPV3ETHEREUMTokenDTO.prototype['last_price_block_number'] = undefined;

/**
 * Last pool that gave this token a price.
 * @member {String} last_price_pool
 */
UNISWAPV3ETHEREUMTokenDTO.prototype['last_price_pool'] = undefined;

/**
 * Amount of tokens in the protocol.
 * @member {String} total_supply
 */
UNISWAPV3ETHEREUMTokenDTO.prototype['total_supply'] = undefined;

/**
 * Total value locked in the protocol.
 * @member {String} total_value_locked_usd
 */
UNISWAPV3ETHEREUMTokenDTO.prototype['total_value_locked_usd'] = undefined;

/**
 * The buffer for detecting large price changes.
 * @member {Number} large_price_change_buffer
 */
UNISWAPV3ETHEREUMTokenDTO.prototype['large_price_change_buffer'] = undefined;

/**
 * The buffer for detecting large TVL (Total Value Locked) impact.
 * @member {Number} large_tvl_impact_buffer
 */
UNISWAPV3ETHEREUMTokenDTO.prototype['large_tvl_impact_buffer'] = undefined;

/**
 * @member {String} token_symbol
 */
UNISWAPV3ETHEREUMTokenDTO.prototype['token_symbol'] = undefined;






export default UNISWAPV3ETHEREUMTokenDTO;

