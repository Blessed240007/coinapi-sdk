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
import TransactionsETradeAggressiveSide from './TransactionsETradeAggressiveSide';

/**
 * The SushiswapSwapDTO model module.
 * @module model/SushiswapSwapDTO
 * @version v1
 */
class SushiswapSwapDTO {
    /**
     * Constructs a new <code>SushiswapSwapDTO</code>.
     * Swap are created for each token swap within a pair.
     * @alias module:model/SushiswapSwapDTO
     */
    constructor() { 
        
        SushiswapSwapDTO.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SushiswapSwapDTO</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SushiswapSwapDTO} obj Optional instance to populate.
     * @return {module:model/SushiswapSwapDTO} The populated <code>SushiswapSwapDTO</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SushiswapSwapDTO();

            if (data.hasOwnProperty('entry_time')) {
                obj['entry_time'] = ApiClient.convertToType(data['entry_time'], 'Date');
            }
            if (data.hasOwnProperty('recv_time')) {
                obj['recv_time'] = ApiClient.convertToType(data['recv_time'], 'Date');
            }
            if (data.hasOwnProperty('block_number')) {
                obj['block_number'] = ApiClient.convertToType(data['block_number'], 'Number');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('transaction')) {
                obj['transaction'] = ApiClient.convertToType(data['transaction'], 'String');
            }
            if (data.hasOwnProperty('timestamp')) {
                obj['timestamp'] = ApiClient.convertToType(data['timestamp'], 'String');
            }
            if (data.hasOwnProperty('pair')) {
                obj['pair'] = ApiClient.convertToType(data['pair'], 'String');
            }
            if (data.hasOwnProperty('sender')) {
                obj['sender'] = ApiClient.convertToType(data['sender'], 'String');
            }
            if (data.hasOwnProperty('amount_0_in')) {
                obj['amount_0_in'] = ApiClient.convertToType(data['amount_0_in'], 'String');
            }
            if (data.hasOwnProperty('amount_1_in')) {
                obj['amount_1_in'] = ApiClient.convertToType(data['amount_1_in'], 'String');
            }
            if (data.hasOwnProperty('amount_0_out')) {
                obj['amount_0_out'] = ApiClient.convertToType(data['amount_0_out'], 'String');
            }
            if (data.hasOwnProperty('amount_1_out')) {
                obj['amount_1_out'] = ApiClient.convertToType(data['amount_1_out'], 'String');
            }
            if (data.hasOwnProperty('to')) {
                obj['to'] = ApiClient.convertToType(data['to'], 'String');
            }
            if (data.hasOwnProperty('log_index')) {
                obj['log_index'] = ApiClient.convertToType(data['log_index'], 'String');
            }
            if (data.hasOwnProperty('amount_usd')) {
                obj['amount_usd'] = ApiClient.convertToType(data['amount_usd'], 'String');
            }
            if (data.hasOwnProperty('vid')) {
                obj['vid'] = ApiClient.convertToType(data['vid'], 'Number');
            }
            if (data.hasOwnProperty('pool_id')) {
                obj['pool_id'] = ApiClient.convertToType(data['pool_id'], 'String');
            }
            if (data.hasOwnProperty('transaction_id')) {
                obj['transaction_id'] = ApiClient.convertToType(data['transaction_id'], 'String');
            }
            if (data.hasOwnProperty('evaluated_price')) {
                obj['evaluated_price'] = ApiClient.convertToType(data['evaluated_price'], 'Number');
            }
            if (data.hasOwnProperty('evaluated_amount')) {
                obj['evaluated_amount'] = ApiClient.convertToType(data['evaluated_amount'], 'Number');
            }
            if (data.hasOwnProperty('evaluated_aggressor')) {
                obj['evaluated_aggressor'] = TransactionsETradeAggressiveSide.constructFromObject(data['evaluated_aggressor']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SushiswapSwapDTO</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SushiswapSwapDTO</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['id'] && !(typeof data['id'] === 'string' || data['id'] instanceof String)) {
            throw new Error("Expected the field `id` to be a primitive type in the JSON string but got " + data['id']);
        }
        // ensure the json data is a string
        if (data['transaction'] && !(typeof data['transaction'] === 'string' || data['transaction'] instanceof String)) {
            throw new Error("Expected the field `transaction` to be a primitive type in the JSON string but got " + data['transaction']);
        }
        // ensure the json data is a string
        if (data['timestamp'] && !(typeof data['timestamp'] === 'string' || data['timestamp'] instanceof String)) {
            throw new Error("Expected the field `timestamp` to be a primitive type in the JSON string but got " + data['timestamp']);
        }
        // ensure the json data is a string
        if (data['pair'] && !(typeof data['pair'] === 'string' || data['pair'] instanceof String)) {
            throw new Error("Expected the field `pair` to be a primitive type in the JSON string but got " + data['pair']);
        }
        // ensure the json data is a string
        if (data['sender'] && !(typeof data['sender'] === 'string' || data['sender'] instanceof String)) {
            throw new Error("Expected the field `sender` to be a primitive type in the JSON string but got " + data['sender']);
        }
        // ensure the json data is a string
        if (data['amount_0_in'] && !(typeof data['amount_0_in'] === 'string' || data['amount_0_in'] instanceof String)) {
            throw new Error("Expected the field `amount_0_in` to be a primitive type in the JSON string but got " + data['amount_0_in']);
        }
        // ensure the json data is a string
        if (data['amount_1_in'] && !(typeof data['amount_1_in'] === 'string' || data['amount_1_in'] instanceof String)) {
            throw new Error("Expected the field `amount_1_in` to be a primitive type in the JSON string but got " + data['amount_1_in']);
        }
        // ensure the json data is a string
        if (data['amount_0_out'] && !(typeof data['amount_0_out'] === 'string' || data['amount_0_out'] instanceof String)) {
            throw new Error("Expected the field `amount_0_out` to be a primitive type in the JSON string but got " + data['amount_0_out']);
        }
        // ensure the json data is a string
        if (data['amount_1_out'] && !(typeof data['amount_1_out'] === 'string' || data['amount_1_out'] instanceof String)) {
            throw new Error("Expected the field `amount_1_out` to be a primitive type in the JSON string but got " + data['amount_1_out']);
        }
        // ensure the json data is a string
        if (data['to'] && !(typeof data['to'] === 'string' || data['to'] instanceof String)) {
            throw new Error("Expected the field `to` to be a primitive type in the JSON string but got " + data['to']);
        }
        // ensure the json data is a string
        if (data['log_index'] && !(typeof data['log_index'] === 'string' || data['log_index'] instanceof String)) {
            throw new Error("Expected the field `log_index` to be a primitive type in the JSON string but got " + data['log_index']);
        }
        // ensure the json data is a string
        if (data['amount_usd'] && !(typeof data['amount_usd'] === 'string' || data['amount_usd'] instanceof String)) {
            throw new Error("Expected the field `amount_usd` to be a primitive type in the JSON string but got " + data['amount_usd']);
        }
        // ensure the json data is a string
        if (data['pool_id'] && !(typeof data['pool_id'] === 'string' || data['pool_id'] instanceof String)) {
            throw new Error("Expected the field `pool_id` to be a primitive type in the JSON string but got " + data['pool_id']);
        }
        // ensure the json data is a string
        if (data['transaction_id'] && !(typeof data['transaction_id'] === 'string' || data['transaction_id'] instanceof String)) {
            throw new Error("Expected the field `transaction_id` to be a primitive type in the JSON string but got " + data['transaction_id']);
        }

        return true;
    }


}



