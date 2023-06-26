# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OnChainDapps-RESTAPI.Model.SushiswapPairDto do
  @moduledoc """
  Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
  """

  @derive [Poison.Encoder]
  defstruct [
    :entry_time,
    :recv_time,
    :block_number,
    :id,
    :factory,
    :name,
    :token_0,
    :token_1,
    :reserve_0,
    :reserve_1,
    :total_supply,
    :reserve_eth,
    :reserve_usd,
    :tracked_reserve_eth,
    :token_0_price,
    :token_1_price,
    :volume_token_0,
    :volume_token_1,
    :volume_usd,
    :untracked_volume_usd,
    :tx_count,
    :liquidity_provider_count,
    :timestamp,
    :block,
    :vid,
    :evaluated_ask
  ]

  @type t :: %__MODULE__{
    :entry_time => DateTime.t | nil,
    :recv_time => DateTime.t | nil,
    :block_number => integer() | nil,
    :id => String.t | nil,
    :factory => String.t | nil,
    :name => String.t | nil,
    :token_0 => String.t | nil,
    :token_1 => String.t | nil,
    :reserve_0 => String.t | nil,
    :reserve_1 => String.t | nil,
    :total_supply => String.t | nil,
    :reserve_eth => String.t | nil,
    :reserve_usd => String.t | nil,
    :tracked_reserve_eth => String.t | nil,
    :token_0_price => String.t | nil,
    :token_1_price => String.t | nil,
    :volume_token_0 => String.t | nil,
    :volume_token_1 => String.t | nil,
    :volume_usd => String.t | nil,
    :untracked_volume_usd => String.t | nil,
    :tx_count => String.t | nil,
    :liquidity_provider_count => String.t | nil,
    :timestamp => String.t | nil,
    :block => String.t | nil,
    :vid => integer() | nil,
    :evaluated_ask => float() | nil
  }
end

defimpl Poison.Decoder, for: OnChainDapps-RESTAPI.Model.SushiswapPairDto do
  def decode(value, _options) do
    value
  end
end

