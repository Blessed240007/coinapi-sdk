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
    instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMApi();
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

  describe('UNISWAPV3ETHEREUMApi', function() {
    describe('uNISWAPV3ETHEREUMAccountsCurrent', function() {
      it('should call uNISWAPV3ETHEREUMAccountsCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMAccountsCurrent
        //instance.uNISWAPV3ETHEREUMAccountsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMActiveAccountsCurrent', function() {
      it('should call uNISWAPV3ETHEREUMActiveAccountsCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMActiveAccountsCurrent
        //instance.uNISWAPV3ETHEREUMActiveAccountsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMDepositsCurrent', function() {
      it('should call uNISWAPV3ETHEREUMDepositsCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMDepositsCurrent
        //instance.uNISWAPV3ETHEREUMDepositsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMDexAmmProtocolsCurrent', function() {
      it('should call uNISWAPV3ETHEREUMDexAmmProtocolsCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMDexAmmProtocolsCurrent
        //instance.uNISWAPV3ETHEREUMDexAmmProtocolsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent', function() {
      it('should call uNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent
        //instance.uNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent', function() {
      it('should call uNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent
        //instance.uNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMLiquidityPoolFeesCurrent', function() {
      it('should call uNISWAPV3ETHEREUMLiquidityPoolFeesCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMLiquidityPoolFeesCurrent
        //instance.uNISWAPV3ETHEREUMLiquidityPoolFeesCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent', function() {
      it('should call uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent
        //instance.uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMPositionSnapshotsCurrent', function() {
      it('should call uNISWAPV3ETHEREUMPositionSnapshotsCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMPositionSnapshotsCurrent
        //instance.uNISWAPV3ETHEREUMPositionSnapshotsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMPositionsCurrent', function() {
      it('should call uNISWAPV3ETHEREUMPositionsCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMPositionsCurrent
        //instance.uNISWAPV3ETHEREUMPositionsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMRewardTokensCurrent', function() {
      it('should call uNISWAPV3ETHEREUMRewardTokensCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMRewardTokensCurrent
        //instance.uNISWAPV3ETHEREUMRewardTokensCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMSwapsCurrent', function() {
      it('should call uNISWAPV3ETHEREUMSwapsCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMSwapsCurrent
        //instance.uNISWAPV3ETHEREUMSwapsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMTickDailySnapshotsCurrent', function() {
      it('should call uNISWAPV3ETHEREUMTickDailySnapshotsCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMTickDailySnapshotsCurrent
        //instance.uNISWAPV3ETHEREUMTickDailySnapshotsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMTickHourlySnapshotsCurrent', function() {
      it('should call uNISWAPV3ETHEREUMTickHourlySnapshotsCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMTickHourlySnapshotsCurrent
        //instance.uNISWAPV3ETHEREUMTickHourlySnapshotsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMTicksCurrent', function() {
      it('should call uNISWAPV3ETHEREUMTicksCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMTicksCurrent
        //instance.uNISWAPV3ETHEREUMTicksCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent', function() {
      it('should call uNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent
        //instance.uNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMTokenWhiteListsCurrent', function() {
      it('should call uNISWAPV3ETHEREUMTokenWhiteListsCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMTokenWhiteListsCurrent
        //instance.uNISWAPV3ETHEREUMTokenWhiteListsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMTokensCurrent', function() {
      it('should call uNISWAPV3ETHEREUMTokensCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMTokensCurrent
        //instance.uNISWAPV3ETHEREUMTokensCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent', function() {
      it('should call uNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent
        //instance.uNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent', function() {
      it('should call uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent
        //instance.uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('uNISWAPV3ETHEREUMWithdrawsCurrent', function() {
      it('should call uNISWAPV3ETHEREUMWithdrawsCurrent successfully', function(done) {
        //uncomment below and update the code to test uNISWAPV3ETHEREUMWithdrawsCurrent
        //instance.uNISWAPV3ETHEREUMWithdrawsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));
