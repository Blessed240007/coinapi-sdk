/**
 * EMS - REST API
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a hrefs=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 
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
 * The BalanceData model module.
 * @module model/BalanceData
 * @version v1
 */
class BalanceData {
    /**
     * Constructs a new <code>BalanceData</code>.
     * @alias module:model/BalanceData
     */
    constructor() { 
        
        BalanceData.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>BalanceData</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/BalanceData} obj Optional instance to populate.
     * @return {module:model/BalanceData} The populated <code>BalanceData</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new BalanceData();

            if (data.hasOwnProperty('asset_id_exchange')) {
                obj['asset_id_exchange'] = ApiClient.convertToType(data['asset_id_exchange'], 'String');
            }
            if (data.hasOwnProperty('asset_id_coinapi')) {
                obj['asset_id_coinapi'] = ApiClient.convertToType(data['asset_id_coinapi'], 'String');
            }
            if (data.hasOwnProperty('balance')) {
                obj['balance'] = ApiClient.convertToType(data['balance'], 'Number');
            }
            if (data.hasOwnProperty('available')) {
                obj['available'] = ApiClient.convertToType(data['available'], 'Number');
            }
            if (data.hasOwnProperty('locked')) {
                obj['locked'] = ApiClient.convertToType(data['locked'], 'Number');
            }
            if (data.hasOwnProperty('last_updated_by')) {
                obj['last_updated_by'] = ApiClient.convertToType(data['last_updated_by'], 'String');
            }
            if (data.hasOwnProperty('rate_usd')) {
                obj['rate_usd'] = ApiClient.convertToType(data['rate_usd'], 'Number');
            }
            if (data.hasOwnProperty('traded')) {
                obj['traded'] = ApiClient.convertToType(data['traded'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * Exchange currency code.
 * @member {String} asset_id_exchange
 */
BalanceData.prototype['asset_id_exchange'] = undefined;

/**
 * CoinAPI currency code.
 * @member {String} asset_id_coinapi
 */
BalanceData.prototype['asset_id_coinapi'] = undefined;

/**
 * Value of the current total currency balance on the exchange.
 * @member {Number} balance
 */
BalanceData.prototype['balance'] = undefined;

/**
 * Value of the current available currency balance on the exchange that can be used as collateral.
 * @member {Number} available
 */
BalanceData.prototype['available'] = undefined;

/**
 * Value of the current locked currency balance by the exchange.
 * @member {Number} locked
 */
BalanceData.prototype['locked'] = undefined;

/**
 * Source of the last modification. 
 * @member {module:model/BalanceData.LastUpdatedByEnum} last_updated_by
 */
BalanceData.prototype['last_updated_by'] = undefined;

/**
 * Current exchange rate to the USD for the single unit of the currency. 
 * @member {Number} rate_usd
 */
BalanceData.prototype['rate_usd'] = undefined;

/**
 * Value of the current total traded.
 * @member {Number} traded
 */
BalanceData.prototype['traded'] = undefined;





/**
 * Allowed values for the <code>last_updated_by</code> property.
 * @enum {String}
 * @readonly
 */
BalanceData['LastUpdatedByEnum'] = {

    /**
     * value: "INITIALIZATION"
     * @const
     */
    "INITIALIZATION": "INITIALIZATION",

    /**
     * value: "BALANCE_MANAGER"
     * @const
     */
    "BALANCE_MANAGER": "BALANCE_MANAGER",

    /**
     * value: "EXCHANGE"
     * @const
     */
    "EXCHANGE": "EXCHANGE"
};



export default BalanceData;

