# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OnChainDapps-RESTAPI.Model.CurveLpTokenDto do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :entry_time,
    :recv_time,
    :block_number,
    :id,
    :address,
    :decimals,
    :name,
    :symbol,
    :gauge,
    :pool,
    :vid
  ]

  @type t :: %__MODULE__{
    :entry_time => DateTime.t | nil,
    :recv_time => DateTime.t | nil,
    :block_number => integer() | nil,
    :id => String.t | nil,
    :address => String.t | nil,
    :decimals => String.t | nil,
    :name => String.t | nil,
    :symbol => String.t | nil,
    :gauge => String.t | nil,
    :pool => String.t | nil,
    :vid => integer() | nil
  }
end

defimpl Poison.Decoder, for: OnChainDapps-RESTAPI.Model.CurveLpTokenDto do
  def decode(value, _options) do
    value
  end
end

