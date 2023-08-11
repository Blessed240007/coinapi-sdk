# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OnChainDapps-RESTAPI.Model.UniswapV2EthereumSwapDto do
  @moduledoc """
  Trade (swap) event which occurred in a pool.
  """

  @derive [Poison.Encoder]
  defstruct [
    :entry_time,
    :recv_time,
    :block_number,
    :block_,
    :id,
    :hash,
    :log_index,
    :protocol,
    :to,
    :from,
    :timestamp,
    :token_in,
    :amount_in,
    :amount_in_usd,
    :token_out,
    :amount_out,
    :amount_out_usd,
    :reserve_amounts,
    :pool,
    :block_range,
    :pool_id,
    :transaction_id,
    :evaluated_price,
    :evaluated_amount,
    :evaluated_aggressor
  ]

  @type t :: %__MODULE__{
    :entry_time => DateTime.t | nil,
    :recv_time => DateTime.t | nil,
    :block_number => integer() | nil,
    :block_ => integer() | nil,
    :id => String.t | nil,
    :hash => String.t | nil,
    :log_index => integer() | nil,
    :protocol => String.t | nil,
    :to => String.t | nil,
    :from => String.t | nil,
    :timestamp => String.t | nil,
    :token_in => String.t | nil,
    :amount_in => String.t | nil,
    :amount_in_usd => String.t | nil,
    :token_out => String.t | nil,
    :amount_out => String.t | nil,
    :amount_out_usd => String.t | nil,
    :reserve_amounts => [String.t] | nil,
    :pool => String.t | nil,
    :block_range => String.t | nil,
    :pool_id => String.t | nil,
    :transaction_id => String.t | nil,
    :evaluated_price => float() | nil,
    :evaluated_amount => float() | nil,
    :evaluated_aggressor => OnChainDapps-RESTAPI.Model.TransactionsETradeAggressiveSide.t | nil
  }
end

defimpl Poison.Decoder, for: OnChainDapps-RESTAPI.Model.UniswapV2EthereumSwapDto do
  import OnChainDapps-RESTAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:evaluated_aggressor, :struct, OnChainDapps-RESTAPI.Model.TransactionsETradeAggressiveSide, options)
  end
end

