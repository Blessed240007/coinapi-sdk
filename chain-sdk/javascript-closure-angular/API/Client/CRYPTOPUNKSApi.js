/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.CRYPTOPUNKSApi.
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

goog.provide('API.Client.CRYPTOPUNKSApi');

goog.require('API.Client.CRYPTOPUNKS.BidDTO');
goog.require('API.Client.CRYPTOPUNKS.CollectionDTO');
goog.require('API.Client.CRYPTOPUNKS.CollectionDailySnapshotDTO');
goog.require('API.Client.CRYPTOPUNKS.DataSourcesDTO');
goog.require('API.Client.CRYPTOPUNKS.ItemDTO');
goog.require('API.Client.CRYPTOPUNKS.MarketPlaceDTO');
goog.require('API.Client.CRYPTOPUNKS.MarketplaceDailySnapshotDTO');
goog.require('API.Client.CRYPTOPUNKS.TradeDTO');
goog.require('API.Client.CRYPTOPUNKS.UserDTO');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.CRYPTOPUNKSApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('CRYPTOPUNKSApiBasePath') ?
                   /** @type {!string} */ ($injector.get('CRYPTOPUNKSApiBasePath')) :
                   'https://onchain.coinapi.io';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('CRYPTOPUNKSApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('CRYPTOPUNKSApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.CRYPTOPUNKSApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * Bids (current)
 * Gets bids.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.BidDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSBidsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/bids/current';

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
 * CollectionDailySnapshots (current)
 * Gets collectionDailySnapshots.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.CollectionDailySnapshotDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSCollectionDailySnapshotsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/collectionDailySnapshots/current';

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
 * Collections (current)
 * Gets collections.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.CollectionDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSCollectionsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/collections/current';

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
 * DataSources (current)
 * Gets dataSources.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.DataSourcesDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSDataSourcesCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/dataSources/current';

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
 * Bids (historical)
 * Gets bids.
 * @param {!number=} opt_startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * @param {!number=} opt_endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * @param {!Date=} opt_startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * @param {!Date=} opt_endDate The end date of timeframe.
 * @param {!string=} opt_id 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.BidDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSGetBidsHistorical = function(opt_startBlock, opt_endBlock, opt_startDate, opt_endDate, opt_id, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/bids/historical';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_startBlock !== undefined) {
    queryParameters['startBlock'] = opt_startBlock;
  }

  if (opt_endBlock !== undefined) {
    queryParameters['endBlock'] = opt_endBlock;
  }

  if (opt_startDate !== undefined) {
    queryParameters['startDate'] = opt_startDate;
  }

  if (opt_endDate !== undefined) {
    queryParameters['endDate'] = opt_endDate;
  }

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
 * CollectionDailySnapshots (historical)
 * Gets collectionDailySnapshots.
 * @param {!number=} opt_startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * @param {!number=} opt_endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * @param {!Date=} opt_startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * @param {!Date=} opt_endDate The end date of timeframe.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.CollectionDailySnapshotDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSGetCollectionDailySnapshotsHistorical = function(opt_startBlock, opt_endBlock, opt_startDate, opt_endDate, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/collectionDailySnapshots/historical';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_startBlock !== undefined) {
    queryParameters['startBlock'] = opt_startBlock;
  }

  if (opt_endBlock !== undefined) {
    queryParameters['endBlock'] = opt_endBlock;
  }

  if (opt_startDate !== undefined) {
    queryParameters['startDate'] = opt_startDate;
  }

  if (opt_endDate !== undefined) {
    queryParameters['endDate'] = opt_endDate;
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
 * Collections (historical)
 * Gets collections.
 * @param {!number=} opt_startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * @param {!number=} opt_endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * @param {!Date=} opt_startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * @param {!Date=} opt_endDate The end date of timeframe.
 * @param {!string=} opt_id 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.CollectionDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSGetCollectionsHistorical = function(opt_startBlock, opt_endBlock, opt_startDate, opt_endDate, opt_id, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/collections/historical';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_startBlock !== undefined) {
    queryParameters['startBlock'] = opt_startBlock;
  }

  if (opt_endBlock !== undefined) {
    queryParameters['endBlock'] = opt_endBlock;
  }

  if (opt_startDate !== undefined) {
    queryParameters['startDate'] = opt_startDate;
  }

  if (opt_endDate !== undefined) {
    queryParameters['endDate'] = opt_endDate;
  }

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
 * DataSources (historical)
 * Gets dataSources.
 * @param {!number=} opt_startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * @param {!number=} opt_endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * @param {!Date=} opt_startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * @param {!Date=} opt_endDate The end date of timeframe.
 * @param {!string=} opt_id 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.DataSourcesDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSGetDataSourcesHistorical = function(opt_startBlock, opt_endBlock, opt_startDate, opt_endDate, opt_id, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/dataSources/historical';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_startBlock !== undefined) {
    queryParameters['startBlock'] = opt_startBlock;
  }

  if (opt_endBlock !== undefined) {
    queryParameters['endBlock'] = opt_endBlock;
  }

  if (opt_startDate !== undefined) {
    queryParameters['startDate'] = opt_startDate;
  }

  if (opt_endDate !== undefined) {
    queryParameters['endDate'] = opt_endDate;
  }

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
 * Items (historical)
 * Gets items.
 * @param {!number=} opt_startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * @param {!number=} opt_endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * @param {!Date=} opt_startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * @param {!Date=} opt_endDate The end date of timeframe.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.ItemDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSGetItemsHistorical = function(opt_startBlock, opt_endBlock, opt_startDate, opt_endDate, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/items/historical';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_startBlock !== undefined) {
    queryParameters['startBlock'] = opt_startBlock;
  }

  if (opt_endBlock !== undefined) {
    queryParameters['endBlock'] = opt_endBlock;
  }

  if (opt_startDate !== undefined) {
    queryParameters['startDate'] = opt_startDate;
  }

  if (opt_endDate !== undefined) {
    queryParameters['endDate'] = opt_endDate;
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
 * MarketPlaces (historical)
 * Gets marketPlaces.
 * @param {!number=} opt_startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * @param {!number=} opt_endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * @param {!Date=} opt_startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * @param {!Date=} opt_endDate The end date of timeframe.
 * @param {!string=} opt_id 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.MarketPlaceDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSGetMarketPlacesHistorical = function(opt_startBlock, opt_endBlock, opt_startDate, opt_endDate, opt_id, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/marketPlaces/historical';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_startBlock !== undefined) {
    queryParameters['startBlock'] = opt_startBlock;
  }

  if (opt_endBlock !== undefined) {
    queryParameters['endBlock'] = opt_endBlock;
  }

  if (opt_startDate !== undefined) {
    queryParameters['startDate'] = opt_startDate;
  }

  if (opt_endDate !== undefined) {
    queryParameters['endDate'] = opt_endDate;
  }

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
 * MarketplaceDailySnapshots (historical)
 * Gets marketplaceDailySnapshots.
 * @param {!number=} opt_startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * @param {!number=} opt_endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * @param {!Date=} opt_startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * @param {!Date=} opt_endDate The end date of timeframe.
 * @param {!string=} opt_id 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.MarketplaceDailySnapshotDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical = function(opt_startBlock, opt_endBlock, opt_startDate, opt_endDate, opt_id, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/marketplaceDailySnapshots/historical';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_startBlock !== undefined) {
    queryParameters['startBlock'] = opt_startBlock;
  }

  if (opt_endBlock !== undefined) {
    queryParameters['endBlock'] = opt_endBlock;
  }

  if (opt_startDate !== undefined) {
    queryParameters['startDate'] = opt_startDate;
  }

  if (opt_endDate !== undefined) {
    queryParameters['endDate'] = opt_endDate;
  }

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
 * Trades (historical)
 * Gets trades.
 * @param {!number=} opt_startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * @param {!number=} opt_endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * @param {!Date=} opt_startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * @param {!Date=} opt_endDate The end date of timeframe.
 * @param {!string=} opt_id 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.TradeDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSGetTradesHistorical = function(opt_startBlock, opt_endBlock, opt_startDate, opt_endDate, opt_id, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/trades/historical';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_startBlock !== undefined) {
    queryParameters['startBlock'] = opt_startBlock;
  }

  if (opt_endBlock !== undefined) {
    queryParameters['endBlock'] = opt_endBlock;
  }

  if (opt_startDate !== undefined) {
    queryParameters['startDate'] = opt_startDate;
  }

  if (opt_endDate !== undefined) {
    queryParameters['endDate'] = opt_endDate;
  }

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
 * Users (historical)
 * Gets users.
 * @param {!number=} opt_startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * @param {!number=} opt_endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * @param {!Date=} opt_startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * @param {!Date=} opt_endDate The end date of timeframe.
 * @param {!string=} opt_id 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.UserDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSGetUsersHistorical = function(opt_startBlock, opt_endBlock, opt_startDate, opt_endDate, opt_id, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/users/historical';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_startBlock !== undefined) {
    queryParameters['startBlock'] = opt_startBlock;
  }

  if (opt_endBlock !== undefined) {
    queryParameters['endBlock'] = opt_endBlock;
  }

  if (opt_startDate !== undefined) {
    queryParameters['startDate'] = opt_startDate;
  }

  if (opt_endDate !== undefined) {
    queryParameters['endDate'] = opt_endDate;
  }

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
 * Items (current)
 * Gets items.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.ItemDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSItemsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/items/current';

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
 * MarketPlaces (current)
 * Gets marketPlaces.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.MarketPlaceDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSMarketPlacesCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/marketPlaces/current';

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
 * MarketplaceDailySnapshots (current)
 * Gets marketplaceDailySnapshots.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.MarketplaceDailySnapshotDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSMarketplaceDailySnapshotsCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/marketplaceDailySnapshots/current';

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
 * Trades (current)
 * Gets trades.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.TradeDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSTradesCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/trades/current';

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
 * Users (current)
 * Gets users.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.CRYPTOPUNKS.UserDTO>>}
 */
API.Client.CRYPTOPUNKSApi.prototype.cRYPTOPUNKSUsersCurrent = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/dapps/cryptopunks/users/current';

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
