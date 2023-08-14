/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.PANCAKESWAPV3ETHEREUMApi.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 *  This section will provide necessary information about the &#x60;OnChain API&#x60; protocol.  &lt;br/&gt;&lt;br/&gt; Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 * Version: v1
 * Generated by: org.openapitools.codegen.languages.JavascriptClosureAngularClientCodegen
 */
/**
 * @license MIT License
 * https://github.com/coinapi/coinapi-sdk/blob/master/LICENSE
 */

goog.provide('API.Client.PANCAKESWAPV3ETHEREUMApi');

goog.require('API.Client.PANCAKESWAP_V3_ETHEREUM.LiquidityPoolDTO');
goog.require('API.Client.PANCAKESWAP_V3_ETHEREUM.SwapDTO');
goog.require('API.Client.PANCAKESWAP_V3_ETHEREUM.TokenDTO');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.PANCAKESWAPV3ETHEREUMApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('PANCAKESWAPV3ETHEREUMApiBasePath') ?
                   /** @type {!string} */ ($injector.get('PANCAKESWAPV3ETHEREUMApiBasePath')) :
                   'https://onchain.coinapi.io';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('PANCAKESWAPV3ETHEREUMApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('PANCAKESWAPV3ETHEREUMApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.PANCAKESWAPV3ETHEREUMApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * LiquidityPools (current)
 * Gets liquidityPools.
 * @param {!string=} opt_id Smart contract address of the pool.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.PANCAKESWAP_V3_ETHEREUM.LiquidityPoolDTO>>}
 */
API.Client.PANCAKESWAPV3ETHEREUMApi.prototype.pANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent = function(opt_id, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/pancakeswap-v3-ethereum/liquidityPools/current';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_id !== undefined) {
    queryParameters['id'] = opt_id;
  }

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * Swaps (current)
 * Gets swaps.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.PANCAKESWAP_V3_ETHEREUM.SwapDTO>>}
 */
API.Client.PANCAKESWAPV3ETHEREUMApi.prototype.pANCAKESWAPV3ETHEREUMSwapsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/pancakeswap-v3-ethereum/swaps/current';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * Tokens (current)
 * Gets tokens.
 * @param {!string=} opt_id Smart contract address of the token.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.PANCAKESWAP_V3_ETHEREUM.TokenDTO>>}
 */
API.Client.PANCAKESWAPV3ETHEREUMApi.prototype.pANCAKESWAPV3ETHEREUMTokensCurrent = function(opt_id, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/pancakeswap-v3-ethereum/tokens/current';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_id !== undefined) {
    queryParameters['id'] = opt_id;
  }

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}
