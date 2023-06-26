# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OnChainDapps-RESTAPI.Model.UniswapV3FactoryDto do
  @moduledoc """
  The Uniswap Factory entity is responsible for storing aggregate information across all Uniswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.
  """

  @derive [Poison.Encoder]
  defstruct [
    :entry_time,
    :recv_time,
    :block_number,
    :id,
    :pool_count,
    :tx_count,
    :total_volume_usd,
    :total_volume_eth,
    :total_fees_usd,
    :total_fees_eth,
    :untracked_volume_usd,
    :total_value_locked_usd,
    :total_value_locked_eth,
    :total_value_locked_usd_untracked,
    :total_value_locked_eth_untracked,
    :owner,
    :vid
  ]

  @type t :: %__MODULE__{
    :entry_time => DateTime.t | nil,
    :recv_time => DateTime.t | nil,
    :block_number => integer() | nil,
    :id => String.t | nil,
    :pool_count => String.t | nil,
    :tx_count => String.t | nil,
    :total_volume_usd => String.t | nil,
    :total_volume_eth => String.t | nil,
    :total_fees_usd => String.t | nil,
    :total_fees_eth => String.t | nil,
    :untracked_volume_usd => String.t | nil,
    :total_value_locked_usd => String.t | nil,
    :total_value_locked_eth => String.t | nil,
    :total_value_locked_usd_untracked => String.t | nil,
    :total_value_locked_eth_untracked => String.t | nil,
    :owner => String.t | nil,
    :vid => integer() | nil
  }
end

defimpl Poison.Decoder, for: OnChainDapps-RESTAPI.Model.UniswapV3FactoryDto do
  def decode(value, _options) do
    value
  end
end

