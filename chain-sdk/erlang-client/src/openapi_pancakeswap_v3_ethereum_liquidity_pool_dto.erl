-module(openapi_pancakeswap_v3_ethereum_liquidity_pool_dto).

-export([encode/1]).

-export_type([openapi_pancakeswap_v3_ethereum_liquidity_pool_dto/0]).

-type openapi_pancakeswap_v3_ethereum_liquidity_pool_dto() ::
    #{ 'entry_time' => openapi_date_time:openapi_date_time(),
       'recv_time' => openapi_date_time:openapi_date_time(),
       'block_number' => integer(),
       'vid' => integer(),
       'block_range' => binary(),
       'id' => binary(),
       'protocol' => binary(),
       'name' => binary(),
       'symbol' => binary(),
       'liquidity_token' => binary(),
       'input_tokens' => list(),
       'reward_tokens' => list(),
       'fees' => list(),
       'is_single_sided' => boolean(),
       'created_timestamp' => binary(),
       'created_block_number' => binary(),
       'tick' => binary(),
       'total_value_locked_usd' => binary(),
       'total_liquidity' => binary(),
       'total_liquidity_usd' => binary(),
       'active_liquidity' => binary(),
       'active_liquidity_usd' => binary(),
       'uncollected_protocol_side_token_amounts' => list(),
       'uncollected_protocol_side_values_usd' => list(),
       'uncollected_supply_side_token_amounts' => list(),
       'uncollected_supply_side_values_usd' => list(),
       'cumulative_supply_side_revenue_usd' => binary(),
       'cumulative_protocol_side_revenue_usd' => binary(),
       'cumulative_total_revenue_usd' => binary(),
       'cumulative_volume_by_token_amount' => list(),
       'cumulative_volume_by_token_usd' => list(),
       'cumulative_volume_usd' => binary(),
       'input_token_balances' => list(),
       'input_token_balances_usd' => list(),
       'input_token_weights' => list(),
       'staked_output_token_amount' => binary(),
       'reward_token_emissions_amount' => list(),
       'reward_token_emissions_usd' => list(),
       'cumulative_deposit_count' => integer(),
       'cumulative_withdraw_count' => integer(),
       'cumulative_swap_count' => integer(),
       'position_count' => integer(),
       'open_position_count' => integer(),
       'closed_position_count' => integer(),
       'last_snapshot_day_id' => integer(),
       'last_snapshot_hour_id' => integer(),
       'last_update_timestamp' => binary(),
       'last_update_block_number' => binary(),
       'evaluated_ask' => float()
     }.

