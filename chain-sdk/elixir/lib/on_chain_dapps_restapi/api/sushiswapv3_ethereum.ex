# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OnChainDapps-RESTAPI.Api.SUSHISWAPV3ETHEREUM do
  @moduledoc """
  API calls for all endpoints tagged `SUSHISWAPV3ETHEREUM`.
  """

  alias OnChainDapps-RESTAPI.Connection
  import OnChainDapps-RESTAPI.RequestBuilder

  @doc """
  LiquidityPools (current)
  Gets liquidityPools.

  ### Parameters

  - `connection` (OnChainDapps-RESTAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:id` (String.t): Smart contract address of the pool.

  ### Returns

  - `{:ok, [%SushiswapV3EthereumLiquidityPoolDto{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec s_ushiswapv3_ethereum_liquidity_pools__current(Tesla.Env.client, keyword()) :: {:ok, list(OnChainDapps-RESTAPI.Model.SushiswapV3EthereumLiquidityPoolDto.t)} | {:error, Tesla.Env.t}
  def s_ushiswapv3_ethereum_liquidity_pools__current(connection, opts \\ []) do
    optional_params = %{
      :id => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/dapps/sushiswap-v3-ethereum/liquidityPools/current")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%OnChainDapps-RESTAPI.Model.SushiswapV3EthereumLiquidityPoolDto{}]}
    ])
  end

  @doc """
  Swaps (current)
  Gets swaps.

  ### Parameters

  - `connection` (OnChainDapps-RESTAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%SushiswapV3EthereumSwapDto{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec s_ushiswapv3_ethereum_swaps__current(Tesla.Env.client, keyword()) :: {:ok, list(OnChainDapps-RESTAPI.Model.SushiswapV3EthereumSwapDto.t)} | {:error, Tesla.Env.t}
  def s_ushiswapv3_ethereum_swaps__current(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/dapps/sushiswap-v3-ethereum/swaps/current")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%OnChainDapps-RESTAPI.Model.SushiswapV3EthereumSwapDto{}]}
    ])
  end

  @doc """
  Tokens (current)
  Gets tokens.

  ### Parameters

  - `connection` (OnChainDapps-RESTAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:id` (String.t): Smart contract address of the token.

  ### Returns

  - `{:ok, [%SushiswapV3EthereumTokenDto{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec s_ushiswapv3_ethereum_tokens__current(Tesla.Env.client, keyword()) :: {:ok, list(OnChainDapps-RESTAPI.Model.SushiswapV3EthereumTokenDto.t)} | {:error, Tesla.Env.t}
  def s_ushiswapv3_ethereum_tokens__current(connection, opts \\ []) do
    optional_params = %{
      :id => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/dapps/sushiswap-v3-ethereum/tokens/current")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%OnChainDapps-RESTAPI.Model.SushiswapV3EthereumTokenDto{}]}
    ])
  end
end
