package = "openapiclient"
version = "1.0.0-1"
source = {
	url = "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
}

description = {
	summary = "API client generated by OpenAPI Generator",
	detailed = [[
 This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             ]],
	homepage = "https://openapi-generator.tech",
	license = "Unlicense",
	maintainer = "OpenAPI Generator contributors",
}

dependencies = {
	"lua >= 5.2",
	"http",
	"dkjson",
	"basexx"
}

build = {
	type = "builtin",
	modules = {
		["openapiclient.api.cryptopunks_api"] = "openapiclient/api/cryptopunks_api.lua";
		["openapiclient.api.curvefinanceethereum_api"] = "openapiclient/api/curvefinanceethereum_api.lua";
		["openapiclient.api.metadata_api"] = "openapiclient/api/metadata_api.lua";
		["openapiclient.api.sushiswapv3_ethereum_api"] = "openapiclient/api/sushiswapv3_ethereum_api.lua";
		["openapiclient.api.uniswapv2_ethereum_api"] = "openapiclient/api/uniswapv2_ethereum_api.lua";
		["openapiclient.api.uniswapv3_ethereum_api"] = "openapiclient/api/uniswapv3_ethereum_api.lua";
		["openapiclient.model.cryptopunks_bid_dto"] = "openapiclient/model/cryptopunks_bid_dto.lua";
		["openapiclient.model.cryptopunks_collection_daily_snapshot_dto"] = "openapiclient/model/cryptopunks_collection_daily_snapshot_dto.lua";
		["openapiclient.model.cryptopunks_collection_dto"] = "openapiclient/model/cryptopunks_collection_dto.lua";
		["openapiclient.model.cryptopunks_data_sources_dto"] = "openapiclient/model/cryptopunks_data_sources_dto.lua";
		["openapiclient.model.cryptopunks_item_dto"] = "openapiclient/model/cryptopunks_item_dto.lua";
		["openapiclient.model.cryptopunks_market_place_dto"] = "openapiclient/model/cryptopunks_market_place_dto.lua";
		["openapiclient.model.cryptopunks_marketplace_daily_snapshot_dto"] = "openapiclient/model/cryptopunks_marketplace_daily_snapshot_dto.lua";
		["openapiclient.model.cryptopunks_trade_dto"] = "openapiclient/model/cryptopunks_trade_dto.lua";
		["openapiclient.model.cryptopunks_user_dto"] = "openapiclient/model/cryptopunks_user_dto.lua";
		["openapiclient.model.curve_finance_ethereum_liquidity_pool_dto"] = "openapiclient/model/curve_finance_ethereum_liquidity_pool_dto.lua";
		["openapiclient.model.curve_finance_ethereum_swap_dto"] = "openapiclient/model/curve_finance_ethereum_swap_dto.lua";
		["openapiclient.model.curve_finance_ethereum_token_dto"] = "openapiclient/model/curve_finance_ethereum_token_dto.lua";
		["openapiclient.model.sushiswap_v3_ethereum_liquidity_pool_dto"] = "openapiclient/model/sushiswap_v3_ethereum_liquidity_pool_dto.lua";
		["openapiclient.model.sushiswap_v3_ethereum_swap_dto"] = "openapiclient/model/sushiswap_v3_ethereum_swap_dto.lua";
		["openapiclient.model.sushiswap_v3_ethereum_token_dto"] = "openapiclient/model/sushiswap_v3_ethereum_token_dto.lua";
		["openapiclient.model.transactions_e_trade_aggressive_side"] = "openapiclient/model/transactions_e_trade_aggressive_side.lua";
		["openapiclient.model.uniswap_v2_ethereum_liquidity_pool_dto"] = "openapiclient/model/uniswap_v2_ethereum_liquidity_pool_dto.lua";
		["openapiclient.model.uniswap_v2_ethereum_swap_dto"] = "openapiclient/model/uniswap_v2_ethereum_swap_dto.lua";
		["openapiclient.model.uniswap_v2_ethereum_token_dto"] = "openapiclient/model/uniswap_v2_ethereum_token_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_account_dto"] = "openapiclient/model/uniswap_v3_ethereum_account_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_active_account_dto"] = "openapiclient/model/uniswap_v3_ethereum_active_account_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_deposit_dto"] = "openapiclient/model/uniswap_v3_ethereum_deposit_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_dex_amm_protocol_dto"] = "openapiclient/model/uniswap_v3_ethereum_dex_amm_protocol_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_financials_daily_snapshot_dto"] = "openapiclient/model/uniswap_v3_ethereum_financials_daily_snapshot_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_liquidity_pool_amount_dto"] = "openapiclient/model/uniswap_v3_ethereum_liquidity_pool_amount_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_liquidity_pool_daily_snapshot_dto"] = "openapiclient/model/uniswap_v3_ethereum_liquidity_pool_daily_snapshot_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_liquidity_pool_dto"] = "openapiclient/model/uniswap_v3_ethereum_liquidity_pool_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_liquidity_pool_fee_dto"] = "openapiclient/model/uniswap_v3_ethereum_liquidity_pool_fee_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_liquidity_pool_hourly_snapshot_dto"] = "openapiclient/model/uniswap_v3_ethereum_liquidity_pool_hourly_snapshot_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_position_dto"] = "openapiclient/model/uniswap_v3_ethereum_position_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_position_snapshot_dto"] = "openapiclient/model/uniswap_v3_ethereum_position_snapshot_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_reward_token_dto"] = "openapiclient/model/uniswap_v3_ethereum_reward_token_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_swap_dto"] = "openapiclient/model/uniswap_v3_ethereum_swap_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_tick_daily_snapshot_dto"] = "openapiclient/model/uniswap_v3_ethereum_tick_daily_snapshot_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_tick_dto"] = "openapiclient/model/uniswap_v3_ethereum_tick_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_tick_hourly_snapshot_dto"] = "openapiclient/model/uniswap_v3_ethereum_tick_hourly_snapshot_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_token_dto"] = "openapiclient/model/uniswap_v3_ethereum_token_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_token_white_list_dto"] = "openapiclient/model/uniswap_v3_ethereum_token_white_list_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_token_white_list_symbol_dto"] = "openapiclient/model/uniswap_v3_ethereum_token_white_list_symbol_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_usage_metrics_daily_snapshot_dto"] = "openapiclient/model/uniswap_v3_ethereum_usage_metrics_daily_snapshot_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_usage_metrics_hourly_snapshot_dto"] = "openapiclient/model/uniswap_v3_ethereum_usage_metrics_hourly_snapshot_dto.lua";
		["openapiclient.model.uniswap_v3_ethereum_withdraw_dto"] = "openapiclient/model/uniswap_v3_ethereum_withdraw_dto.lua";
	}
}
