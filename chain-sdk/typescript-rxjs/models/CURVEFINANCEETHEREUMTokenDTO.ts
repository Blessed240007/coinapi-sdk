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

/**
 * 
 * @export
 * @interface CURVEFINANCEETHEREUMTokenDTO
 */
export interface CURVEFINANCEETHEREUMTokenDTO {
    /**
     * @type {string}
     * @memberof CURVEFINANCEETHEREUMTokenDTO
     */
    entry_time?: string;
    /**
     * @type {string}
     * @memberof CURVEFINANCEETHEREUMTokenDTO
     */
    recv_time?: string;
    /**
     * Number of block in which entity was recorded.
     * @type {number}
     * @memberof CURVEFINANCEETHEREUMTokenDTO
     */
    block_number?: number;
    /**
     * 
     * @type {number}
     * @memberof CURVEFINANCEETHEREUMTokenDTO
     */
    vid?: number;
    /**
     * Smart contract address of the token
     * @type {string}
     * @memberof CURVEFINANCEETHEREUMTokenDTO
     */
    id?: string | null;
    /**
     * Name of the token, mirrored from the smart contract
     * @type {string}
     * @memberof CURVEFINANCEETHEREUMTokenDTO
     */
    name?: string | null;
    /**
     * Symbol of the token, mirrored from the smart contract
     * @type {string}
     * @memberof CURVEFINANCEETHEREUMTokenDTO
     */
    symbol?: string | null;
    /**
     * The number of decimal places this token uses, default to 18
     * @type {number}
     * @memberof CURVEFINANCEETHEREUMTokenDTO
     */
    decimals?: number;
    /**
     * Optional field to track the price of a token
     * @type {string}
     * @memberof CURVEFINANCEETHEREUMTokenDTO
     */
    last_price_usd?: string | null;
    /**
     * Optional field to track the block number of the last token price 
     * @type {string}
     * @memberof CURVEFINANCEETHEREUMTokenDTO
     */
    last_price_block_number?: string | null;
    /**
     * @type {string}
     * @memberof CURVEFINANCEETHEREUMTokenDTO
     */
    readonly token_symbol?: string | null;
}
