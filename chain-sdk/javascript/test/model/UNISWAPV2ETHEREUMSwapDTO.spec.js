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

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.OnChainDappsRestApi);
  }
}(this, function(expect, OnChainDappsRestApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('UNISWAPV2ETHEREUMSwapDTO', function() {
    it('should create an instance of UNISWAPV2ETHEREUMSwapDTO', function() {
      // uncomment below and update the code to test UNISWAPV2ETHEREUMSwapDTO
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be.a(OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO);
    });

    it('should have the property entryTime (base name: "entry_time")', function() {
      // uncomment below and update the code to test the property entryTime
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property recvTime (base name: "recv_time")', function() {
      // uncomment below and update the code to test the property recvTime
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property blockNumber (base name: "block_number")', function() {
      // uncomment below and update the code to test the property blockNumber
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property block (base name: "block_")', function() {
      // uncomment below and update the code to test the property block
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property hash (base name: "hash")', function() {
      // uncomment below and update the code to test the property hash
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property logIndex (base name: "log_index")', function() {
      // uncomment below and update the code to test the property logIndex
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property protocol (base name: "protocol")', function() {
      // uncomment below and update the code to test the property protocol
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property to (base name: "to")', function() {
      // uncomment below and update the code to test the property to
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property from (base name: "from")', function() {
      // uncomment below and update the code to test the property from
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property timestamp (base name: "timestamp")', function() {
      // uncomment below and update the code to test the property timestamp
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property tokenIn (base name: "token_in")', function() {
      // uncomment below and update the code to test the property tokenIn
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property amountIn (base name: "amount_in")', function() {
      // uncomment below and update the code to test the property amountIn
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property amountInUsd (base name: "amount_in_usd")', function() {
      // uncomment below and update the code to test the property amountInUsd
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property tokenOut (base name: "token_out")', function() {
      // uncomment below and update the code to test the property tokenOut
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property amountOut (base name: "amount_out")', function() {
      // uncomment below and update the code to test the property amountOut
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property amountOutUsd (base name: "amount_out_usd")', function() {
      // uncomment below and update the code to test the property amountOutUsd
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property reserveAmounts (base name: "reserve_amounts")', function() {
      // uncomment below and update the code to test the property reserveAmounts
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property pool (base name: "pool")', function() {
      // uncomment below and update the code to test the property pool
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property blockRange (base name: "block_range")', function() {
      // uncomment below and update the code to test the property blockRange
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property poolId (base name: "pool_id")', function() {
      // uncomment below and update the code to test the property poolId
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property transactionId (base name: "transaction_id")', function() {
      // uncomment below and update the code to test the property transactionId
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property evaluatedPrice (base name: "evaluated_price")', function() {
      // uncomment below and update the code to test the property evaluatedPrice
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property evaluatedAmount (base name: "evaluated_amount")', function() {
      // uncomment below and update the code to test the property evaluatedAmount
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property evaluatedAggressor (base name: "evaluated_aggressor")', function() {
      // uncomment below and update the code to test the property evaluatedAggressor
      //var instance = new OnChainDappsRestApi.UNISWAPV2ETHEREUMSwapDTO();
      //expect(instance).to.be();
    });

  });

}));
