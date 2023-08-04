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
 * The UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO model module.
 * @module model/UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO
 * @version v1
 */
class UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO {
    /**
     * Constructs a new <code>UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO</code>.
     * 
     * @alias module:model/UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO
     */
    constructor() { 
        
        UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO} obj Optional instance to populate.
     * @return {module:model/UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO} The populated <code>UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO();

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
            if (data.hasOwnProperty('hour')) {
                obj['hour'] = ApiClient.convertToType(data['hour'], 'Number');
            }
            if (data.hasOwnProperty('protocol')) {
                obj['protocol'] = ApiClient.convertToType(data['protocol'], 'String');
            }
            if (data.hasOwnProperty('hourly_active_users')) {
                obj['hourly_active_users'] = ApiClient.convertToType(data['hourly_active_users'], 'Number');
            }
            if (data.hasOwnProperty('cumulative_unique_users')) {
                obj['cumulative_unique_users'] = ApiClient.convertToType(data['cumulative_unique_users'], 'Number');
            }
            if (data.hasOwnProperty('hourly_transaction_count')) {
                obj['hourly_transaction_count'] = ApiClient.convertToType(data['hourly_transaction_count'], 'Number');
            }
            if (data.hasOwnProperty('hourly_deposit_count')) {
                obj['hourly_deposit_count'] = ApiClient.convertToType(data['hourly_deposit_count'], 'Number');
            }
            if (data.hasOwnProperty('hourly_withdraw_count')) {
                obj['hourly_withdraw_count'] = ApiClient.convertToType(data['hourly_withdraw_count'], 'Number');
            }
            if (data.hasOwnProperty('hourly_swap_count')) {
                obj['hourly_swap_count'] = ApiClient.convertToType(data['hourly_swap_count'], 'Number');
            }
            if (data.hasOwnProperty('timestamp')) {
                obj['timestamp'] = ApiClient.convertToType(data['timestamp'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['id'] && !(typeof data['id'] === 'string' || data['id'] instanceof String)) {
            throw new Error("Expected the field `id` to be a primitive type in the JSON string but got " + data['id']);
        }
        // ensure the json data is a string
        if (data['protocol'] && !(typeof data['protocol'] === 'string' || data['protocol'] instanceof String)) {
            throw new Error("Expected the field `protocol` to be a primitive type in the JSON string but got " + data['protocol']);
        }
        // ensure the json data is a string
        if (data['timestamp'] && !(typeof data['timestamp'] === 'string' || data['timestamp'] instanceof String)) {
            throw new Error("Expected the field `timestamp` to be a primitive type in the JSON string but got " + data['timestamp']);
        }

        return true;
    }


}



/**
 * @member {Date} entry_time
 */
UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO.prototype['entry_time'] = undefined;

/**
 * @member {Date} recv_time
 */
UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO.prototype['recv_time'] = undefined;

/**
 * Number of block in which entity was recorded.
 * @member {Number} block_number
 */
UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO.prototype['block_number'] = undefined;

/**
 * (# of hours since Unix epoch time)
 * @member {String} id
 */
UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO.prototype['id'] = undefined;

/**
 * Number of hours since Unix epoch time
 * @member {Number} hour
 */
UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO.prototype['hour'] = undefined;

/**
 * Protocol this snapshot is associated with
 * @member {String} protocol
 */
UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO.prototype['protocol'] = undefined;

/**
 * Number of unique hourly active users
 * @member {Number} hourly_active_users
 */
UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO.prototype['hourly_active_users'] = undefined;

/**
 * Number of cumulative unique users
 * @member {Number} cumulative_unique_users
 */
UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO.prototype['cumulative_unique_users'] = undefined;

/**
 * Total number of transactions occurred in an hour. Transactions include all entities that implement the Event interface.
 * @member {Number} hourly_transaction_count
 */
UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO.prototype['hourly_transaction_count'] = undefined;

/**
 * Total number of deposits (add liquidity) in an hour
 * @member {Number} hourly_deposit_count
 */
UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO.prototype['hourly_deposit_count'] = undefined;

/**
 * Total number of withdrawals (remove liquidity) in an hour
 * @member {Number} hourly_withdraw_count
 */
UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO.prototype['hourly_withdraw_count'] = undefined;

/**
 * Total number of trades (swaps) in an hour
 * @member {Number} hourly_swap_count
 */
UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO.prototype['hourly_swap_count'] = undefined;

/**
 * Timestamp of when this snapshot was taken/last modified (May be taken after interval has passed)
 * @member {String} timestamp
 */
UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO.prototype['timestamp'] = undefined;






export default UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO;

