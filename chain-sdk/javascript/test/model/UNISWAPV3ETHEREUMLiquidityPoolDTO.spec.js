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
    instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
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

  describe('UNISWAPV3ETHEREUMLiquidityPoolDTO', function() {
    it('should create an instance of UNISWAPV3ETHEREUMLiquidityPoolDTO', function() {
      // uncomment below and update the code to test UNISWAPV3ETHEREUMLiquidityPoolDTO
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be.a(OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO);
    });

    it('should have the property entryTime (base name: "entry_time")', function() {
      // uncomment below and update the code to test the property entryTime
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property recvTime (base name: "recv_time")', function() {
      // uncomment below and update the code to test the property recvTime
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property blockNumber (base name: "block_number")', function() {
      // uncomment below and update the code to test the property blockNumber
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property vid (base name: "vid")', function() {
      // uncomment below and update the code to test the property vid
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property blockRange (base name: "block_range")', function() {
      // uncomment below and update the code to test the property blockRange
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property protocol (base name: "protocol")', function() {
      // uncomment below and update the code to test the property protocol
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property symbol (base name: "symbol")', function() {
      // uncomment below and update the code to test the property symbol
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property liquidityToken (base name: "liquidity_token")', function() {
      // uncomment below and update the code to test the property liquidityToken
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property inputTokens (base name: "input_tokens")', function() {
      // uncomment below and update the code to test the property inputTokens
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property rewardTokens (base name: "reward_tokens")', function() {
      // uncomment below and update the code to test the property rewardTokens
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property fees (base name: "fees")', function() {
      // uncomment below and update the code to test the property fees
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property isSingleSided (base name: "is_single_sided")', function() {
      // uncomment below and update the code to test the property isSingleSided
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property createdTimestamp (base name: "created_timestamp")', function() {
      // uncomment below and update the code to test the property createdTimestamp
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property createdBlockNumber (base name: "created_block_number")', function() {
      // uncomment below and update the code to test the property createdBlockNumber
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property tick (base name: "tick")', function() {
      // uncomment below and update the code to test the property tick
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property totalValueLockedUsd (base name: "total_value_locked_usd")', function() {
      // uncomment below and update the code to test the property totalValueLockedUsd
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property totalLiquidity (base name: "total_liquidity")', function() {
      // uncomment below and update the code to test the property totalLiquidity
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property totalLiquidityUsd (base name: "total_liquidity_usd")', function() {
      // uncomment below and update the code to test the property totalLiquidityUsd
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property activeLiquidity (base name: "active_liquidity")', function() {
      // uncomment below and update the code to test the property activeLiquidity
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property activeLiquidityUsd (base name: "active_liquidity_usd")', function() {
      // uncomment below and update the code to test the property activeLiquidityUsd
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property uncollectedProtocolSideTokenAmounts (base name: "uncollected_protocol_side_token_amounts")', function() {
      // uncomment below and update the code to test the property uncollectedProtocolSideTokenAmounts
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property uncollectedProtocolSideValuesUsd (base name: "uncollected_protocol_side_values_usd")', function() {
      // uncomment below and update the code to test the property uncollectedProtocolSideValuesUsd
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property uncollectedSupplySideTokenAmounts (base name: "uncollected_supply_side_token_amounts")', function() {
      // uncomment below and update the code to test the property uncollectedSupplySideTokenAmounts
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property uncollectedSupplySideValuesUsd (base name: "uncollected_supply_side_values_usd")', function() {
      // uncomment below and update the code to test the property uncollectedSupplySideValuesUsd
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property cumulativeSupplySideRevenueUsd (base name: "cumulative_supply_side_revenue_usd")', function() {
      // uncomment below and update the code to test the property cumulativeSupplySideRevenueUsd
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property cumulativeProtocolSideRevenueUsd (base name: "cumulative_protocol_side_revenue_usd")', function() {
      // uncomment below and update the code to test the property cumulativeProtocolSideRevenueUsd
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property cumulativeTotalRevenueUsd (base name: "cumulative_total_revenue_usd")', function() {
      // uncomment below and update the code to test the property cumulativeTotalRevenueUsd
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property cumulativeVolumeByTokenAmount (base name: "cumulative_volume_by_token_amount")', function() {
      // uncomment below and update the code to test the property cumulativeVolumeByTokenAmount
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property cumulativeVolumeByTokenUsd (base name: "cumulative_volume_by_token_usd")', function() {
      // uncomment below and update the code to test the property cumulativeVolumeByTokenUsd
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property cumulativeVolumeUsd (base name: "cumulative_volume_usd")', function() {
      // uncomment below and update the code to test the property cumulativeVolumeUsd
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property inputTokenBalances (base name: "input_token_balances")', function() {
      // uncomment below and update the code to test the property inputTokenBalances
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property inputTokenBalancesUsd (base name: "input_token_balances_usd")', function() {
      // uncomment below and update the code to test the property inputTokenBalancesUsd
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property inputTokenWeights (base name: "input_token_weights")', function() {
      // uncomment below and update the code to test the property inputTokenWeights
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property stakedOutputTokenAmount (base name: "staked_output_token_amount")', function() {
      // uncomment below and update the code to test the property stakedOutputTokenAmount
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property rewardTokenEmissionsAmount (base name: "reward_token_emissions_amount")', function() {
      // uncomment below and update the code to test the property rewardTokenEmissionsAmount
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property rewardTokenEmissionsUsd (base name: "reward_token_emissions_usd")', function() {
      // uncomment below and update the code to test the property rewardTokenEmissionsUsd
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property cumulativeDepositCount (base name: "cumulative_deposit_count")', function() {
      // uncomment below and update the code to test the property cumulativeDepositCount
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property cumulativeWithdrawCount (base name: "cumulative_withdraw_count")', function() {
      // uncomment below and update the code to test the property cumulativeWithdrawCount
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property cumulativeSwapCount (base name: "cumulative_swap_count")', function() {
      // uncomment below and update the code to test the property cumulativeSwapCount
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property positionCount (base name: "position_count")', function() {
      // uncomment below and update the code to test the property positionCount
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property openPositionCount (base name: "open_position_count")', function() {
      // uncomment below and update the code to test the property openPositionCount
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property closedPositionCount (base name: "closed_position_count")', function() {
      // uncomment below and update the code to test the property closedPositionCount
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property lastSnapshotDayId (base name: "last_snapshot_day_id")', function() {
      // uncomment below and update the code to test the property lastSnapshotDayId
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property lastSnapshotHourId (base name: "last_snapshot_hour_id")', function() {
      // uncomment below and update the code to test the property lastSnapshotHourId
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property lastUpdateTimestamp (base name: "last_update_timestamp")', function() {
      // uncomment below and update the code to test the property lastUpdateTimestamp
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property lastUpdateBlockNumber (base name: "last_update_block_number")', function() {
      // uncomment below and update the code to test the property lastUpdateBlockNumber
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

    it('should have the property evaluatedAsk (base name: "evaluated_ask")', function() {
      // uncomment below and update the code to test the property evaluatedAsk
      //var instance = new OnChainDappsRestApi.UNISWAPV3ETHEREUMLiquidityPoolDTO();
      //expect(instance).to.be();
    });

  });

}));
