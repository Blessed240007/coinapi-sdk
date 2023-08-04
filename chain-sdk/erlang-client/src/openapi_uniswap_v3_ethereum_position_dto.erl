-module(openapi_uniswap_v3_ethereum_position_dto).

-export([encode/1]).

-export_type([openapi_uniswap_v3_ethereum_position_dto/0]).

-type openapi_uniswap_v3_ethereum_position_dto() ::
    #{ 'entry_time' => openapi_date_time:openapi_date_time(),
       'recv_time' => openapi_date_time:openapi_date_time(),
       'block_number' => integer(),
       'vid' => integer(),
       'id' => binary(),
       'account' => binary(),
       'pool' => binary(),
       'hash_opened' => binary(),
       'hash_closed' => binary(),
       'block_number_opened' => binary(),
       'timestamp_opened' => binary(),
       'block_number_closed' => binary(),
       'timestamp_closed' => binary(),
       'tick_lower' => binary(),
       'tick_upper' => binary(),
       'liquidity_token' => binary(),
       'liquidity_token_type' => binary(),
       'liquidity' => binary(),
       'liquidity_usd' => binary(),
       'cumulative_deposit_token_amounts' => list(),
       'cumulative_deposit_usd' => binary(),
       'cumulative_withdraw_token_amounts' => list(),
       'cumulative_withdraw_usd' => binary(),
       'cumulative_reward_usd' => list(),
       'deposit_count' => integer(),
       'withdraw_count' => integer()
     }.

encode(#{ 'entry_time' := EntryTime,
          'recv_time' := RecvTime,
          'block_number' := BlockNumber,
          'vid' := Vid,
          'id' := Id,
          'account' := Account,
          'pool' := Pool,
          'hash_opened' := HashOpened,
          'hash_closed' := HashClosed,
          'block_number_opened' := BlockNumberOpened,
          'timestamp_opened' := TimestampOpened,
          'block_number_closed' := BlockNumberClosed,
          'timestamp_closed' := TimestampClosed,
          'tick_lower' := TickLower,
          'tick_upper' := TickUpper,
          'liquidity_token' := LiquidityToken,
          'liquidity_token_type' := LiquidityTokenType,
          'liquidity' := Liquidity,
          'liquidity_usd' := LiquidityUsd,
          'cumulative_deposit_token_amounts' := CumulativeDepositTokenAmounts,
          'cumulative_deposit_usd' := CumulativeDepositUsd,
          'cumulative_withdraw_token_amounts' := CumulativeWithdrawTokenAmounts,
          'cumulative_withdraw_usd' := CumulativeWithdrawUsd,
          'cumulative_reward_usd' := CumulativeRewardUsd,
          'deposit_count' := DepositCount,
          'withdraw_count' := WithdrawCount
        }) ->
    #{ 'entry_time' => EntryTime,
       'recv_time' => RecvTime,
       'block_number' => BlockNumber,
       'vid' => Vid,
       'id' => Id,
       'account' => Account,
       'pool' => Pool,
       'hash_opened' => HashOpened,
       'hash_closed' => HashClosed,
       'block_number_opened' => BlockNumberOpened,
       'timestamp_opened' => TimestampOpened,
       'block_number_closed' => BlockNumberClosed,
       'timestamp_closed' => TimestampClosed,
       'tick_lower' => TickLower,
       'tick_upper' => TickUpper,
       'liquidity_token' => LiquidityToken,
       'liquidity_token_type' => LiquidityTokenType,
       'liquidity' => Liquidity,
       'liquidity_usd' => LiquidityUsd,
       'cumulative_deposit_token_amounts' => CumulativeDepositTokenAmounts,
       'cumulative_deposit_usd' => CumulativeDepositUsd,
       'cumulative_withdraw_token_amounts' => CumulativeWithdrawTokenAmounts,
       'cumulative_withdraw_usd' => CumulativeWithdrawUsd,
       'cumulative_reward_usd' => CumulativeRewardUsd,
       'deposit_count' => DepositCount,
       'withdraw_count' => WithdrawCount
     }.
