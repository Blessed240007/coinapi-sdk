-module(openapi_uniswap_v2_ethereum_token_dto).

-include("openapi.hrl").

-export([openapi_uniswap_v2_ethereum_token_dto/0]).

-export([openapi_uniswap_v2_ethereum_token_dto/1]).

-export_type([openapi_uniswap_v2_ethereum_token_dto/0]).

-type openapi_uniswap_v2_ethereum_token_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', integer() }
  | {'vid', integer() }
  | {'id', binary() }
  | {'name', binary() }
  | {'symbol', binary() }
  | {'decimals', integer() }
  | {'last_price_usd', binary() }
  | {'last_price_block_number', binary() }
  | {'total_supply', binary() }
  | {'total_value_locked_usd', binary() }
  | {'large_price_change_buffer', integer() }
  | {'large_tvl_impact_buffer', integer() }
  | {'token_symbol', binary() }
  ].


openapi_uniswap_v2_ethereum_token_dto() ->
    openapi_uniswap_v2_ethereum_token_dto([]).

openapi_uniswap_v2_ethereum_token_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', integer() }
            , {'vid', integer() }
            , {'id', binary() }
            , {'name', binary() }
            , {'symbol', binary() }
            , {'decimals', integer() }
            , {'last_price_usd', binary() }
            , {'last_price_block_number', binary() }
            , {'total_supply', binary() }
            , {'total_value_locked_usd', binary() }
            , {'large_price_change_buffer', integer() }
            , {'large_tvl_impact_buffer', integer() }
            , {'token_symbol', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

