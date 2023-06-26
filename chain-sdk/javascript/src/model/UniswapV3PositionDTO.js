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
 * The UniswapV3PositionDTO model module.
 * @module model/UniswapV3PositionDTO
 * @version v1
 */
class UniswapV3PositionDTO {
    /**
     * Constructs a new <code>UniswapV3PositionDTO</code>.
     * Positions created through NonfungiblePositionManager. Positions are represented as NFTs (ERC-721 tokens) as opposed to the fungible ERC-20 tokens on Uniswap V1 and V2.
     * @alias module:model/UniswapV3PositionDTO
     */
    constructor() { 
        
        UniswapV3PositionDTO.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>UniswapV3PositionDTO</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/UniswapV3PositionDTO} obj Optional instance to populate.
     * @return {module:model/UniswapV3PositionDTO} The populated <code>UniswapV3PositionDTO</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new UniswapV3PositionDTO();

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
            if (data.hasOwnProperty('owner')) {
                obj['owner'] = ApiClient.convertToType(data['owner'], 'String');
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
            if (data.hasOwnProperty('tick_lower')) {
                obj['tick_lower'] = ApiClient.convertToType(data['tick_lower'], 'String');
            }
            if (data.hasOwnProperty('tick_upper')) {
                obj['tick_upper'] = ApiClient.convertToType(data['tick_upper'], 'String');
            }
            if (data.hasOwnProperty('liquidity')) {
                obj['liquidity'] = ApiClient.convertToType(data['liquidity'], 'String');
            }
            if (data.hasOwnProperty('deposited_token_0')) {
                obj['deposited_token_0'] = ApiClient.convertToType(data['deposited_token_0'], 'String');
            }
            if (data.hasOwnProperty('deposited_token_1')) {
                obj['deposited_token_1'] = ApiClient.convertToType(data['deposited_token_1'], 'String');
            }
            if (data.hasOwnProperty('withdrawn_token_0')) {
                obj['withdrawn_token_0'] = ApiClient.convertToType(data['withdrawn_token_0'], 'String');
            }
            if (data.hasOwnProperty('withdrawn_token_1')) {
                obj['withdrawn_token_1'] = ApiClient.convertToType(data['withdrawn_token_1'], 'String');
            }
            if (data.hasOwnProperty('collected_fees_token_0')) {
                obj['collected_fees_token_0'] = ApiClient.convertToType(data['collected_fees_token_0'], 'String');
            }
            if (data.hasOwnProperty('collected_fees_token_1')) {
                obj['collected_fees_token_1'] = ApiClient.convertToType(data['collected_fees_token_1'], 'String');
            }
            if (data.hasOwnProperty('transaction')) {
                obj['transaction'] = ApiClient.convertToType(data['transaction'], 'String');
            }
            if (data.hasOwnProperty('fee_growth_inside_0_last_x128')) {
                obj['fee_growth_inside_0_last_x128'] = ApiClient.convertToType(data['fee_growth_inside_0_last_x128'], 'String');
            }
            if (data.hasOwnProperty('fee_growth_inside_1_last_x128')) {
                obj['fee_growth_inside_1_last_x128'] = ApiClient.convertToType(data['fee_growth_inside_1_last_x128'], 'String');
            }
            if (data.hasOwnProperty('vid')) {
                obj['vid'] = ApiClient.convertToType(data['vid'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>UniswapV3PositionDTO</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>UniswapV3PositionDTO</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['id'] && !(typeof data['id'] === 'string' || data['id'] instanceof String)) {
            throw new Error("Expected the field `id` to be a primitive type in the JSON string but got " + data['id']);
        }
        // ensure the json data is a string
        if (data['owner'] && !(typeof data['owner'] === 'string' || data['owner'] instanceof String)) {
            throw new Error("Expected the field `owner` to be a primitive type in the JSON string but got " + data['owner']);
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
        if (data['tick_lower'] && !(typeof data['tick_lower'] === 'string' || data['tick_lower'] instanceof String)) {
            throw new Error("Expected the field `tick_lower` to be a primitive type in the JSON string but got " + data['tick_lower']);
        }
        // ensure the json data is a string
        if (data['tick_upper'] && !(typeof data['tick_upper'] === 'string' || data['tick_upper'] instanceof String)) {
            throw new Error("Expected the field `tick_upper` to be a primitive type in the JSON string but got " + data['tick_upper']);
        }
        // ensure the json data is a string
        if (data['liquidity'] && !(typeof data['liquidity'] === 'string' || data['liquidity'] instanceof String)) {
            throw new Error("Expected the field `liquidity` to be a primitive type in the JSON string but got " + data['liquidity']);
        }
        // ensure the json data is a string
        if (data['deposited_token_0'] && !(typeof data['deposited_token_0'] === 'string' || data['deposited_token_0'] instanceof String)) {
            throw new Error("Expected the field `deposited_token_0` to be a primitive type in the JSON string but got " + data['deposited_token_0']);
        }
        // ensure the json data is a string
        if (data['deposited_token_1'] && !(typeof data['deposited_token_1'] === 'string' || data['deposited_token_1'] instanceof String)) {
            throw new Error("Expected the field `deposited_token_1` to be a primitive type in the JSON string but got " + data['deposited_token_1']);
        }
        // ensure the json data is a string
        if (data['withdrawn_token_0'] && !(typeof data['withdrawn_token_0'] === 'string' || data['withdrawn_token_0'] instanceof String)) {
            throw new Error("Expected the field `withdrawn_token_0` to be a primitive type in the JSON string but got " + data['withdrawn_token_0']);
        }
        // ensure the json data is a string
        if (data['withdrawn_token_1'] && !(typeof data['withdrawn_token_1'] === 'string' || data['withdrawn_token_1'] instanceof String)) {
            throw new Error("Expected the field `withdrawn_token_1` to be a primitive type in the JSON string but got " + data['withdrawn_token_1']);
        }
        // ensure the json data is a string
        if (data['collected_fees_token_0'] && !(typeof data['collected_fees_token_0'] === 'string' || data['collected_fees_token_0'] instanceof String)) {
            throw new Error("Expected the field `collected_fees_token_0` to be a primitive type in the JSON string but got " + data['collected_fees_token_0']);
        }
        // ensure the json data is a string
        if (data['collected_fees_token_1'] && !(typeof data['collected_fees_token_1'] === 'string' || data['collected_fees_token_1'] instanceof String)) {
            throw new Error("Expected the field `collected_fees_token_1` to be a primitive type in the JSON string but got " + data['collected_fees_token_1']);
        }
        // ensure the json data is a string
        if (data['transaction'] && !(typeof data['transaction'] === 'string' || data['transaction'] instanceof String)) {
            throw new Error("Expected the field `transaction` to be a primitive type in the JSON string but got " + data['transaction']);
        }
        // ensure the json data is a string
        if (data['fee_growth_inside_0_last_x128'] && !(typeof data['fee_growth_inside_0_last_x128'] === 'string' || data['fee_growth_inside_0_last_x128'] instanceof String)) {
            throw new Error("Expected the field `fee_growth_inside_0_last_x128` to be a primitive type in the JSON string but got " + data['fee_growth_inside_0_last_x128']);
        }
        // ensure the json data is a string
        if (data['fee_growth_inside_1_last_x128'] && !(typeof data['fee_growth_inside_1_last_x128'] === 'string' || data['fee_growth_inside_1_last_x128'] instanceof String)) {
            throw new Error("Expected the field `fee_growth_inside_1_last_x128` to be a primitive type in the JSON string but got " + data['fee_growth_inside_1_last_x128']);
        }

        return true;
    }


}



/**
 * @member {Date} entry_time
 */
UniswapV3PositionDTO.prototype['entry_time'] = undefined;

/**
 * @member {Date} recv_time
 */
UniswapV3PositionDTO.prototype['recv_time'] = undefined;

/**
 * Number of block in which entity was recorded.
 * @member {Number} block_number
 */
UniswapV3PositionDTO.prototype['block_number'] = undefined;

/**
 * NFT token identifier.
 * @member {String} id
 */
UniswapV3PositionDTO.prototype['id'] = undefined;

/**
 * Owner of the NFT.
 * @member {String} owner
 */
UniswapV3PositionDTO.prototype['owner'] = undefined;

/**
 * Pool position is within.
 * @member {String} pool
 */
UniswapV3PositionDTO.prototype['pool'] = undefined;

/**
 * Reference to token0 as stored in pair contract.
 * @member {String} token_0
 */
UniswapV3PositionDTO.prototype['token_0'] = undefined;

/**
 * Reference to token1 as stored in pair contract.
 * @member {String} token_1
 */
UniswapV3PositionDTO.prototype['token_1'] = undefined;

/**
 * Lower tick of the position.
 * @member {String} tick_lower
 */
UniswapV3PositionDTO.prototype['tick_lower'] = undefined;

/**
 * Upper tick of the position.
 * @member {String} tick_upper
 */
UniswapV3PositionDTO.prototype['tick_upper'] = undefined;

/**
 * Total position liquidity.
 * @member {String} liquidity
 */
UniswapV3PositionDTO.prototype['liquidity'] = undefined;

/**
 * Amount of token 0 ever deposited to position.
 * @member {String} deposited_token_0
 */
UniswapV3PositionDTO.prototype['deposited_token_0'] = undefined;

/**
 * Amount of token 1 ever deposited to position.
 * @member {String} deposited_token_1
 */
UniswapV3PositionDTO.prototype['deposited_token_1'] = undefined;

/**
 * Amount of token 0 ever withdrawn from position (without fees).
 * @member {String} withdrawn_token_0
 */
UniswapV3PositionDTO.prototype['withdrawn_token_0'] = undefined;

/**
 * Amount of token 1 ever withdrawn from position (without fees).
 * @member {String} withdrawn_token_1
 */
UniswapV3PositionDTO.prototype['withdrawn_token_1'] = undefined;

/**
 * All time collected fees in token0.
 * @member {String} collected_fees_token_0
 */
UniswapV3PositionDTO.prototype['collected_fees_token_0'] = undefined;

/**
 * All time collected fees in token1.
 * @member {String} collected_fees_token_1
 */
UniswapV3PositionDTO.prototype['collected_fees_token_1'] = undefined;

/**
 * Transaction in which the position was initialized.
 * @member {String} transaction
 */
UniswapV3PositionDTO.prototype['transaction'] = undefined;

/**
 * Variable needed for fee computation.
 * @member {String} fee_growth_inside_0_last_x128
 */
UniswapV3PositionDTO.prototype['fee_growth_inside_0_last_x128'] = undefined;

/**
 * Variable needed for fee computation.
 * @member {String} fee_growth_inside_1_last_x128
 */
UniswapV3PositionDTO.prototype['fee_growth_inside_1_last_x128'] = undefined;

/**
 * 
 * @member {Number} vid
 */
UniswapV3PositionDTO.prototype['vid'] = undefined;






export default UniswapV3PositionDTO;

