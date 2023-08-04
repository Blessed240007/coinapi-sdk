# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OnChainDapps-RESTAPI.Model.UniswapV3EthereumUsageMetricsDailySnapshotDto do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :entry_time,
    :recv_time,
    :block_number,
    :id,
    :day,
    :protocol,
    :daily_active_users,
    :cumulative_unique_users,
    :daily_transaction_count,
    :total_pool_count,
    :daily_deposit_count,
    :daily_withdraw_count,
    :daily_swap_count,
    :timestamp
  ]

  @type t :: %__MODULE__{
    :entry_time => DateTime.t | nil,
    :recv_time => DateTime.t | nil,
    :block_number => integer() | nil,
    :id => String.t | nil,
    :day => integer() | nil,
    :protocol => String.t | nil,
    :daily_active_users => integer() | nil,
    :cumulative_unique_users => integer() | nil,
    :daily_transaction_count => integer() | nil,
    :total_pool_count => integer() | nil,
    :daily_deposit_count => integer() | nil,
    :daily_withdraw_count => integer() | nil,
    :daily_swap_count => integer() | nil,
    :timestamp => String.t | nil
  }
end

defimpl Poison.Decoder, for: OnChainDapps-RESTAPI.Model.UniswapV3EthereumUsageMetricsDailySnapshotDto do
  def decode(value, _options) do
    value
  end
end