/**
 * @member {Date} entry_time
 */
SushiswapSwapDTO.prototype['entry_time'] = undefined;

/**
 * @member {Date} recv_time
 */
SushiswapSwapDTO.prototype['recv_time'] = undefined;

/**
 * Number of block in which entity was recorded.
 * @member {Number} block_number
 */
SushiswapSwapDTO.prototype['block_number'] = undefined;

/**
 * Transaction hash plus index in Transaction swap array.
 * @member {String} id
 */
SushiswapSwapDTO.prototype['id'] = undefined;

/**
 * Reference to transaction swap was included in.
 * @member {String} transaction
 */
SushiswapSwapDTO.prototype['transaction'] = undefined;

/**
 * Timestamp of swap, used for sorted lookups.
 * @member {String} timestamp
 */
SushiswapSwapDTO.prototype['timestamp'] = undefined;

/**
 * Reference to pair.
 * @member {String} pair
 */
SushiswapSwapDTO.prototype['pair'] = undefined;

/**
 * Address that initiated the swap.
 * @member {String} sender
 */
SushiswapSwapDTO.prototype['sender'] = undefined;

/**
 * Amount of token0 sold.
 * @member {String} amount_0_in
 */
SushiswapSwapDTO.prototype['amount_0_in'] = undefined;

/**
 * Amount of token1 sold.
 * @member {String} amount_1_in
 */
SushiswapSwapDTO.prototype['amount_1_in'] = undefined;

/**
 * Amount of token0 received.
 * @member {String} amount_0_out
 */
SushiswapSwapDTO.prototype['amount_0_out'] = undefined;

/**
 * Amount of token1 received.
 * @member {String} amount_1_out
 */
SushiswapSwapDTO.prototype['amount_1_out'] = undefined;

/**
 * Recipient of output tokens.
 * @member {String} to
 */
SushiswapSwapDTO.prototype['to'] = undefined;

/**
 * Event index within transaction.
 * @member {String} log_index
 */
SushiswapSwapDTO.prototype['log_index'] = undefined;

/**
 * Derived amount of tokens sold in USD.
 * @member {String} amount_usd
 */
SushiswapSwapDTO.prototype['amount_usd'] = undefined;

/**
 * 
 * @member {Number} vid
 */
SushiswapSwapDTO.prototype['vid'] = undefined;

/**
 * @member {String} pool_id
 */
SushiswapSwapDTO.prototype['pool_id'] = undefined;

/**
 * @member {String} transaction_id
 */
SushiswapSwapDTO.prototype['transaction_id'] = undefined;

/**
 * @member {Number} evaluated_price
 */
SushiswapSwapDTO.prototype['evaluated_price'] = undefined;

/**
 * @member {Number} evaluated_amount
 */
SushiswapSwapDTO.prototype['evaluated_amount'] = undefined;

/**
 * @member {module:model/TransactionsETradeAggressiveSide} evaluated_aggressor
 */
SushiswapSwapDTO.prototype['evaluated_aggressor'] = undefined;






export default SushiswapSwapDTO;

