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


import ApiClient from "../ApiClient";
import CRYPTOPUNKSBidDTO from '../model/CRYPTOPUNKSBidDTO';
import CRYPTOPUNKSCollectionDTO from '../model/CRYPTOPUNKSCollectionDTO';
import CRYPTOPUNKSCollectionDailySnapshotDTO from '../model/CRYPTOPUNKSCollectionDailySnapshotDTO';
import CRYPTOPUNKSDataSourcesDTO from '../model/CRYPTOPUNKSDataSourcesDTO';
import CRYPTOPUNKSItemDTO from '../model/CRYPTOPUNKSItemDTO';
import CRYPTOPUNKSMarketPlaceDTO from '../model/CRYPTOPUNKSMarketPlaceDTO';
import CRYPTOPUNKSMarketplaceDailySnapshotDTO from '../model/CRYPTOPUNKSMarketplaceDailySnapshotDTO';
import CRYPTOPUNKSTradeDTO from '../model/CRYPTOPUNKSTradeDTO';
import CRYPTOPUNKSUserDTO from '../model/CRYPTOPUNKSUserDTO';

/**
* CRYPTOPUNKS service.
* @module api/CRYPTOPUNKSApi
* @version v1
*/
export default class CRYPTOPUNKSApi {

    /**
    * Constructs a new CRYPTOPUNKSApi. 
    * @alias module:api/CRYPTOPUNKSApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the cRYPTOPUNKSBidsCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSBidsCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSBidDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Bids (current)
     * Gets bids.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSBidsCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSBidDTO>}
     */
    cRYPTOPUNKSBidsCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
      let returnType = [CRYPTOPUNKSBidDTO];
      return this.apiClient.callApi(
        '/v1/dapps/cryptopunks/bids/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSCollectionDailySnapshotsCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSCollectionDailySnapshotsCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSCollectionDailySnapshotDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * CollectionDailySnapshots (current)
     * Gets collectionDailySnapshots.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSCollectionDailySnapshotsCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSCollectionDailySnapshotDTO>}
     */
    cRYPTOPUNKSCollectionDailySnapshotsCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
      let returnType = [CRYPTOPUNKSCollectionDailySnapshotDTO];
      return this.apiClient.callApi(
        '/v1/dapps/cryptopunks/collectionDailySnapshots/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSCollectionsCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSCollectionsCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSCollectionDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Collections (current)
     * Gets collections.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSCollectionsCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSCollectionDTO>}
     */
    cRYPTOPUNKSCollectionsCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
      let returnType = [CRYPTOPUNKSCollectionDTO];
      return this.apiClient.callApi(
        '/v1/dapps/cryptopunks/collections/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSDataSourcesCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSDataSourcesCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSDataSourcesDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * DataSources (current)
     * Gets dataSources.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSDataSourcesCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSDataSourcesDTO>}
     */
    cRYPTOPUNKSDataSourcesCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
      let returnType = [CRYPTOPUNKSDataSourcesDTO];
      return this.apiClient.callApi(
        '/v1/dapps/cryptopunks/dataSources/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSItemsCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSItemsCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSItemDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Items (current)
     * Gets items.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSItemsCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSItemDTO>}
     */
    cRYPTOPUNKSItemsCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
      let returnType = [CRYPTOPUNKSItemDTO];
      return this.apiClient.callApi(
        '/v1/dapps/cryptopunks/items/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSMarketPlacesCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSMarketPlacesCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSMarketPlaceDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * MarketPlaces (current)
     * Gets marketPlaces.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSMarketPlacesCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSMarketPlaceDTO>}
     */
    cRYPTOPUNKSMarketPlacesCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
      let returnType = [CRYPTOPUNKSMarketPlaceDTO];
      return this.apiClient.callApi(
        '/v1/dapps/cryptopunks/marketPlaces/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSMarketplaceDailySnapshotsCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSMarketplaceDailySnapshotsCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSMarketplaceDailySnapshotDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * MarketplaceDailySnapshots (current)
     * Gets marketplaceDailySnapshots.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSMarketplaceDailySnapshotsCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSMarketplaceDailySnapshotDTO>}
     */
    cRYPTOPUNKSMarketplaceDailySnapshotsCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
      let returnType = [CRYPTOPUNKSMarketplaceDailySnapshotDTO];
      return this.apiClient.callApi(
        '/v1/dapps/cryptopunks/marketplaceDailySnapshots/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSTradesCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSTradesCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSTradeDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Trades (current)
     * Gets trades.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSTradesCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSTradeDTO>}
     */
    cRYPTOPUNKSTradesCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
      let returnType = [CRYPTOPUNKSTradeDTO];
      return this.apiClient.callApi(
        '/v1/dapps/cryptopunks/trades/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSUsersCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSUsersCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSUserDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Users (current)
     * Gets users.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSUsersCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSUserDTO>}
     */
    cRYPTOPUNKSUsersCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
      let returnType = [CRYPTOPUNKSUserDTO];
      return this.apiClient.callApi(
        '/v1/dapps/cryptopunks/users/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