encode(#{ 'entry_time' := EntryTime,
          'recv_time' := RecvTime,
          'block_number' := BlockNumber,
          'vid' := Vid,
          'block_range' := BlockRange,
          'id' := Id,
          'protocol' := Protocol,
          'name' := Name,
          'symbol' := Symbol,
          'liquidity_token' := LiquidityToken,
          'input_tokens' := InputTokens,
          'reward_tokens' := RewardTokens,
          'fees' := Fees,
          'is_single_sided' := IsSingleSided,
          'created_timestamp' := CreatedTimestamp,
          'created_block_number' := CreatedBlockNumber,
          'tick' := Tick,
          'total_value_locked_usd' := TotalValueLockedUsd,
          'total_liquidity' := TotalLiquidity,
          'total_liquidity_usd' := TotalLiquidityUsd,
          'active_liquidity' := ActiveLiquidity,
          'active_liquidity_usd' := ActiveLiquidityUsd,
          'uncollected_protocol_side_token_amounts' := UncollectedProtocolSideTokenAmounts,
          'uncollected_protocol_side_values_usd' := UncollectedProtocolSideValuesUsd,
          'uncollected_supply_side_token_amounts' := UncollectedSupplySideTokenAmounts,
          'uncollected_supply_side_values_usd' := UncollectedSupplySideValuesUsd,
          'cumulative_supply_side_revenue_usd' := CumulativeSupplySideRevenueUsd,
          'cumulative_protocol_side_revenue_usd' := CumulativeProtocolSideRevenueUsd,
          'cumulative_total_revenue_usd' := CumulativeTotalRevenueUsd,
          'cumulative_volume_by_token_amount' := CumulativeVolumeByTokenAmount,
          'cumulative_volume_by_token_usd' := CumulativeVolumeByTokenUsd,
          'cumulative_volume_usd' := CumulativeVolumeUsd,
          'input_token_balances' := InputTokenBalances,
          'input_token_balances_usd' := InputTokenBalancesUsd,
          'input_token_weights' := InputTokenWeights,
          'staked_output_token_amount' := StakedOutputTokenAmount,
          'reward_token_emissions_amount' := RewardTokenEmissionsAmount,
          'reward_token_emissions_usd' := RewardTokenEmissionsUsd,
          'cumulative_deposit_count' := CumulativeDepositCount,
          'cumulative_withdraw_count' := CumulativeWithdrawCount,
          'cumulative_swap_count' := CumulativeSwapCount,
          'position_count' := PositionCount,
          'open_position_count' := OpenPositionCount,
          'closed_position_count' := ClosedPositionCount,
          'last_snapshot_day_id' := LastSnapshotDayId,
          'last_snapshot_hour_id' := LastSnapshotHourId,
          'last_update_timestamp' := LastUpdateTimestamp,
          'last_update_block_number' := LastUpdateBlockNumber,
          'evaluated_ask' := EvaluatedAsk
        }) ->
    #{ 'entry_time' => EntryTime,
       'recv_time' => RecvTime,
       'block_number' => BlockNumber,
       'vid' => Vid,
       'block_range' => BlockRange,
       'id' => Id,
       'protocol' => Protocol,
       'name' => Name,
       'symbol' => Symbol,
       'liquidity_token' => LiquidityToken,
       'input_tokens' => InputTokens,
       'reward_tokens' => RewardTokens,
       'fees' => Fees,
       'is_single_sided' => IsSingleSided,
       'created_timestamp' => CreatedTimestamp,
       'created_block_number' => CreatedBlockNumber,
       'tick' => Tick,
       'total_value_locked_usd' => TotalValueLockedUsd,
       'total_liquidity' => TotalLiquidity,
       'total_liquidity_usd' => TotalLiquidityUsd,
       'active_liquidity' => ActiveLiquidity,
       'active_liquidity_usd' => ActiveLiquidityUsd,
       'uncollected_protocol_side_token_amounts' => UncollectedProtocolSideTokenAmounts,
       'uncollected_protocol_side_values_usd' => UncollectedProtocolSideValuesUsd,
       'uncollected_supply_side_token_amounts' => UncollectedSupplySideTokenAmounts,
       'uncollected_supply_side_values_usd' => UncollectedSupplySideValuesUsd,
       'cumulative_supply_side_revenue_usd' => CumulativeSupplySideRevenueUsd,
       'cumulative_protocol_side_revenue_usd' => CumulativeProtocolSideRevenueUsd,
       'cumulative_total_revenue_usd' => CumulativeTotalRevenueUsd,
       'cumulative_volume_by_token_amount' => CumulativeVolumeByTokenAmount,
       'cumulative_volume_by_token_usd' => CumulativeVolumeByTokenUsd,
       'cumulative_volume_usd' => CumulativeVolumeUsd,
       'input_token_balances' => InputTokenBalances,
       'input_token_balances_usd' => InputTokenBalancesUsd,
       'input_token_weights' => InputTokenWeights,
       'staked_output_token_amount' => StakedOutputTokenAmount,
       'reward_token_emissions_amount' => RewardTokenEmissionsAmount,
       'reward_token_emissions_usd' => RewardTokenEmissionsUsd,
       'cumulative_deposit_count' => CumulativeDepositCount,
       'cumulative_withdraw_count' => CumulativeWithdrawCount,
       'cumulative_swap_count' => CumulativeSwapCount,
       'position_count' => PositionCount,
       'open_position_count' => OpenPositionCount,
       'closed_position_count' => ClosedPositionCount,
       'last_snapshot_day_id' => LastSnapshotDayId,
       'last_snapshot_hour_id' => LastSnapshotHourId,
       'last_update_timestamp' => LastUpdateTimestamp,
       'last_update_block_number' => LastUpdateBlockNumber,
       'evaluated_ask' => EvaluatedAsk
     }.
