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
import NumericsBigInteger from './NumericsBigInteger';
import TransactionsETradeAggressiveSide from './TransactionsETradeAggressiveSide';

/**
 * The UniswapV3SwapDTO model module.
 * @module model/UniswapV3SwapDTO
 * @version v1
 */
class UniswapV3SwapDTO {
    /**
     * Constructs a new <code>UniswapV3SwapDTO</code>.
     * Swap are created for each token swap within a pair.
     * @alias module:model/UniswapV3SwapDTO
     */
    constructor() { 
        
        UniswapV3SwapDTO.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>UniswapV3SwapDTO</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/UniswapV3SwapDTO} obj Optional instance to populate.
     * @return {module:model/UniswapV3SwapDTO} The populated <code>UniswapV3SwapDTO</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new UniswapV3SwapDTO();

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
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('transaction')) {
                obj['transaction'] = ApiClient.convertToType(data['transaction'], 'String');
            }
            if (data.hasOwnProperty('timestamp')) {
                obj['timestamp'] = ApiClient.convertToType(data['timestamp'], 'Date');
            }
            if (data.hasOwnProperty('pool')) {
                obj['pool'] = ApiClient.convertToType(data['pool'], 'String');
            }
            if (data.hasOwnProperty('token_0')) {
                obj['token_0'] = ApiClient.convertToType(data['token_0'], 'String');
            }
            if (data.hasOwnProperty('token_1')) {
                obj['token_1'] = ApiClient.convertToType(data['token_1'], 'String');
            }
            if (data.hasOwnProperty('sender')) {
                obj['sender'] = ApiClient.convertToType(data['sender'], 'String');
            }
            if (data.hasOwnProperty('recipient')) {
                obj['recipient'] = ApiClient.convertToType(data['recipient'], 'String');
            }
            if (data.hasOwnProperty('origin')) {
                obj['origin'] = ApiClient.convertToType(data['origin'], 'String');
            }
            if (data.hasOwnProperty('amount_0')) {
                obj['amount_0'] = ApiClient.convertToType(data['amount_0'], 'String');
            }
            if (data.hasOwnProperty('amount_1')) {
                obj['amount_1'] = ApiClient.convertToType(data['amount_1'], 'String');
            }
            if (data.hasOwnProperty('amount_usd')) {
                obj['amount_usd'] = ApiClient.convertToType(data['amount_usd'], 'String');
            }
            if (data.hasOwnProperty('sqrt_price_x96')) {
                obj['sqrt_price_x96'] = NumericsBigInteger.constructFromObject(data['sqrt_price_x96']);
            }
            if (data.hasOwnProperty('tick')) {
                obj['tick'] = NumericsBigInteger.constructFromObject(data['tick']);
            }
            if (data.hasOwnProperty('log_index')) {
                obj['log_index'] = NumericsBigInteger.constructFromObject(data['log_index']);
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
            if (data.hasOwnProperty('pool_id')) {
                obj['pool_id'] = ApiClient.convertToType(data['pool_id'], 'String');
            }
            if (data.hasOwnProperty('transaction_id')) {
                obj['transaction_id'] = ApiClient.convertToType(data['transaction_id'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>UniswapV3SwapDTO</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>UniswapV3SwapDTO</code>.
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
        if (data['pool'] && !(typeof data['pool'] === 'string' || data['pool'] instanceof String)) {
            throw new Error("Expected the field `pool` to be a primitive type in the JSON string but got " + data['pool']);
        }
        // ensure the json data is a string
        if (data['token_0'] && !(typeof data['token_0'] === 'string' || data['token_0'] instanceof String)) {
            throw new Error("Expected the field `token_0` to be a primitive type in the JSON string but got " + data['token_0']);
        }
        // ensure the json data is a string
        if (data['token_1'] && !(typeof data['token_1'] === 'string' || data['token_1'] instanceof String)) {
            throw new Error("Expected the field `token_1` to be a primitive type in the JSON string but got " + data['token_1']);
        }
        // ensure the json data is a string
        if (data['sender'] && !(typeof data['sender'] === 'string' || data['sender'] instanceof String)) {
            throw new Error("Expected the field `sender` to be a primitive type in the JSON string but got " + data['sender']);
        }
        // ensure the json data is a string
        if (data['recipient'] && !(typeof data['recipient'] === 'string' || data['recipient'] instanceof String)) {
            throw new Error("Expected the field `recipient` to be a primitive type in the JSON string but got " + data['recipient']);
        }
        // ensure the json data is a string
        if (data['origin'] && !(typeof data['origin'] === 'string' || data['origin'] instanceof String)) {
            throw new Error("Expected the field `origin` to be a primitive type in the JSON string but got " + data['origin']);
        }
        // ensure the json data is a string
        if (data['amount_0'] && !(typeof data['amount_0'] === 'string' || data['amount_0'] instanceof String)) {
            throw new Error("Expected the field `amount_0` to be a primitive type in the JSON string but got " + data['amount_0']);
        }
        // ensure the json data is a string
        if (data['amount_1'] && !(typeof data['amount_1'] === 'string' || data['amount_1'] instanceof String)) {
            throw new Error("Expected the field `amount_1` to be a primitive type in the JSON string but got " + data['amount_1']);
        }
        // ensure the json data is a string
        if (data['amount_usd'] && !(typeof data['amount_usd'] === 'string' || data['amount_usd'] instanceof String)) {
            throw new Error("Expected the field `amount_usd` to be a primitive type in the JSON string but got " + data['amount_usd']);
        }
        // validate the optional field `sqrt_price_x96`
        if (data['sqrt_price_x96']) { // data not null
          NumericsBigInteger.validateJSON(data['sqrt_price_x96']);
        }
        // validate the optional field `tick`
        if (data['tick']) { // data not null
          NumericsBigInteger.validateJSON(data['tick']);
        }
        // validate the optional field `log_index`
        if (data['log_index']) { // data not null
          NumericsBigInteger.validateJSON(data['log_index']);
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
UniswapV3SwapDTO.prototype['entry_time'] = undefined;

/**
 * @member {Date} recv_time
 */
UniswapV3SwapDTO.prototype['recv_time'] = undefined;

/**
 * Number of block in which entity was recorded.
 * @member {Number} block_number
 */
UniswapV3SwapDTO.prototype['block_number'] = undefined;

/**
 * 
 * @member {Number} vid
 */
UniswapV3SwapDTO.prototype['vid'] = undefined;

/**
 * Identifier, format: (transaction hash) + # + (index in swaps Transaction array).
 * @member {String} id
 */
UniswapV3SwapDTO.prototype['id'] = undefined;

/**
 * Pointer to transaction.
 * @member {String} transaction
 */
UniswapV3SwapDTO.prototype['transaction'] = undefined;

/**
 * Timestamp of transaction.
 * @member {Date} timestamp
 */
UniswapV3SwapDTO.prototype['timestamp'] = undefined;

/**
 * Pool swap occured within.
 * @member {String} pool
 */
UniswapV3SwapDTO.prototype['pool'] = undefined;

/**
 * Reference to token0 as stored in pair contract.
 * @member {String} token_0
 */
UniswapV3SwapDTO.prototype['token_0'] = undefined;

/**
 * Reference to token1 as stored in pair contract.
 * @member {String} token_1
 */
UniswapV3SwapDTO.prototype['token_1'] = undefined;

/**
 * Sender of the swap.
 * @member {String} sender
 */
UniswapV3SwapDTO.prototype['sender'] = undefined;

/**
 * Recipient of the swap.
 * @member {String} recipient
 */
UniswapV3SwapDTO.prototype['recipient'] = undefined;

/**
 * Transaction origin: the EOA (Externally Owned Account) that initiated the transaction
 * @member {String} origin
 */
UniswapV3SwapDTO.prototype['origin'] = undefined;

/**
 * Delta of token0 swapped.
 * @member {String} amount_0
 */
UniswapV3SwapDTO.prototype['amount_0'] = undefined;

/**
 * Delta of token1 swapped.
 * @member {String} amount_1
 */
UniswapV3SwapDTO.prototype['amount_1'] = undefined;

/**
 * Derived amount of tokens sold in USD.
 * @member {String} amount_usd
 */
UniswapV3SwapDTO.prototype['amount_usd'] = undefined;

/**
 * @member {module:model/NumericsBigInteger} sqrt_price_x96
 */
UniswapV3SwapDTO.prototype['sqrt_price_x96'] = undefined;

/**
 * @member {module:model/NumericsBigInteger} tick
 */
UniswapV3SwapDTO.prototype['tick'] = undefined;

/**
 * @member {module:model/NumericsBigInteger} log_index
 */
UniswapV3SwapDTO.prototype['log_index'] = undefined;

/**
 * @member {Number} evaluated_price
 */
UniswapV3SwapDTO.prototype['evaluated_price'] = undefined;

/**
 * @member {Number} evaluated_amount
 */
UniswapV3SwapDTO.prototype['evaluated_amount'] = undefined;

/**
 * @member {module:model/TransactionsETradeAggressiveSide} evaluated_aggressor
 */
UniswapV3SwapDTO.prototype['evaluated_aggressor'] = undefined;

/**
 * @member {String} pool_id
 */
UniswapV3SwapDTO.prototype['pool_id'] = undefined;

/**
 * @member {String} transaction_id
 */
UniswapV3SwapDTO.prototype['transaction_id'] = undefined;






export default UniswapV3SwapDTO;

