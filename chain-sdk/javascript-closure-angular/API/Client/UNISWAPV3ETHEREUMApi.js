/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.UNISWAPV3ETHEREUMApi.
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

goog.provide('API.Client.UNISWAPV3ETHEREUMApi');

goog.require('API.Client.UNISWAP_V3_ETHEREUM.AccountDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.ActiveAccountDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.DepositDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.DexAmmProtocolDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.FinancialsDailySnapshotDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.LiquidityPoolAmountDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.LiquidityPoolDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.LiquidityPoolDailySnapshotDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.LiquidityPoolFeeDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.LiquidityPoolHourlySnapshotDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.PositionDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.PositionSnapshotDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.RewardTokenDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.SwapDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.TickDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.TickDailySnapshotDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.TickHourlySnapshotDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.TokenDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.TokenWhiteListDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.TokenWhiteListSymbolDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.UsageMetricsDailySnapshotDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.UsageMetricsHourlySnapshotDTO');
goog.require('API.Client.UNISWAP_V3_ETHEREUM.WithdrawDTO');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.UNISWAPV3ETHEREUMApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('UNISWAPV3ETHEREUMApiBasePath') ?
                   /** @type {!string} */ ($injector.get('UNISWAPV3ETHEREUMApiBasePath')) :
                   'https://onchain.coinapi.io';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('UNISWAPV3ETHEREUMApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('UNISWAPV3ETHEREUMApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.UNISWAPV3ETHEREUMApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * Accounts (current)
 * Gets accounts.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.AccountDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMAccountsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/accounts/current';

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
 * ActiveAccounts (current)
 * Gets activeAccounts.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.ActiveAccountDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMActiveAccountsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/activeAccounts/current';

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
 * Deposits (current)
 * Gets deposits.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.DepositDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMDepositsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/deposits/current';

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
 * DexAmmProtocols (current)
 * Gets dexAmmProtocols.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.DexAmmProtocolDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMDexAmmProtocolsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/dexAmmProtocols/current';

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
 * FinancialsDailySnapshots (current)
 * Gets financialsDailySnapshots.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.FinancialsDailySnapshotDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/financialsDailySnapshots/current';

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
 * LiquidityPoolAmounts (current)
 * Gets liquidityPoolAmounts.
 * @param {!string=} opt_id Smart contract address of the pool.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.LiquidityPoolAmountDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent = function(opt_id, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/liquidityPoolAmounts/current';

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
 * LiquidityPoolDailySnapshots (current)
 * Gets liquidityPoolDailySnapshots.
 * @param {!string=} opt_pool Pool this snapshot belongs to.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.LiquidityPoolDailySnapshotDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotsCurrent = function(opt_pool, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/liquidityPoolDailySnapshots/current';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_pool !== undefined) {
    queryParameters['pool'] = opt_pool;
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
 * LiquidityPoolFees (current)
 * Gets liquidityPoolFees.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.LiquidityPoolFeeDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMLiquidityPoolFeesCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/liquidityPoolFees/current';

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
 * LiquidityPoolHourlySnapshots (current)
 * Gets liquidityPoolHourlySnapshots.
 * @param {!string=} opt_pool The pool this snapshot belongs to
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.LiquidityPoolHourlySnapshotDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent = function(opt_pool, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/liquidityPoolHourlySnapshots/current';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_pool !== undefined) {
    queryParameters['pool'] = opt_pool;
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
 * LiquidityPools (current)
 * Gets liquidityPools.
 * @param {!string=} opt_id Smart contract address of the pool.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.LiquidityPoolDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMLiquidityPoolsCurrent = function(opt_id, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/liquidityPools/current';

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
 * PositionSnapshots (current)
 * Gets positionSnapshots.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.PositionSnapshotDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMPositionSnapshotsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/positionSnapshots/current';

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
 * Positions (current)
 * Gets positions.
 * @param {!string=} opt_pool The liquidity pool in which this position was opened
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.PositionDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMPositionsCurrent = function(opt_pool, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/positions/current';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_pool !== undefined) {
    queryParameters['pool'] = opt_pool;
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
 * RewardTokens (current)
 * Gets rewardTokens.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.RewardTokenDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMRewardTokensCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/rewardTokens/current';

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
 * Swaps (current)
 * Gets swaps.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.SwapDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMSwapsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/swaps/current';

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
 * TickDailySnapshots (current)
 * Gets tickDailySnapshots.
 * @param {!string=} opt_pool liquidity pool this tick belongs to
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.TickDailySnapshotDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMTickDailySnapshotsCurrent = function(opt_pool, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/tickDailySnapshots/current';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_pool !== undefined) {
    queryParameters['pool'] = opt_pool;
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
 * TickHourlySnapshots (current)
 * Gets tickHourlySnapshots.
 * @param {!string=} opt_pool liquidity pool this tick belongs to
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.TickHourlySnapshotDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMTickHourlySnapshotsCurrent = function(opt_pool, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/tickHourlySnapshots/current';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_pool !== undefined) {
    queryParameters['pool'] = opt_pool;
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
 * Ticks (current)
 * Gets ticks.
 * @param {!string=} opt_pool Liquidity pool this tick belongs to
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.TickDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMTicksCurrent = function(opt_pool, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/ticks/current';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_pool !== undefined) {
    queryParameters['pool'] = opt_pool;
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
 * TokenWhiteListSymbols (current)
 * Gets tokenWhiteListSymbols.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.TokenWhiteListSymbolDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/tokenWhiteListSymbols/current';

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
 * TokenWhiteLists (current)
 * Gets tokenWhiteLists.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.TokenWhiteListDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMTokenWhiteListsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/tokenWhiteLists/current';

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
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.TokenDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMTokensCurrent = function(opt_id, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/tokens/current';

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
 * UsageMetricsDailySnapshots (current)
 * Gets usageMetricsDailySnapshots.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.UsageMetricsDailySnapshotDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/usageMetricsDailySnapshots/current';

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
 * UsageMetricsHourlySnapshots (current)
 * Gets usageMetricsHourlySnapshots.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.UsageMetricsHourlySnapshotDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/usageMetricsHourlySnapshots/current';

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
 * Withdraws (current)
 * Gets withdraws.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.UNISWAP_V3_ETHEREUM.WithdrawDTO>>}
 */
API.Client.UNISWAPV3ETHEREUMApi.prototype.uNISWAPV3ETHEREUMWithdrawsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/dapps/uniswap-v3-ethereum/withdraws/current';

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
