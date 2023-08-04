# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OnChainDapps-RESTAPI.Model.UniswapV3EthereumUsageMetricsHourlySnapshotDto do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :entry_time,
    :recv_time,
    :block_number,
    :id,
    :hour,
    :protocol,
    :hourly_active_users,
    :cumulative_unique_users,
    :hourly_transaction_count,
    :hourly_deposit_count,
    :hourly_withdraw_count,
    :hourly_swap_count,
    :timestamp
  ]

  @type t :: %__MODULE__{
    :entry_time => DateTime.t | nil,
    :recv_time => DateTime.t | nil,
    :block_number => integer() | nil,
    :id => String.t | nil,
    :hour => integer() | nil,
    :protocol => String.t | nil,
    :hourly_active_users => integer() | nil,
    :cumulative_unique_users => integer() | nil,
    :hourly_transaction_count => integer() | nil,
    :hourly_deposit_count => integer() | nil,
    :hourly_withdraw_count => integer() | nil,
    :hourly_swap_count => integer() | nil,
    :timestamp => String.t | nil
  }
end

defimpl Poison.Decoder, for: OnChainDapps-RESTAPI.Model.UniswapV3EthereumUsageMetricsHourlySnapshotDto do
  def decode(value, _options) do
    value
  end
end

