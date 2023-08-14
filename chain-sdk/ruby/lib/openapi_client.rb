=begin
#On Chain Dapps - REST API

# This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/cryptopunks_bid_dto'
require 'openapi_client/models/cryptopunks_collection_dto'
require 'openapi_client/models/cryptopunks_collection_daily_snapshot_dto'
require 'openapi_client/models/cryptopunks_data_sources_dto'
require 'openapi_client/models/cryptopunks_item_dto'
require 'openapi_client/models/cryptopunks_market_place_dto'
require 'openapi_client/models/cryptopunks_marketplace_daily_snapshot_dto'
require 'openapi_client/models/cryptopunks_trade_dto'
require 'openapi_client/models/cryptopunks_user_dto'
require 'openapi_client/models/curvefinanceethereum_liquidity_pool_dto'
require 'openapi_client/models/curvefinanceethereum_swap_dto'
require 'openapi_client/models/curvefinanceethereum_token_dto'
require 'openapi_client/models/pancakeswapv3_ethereum_liquidity_pool_dto'
require 'openapi_client/models/pancakeswapv3_ethereum_swap_dto'
require 'openapi_client/models/pancakeswapv3_ethereum_token_dto'
require 'openapi_client/models/sushiswapv3_ethereum_liquidity_pool_dto'
require 'openapi_client/models/sushiswapv3_ethereum_swap_dto'
require 'openapi_client/models/sushiswapv3_ethereum_token_dto'
require 'openapi_client/models/transactions_e_trade_aggressive_side'
require 'openapi_client/models/uniswapv2_ethereum_liquidity_pool_dto'
require 'openapi_client/models/uniswapv2_ethereum_swap_dto'
require 'openapi_client/models/uniswapv2_ethereum_token_dto'
require 'openapi_client/models/uniswapv3_ethereum_account_dto'
require 'openapi_client/models/uniswapv3_ethereum_active_account_dto'
require 'openapi_client/models/uniswapv3_ethereum_deposit_dto'
require 'openapi_client/models/uniswapv3_ethereum_dex_amm_protocol_dto'
require 'openapi_client/models/uniswapv3_ethereum_financials_daily_snapshot_dto'
require 'openapi_client/models/uniswapv3_ethereum_liquidity_pool_amount_dto'
require 'openapi_client/models/uniswapv3_ethereum_liquidity_pool_dto'
require 'openapi_client/models/uniswapv3_ethereum_liquidity_pool_daily_snapshot_dto'
require 'openapi_client/models/uniswapv3_ethereum_liquidity_pool_fee_dto'
require 'openapi_client/models/uniswapv3_ethereum_liquidity_pool_hourly_snapshot_dto'
require 'openapi_client/models/uniswapv3_ethereum_position_dto'
require 'openapi_client/models/uniswapv3_ethereum_position_snapshot_dto'
require 'openapi_client/models/uniswapv3_ethereum_reward_token_dto'
require 'openapi_client/models/uniswapv3_ethereum_swap_dto'
require 'openapi_client/models/uniswapv3_ethereum_tick_dto'
require 'openapi_client/models/uniswapv3_ethereum_tick_daily_snapshot_dto'
require 'openapi_client/models/uniswapv3_ethereum_tick_hourly_snapshot_dto'
require 'openapi_client/models/uniswapv3_ethereum_token_dto'
require 'openapi_client/models/uniswapv3_ethereum_token_white_list_dto'
require 'openapi_client/models/uniswapv3_ethereum_token_white_list_symbol_dto'
require 'openapi_client/models/uniswapv3_ethereum_usage_metrics_daily_snapshot_dto'
require 'openapi_client/models/uniswapv3_ethereum_usage_metrics_hourly_snapshot_dto'
require 'openapi_client/models/uniswapv3_ethereum_withdraw_dto'

# APIs
require 'openapi_client/api/cryptopunks_api'
require 'openapi_client/api/curvefinanceethereum_api'
require 'openapi_client/api/metadata_api'
require 'openapi_client/api/pancakeswapv3_ethereum_api'
require 'openapi_client/api/sushiswapv3_ethereum_api'
require 'openapi_client/api/uniswapv2_ethereum_api'
require 'openapi_client/api/uniswapv3_ethereum_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
