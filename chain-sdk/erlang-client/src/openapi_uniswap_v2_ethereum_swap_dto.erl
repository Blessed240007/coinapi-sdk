-module(openapi_uniswap_v2_ethereum_swap_dto).

-export([encode/1]).

-export_type([openapi_uniswap_v2_ethereum_swap_dto/0]).

-type openapi_uniswap_v2_ethereum_swap_dto() ::
    #{ 'entry_time' => openapi_date_time:openapi_date_time(),
       'recv_time' => openapi_date_time:openapi_date_time(),
       'block_number' => integer(),
       'block_' => integer(),
       'id' => binary(),
       'hash' => binary(),
       'log_index' => integer(),
       'protocol' => binary(),
       'to' => binary(),
       'from' => binary(),
       'timestamp' => binary(),
       'token_in' => binary(),
       'amount_in' => binary(),
       'amount_in_usd' => binary(),
       'token_out' => binary(),
       'amount_out' => binary(),
       'amount_out_usd' => binary(),
       'reserve_amounts' => list(),
       'pool' => binary(),
       'block_range' => binary(),
       'pool_id' => binary(),
       'transaction_id' => binary(),
       'evaluated_price' => float(),
       'evaluated_amount' => float(),
       'evaluated_aggressor' => openapi_transactions_e_trade_aggressive_side:openapi_transactions_e_trade_aggressive_side()
     }.

encode(#{ 'entry_time' := EntryTime,
          'recv_time' := RecvTime,
          'block_number' := BlockNumber,
          'block_' := Block,
          'id' := Id,
          'hash' := Hash,
          'log_index' := LogIndex,
          'protocol' := Protocol,
          'to' := To,
          'from' := From,
          'timestamp' := Timestamp,
          'token_in' := TokenIn,
          'amount_in' := AmountIn,
          'amount_in_usd' := AmountInUsd,
          'token_out' := TokenOut,
          'amount_out' := AmountOut,
          'amount_out_usd' := AmountOutUsd,
          'reserve_amounts' := ReserveAmounts,
          'pool' := Pool,
          'block_range' := BlockRange,
          'pool_id' := PoolId,
          'transaction_id' := TransactionId,
          'evaluated_price' := EvaluatedPrice,
          'evaluated_amount' := EvaluatedAmount,
          'evaluated_aggressor' := EvaluatedAggressor
        }) ->
    #{ 'entry_time' => EntryTime,
       'recv_time' => RecvTime,
       'block_number' => BlockNumber,
       'block_' => Block,
       'id' => Id,
       'hash' => Hash,
       'log_index' => LogIndex,
       'protocol' => Protocol,
       'to' => To,
       'from' => From,
       'timestamp' => Timestamp,
       'token_in' => TokenIn,
       'amount_in' => AmountIn,
       'amount_in_usd' => AmountInUsd,
       'token_out' => TokenOut,
       'amount_out' => AmountOut,
       'amount_out_usd' => AmountOutUsd,
       'reserve_amounts' => ReserveAmounts,
       'pool' => Pool,
       'block_range' => BlockRange,
       'pool_id' => PoolId,
       'transaction_id' => TransactionId,
       'evaluated_price' => EvaluatedPrice,
       'evaluated_amount' => EvaluatedAmount,
       'evaluated_aggressor' => EvaluatedAggressor
     }.
