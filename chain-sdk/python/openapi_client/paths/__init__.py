# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from openapi_client.apis.path_to_api import path_to_api

import enum


class PathValues(str, enum.Enum):
    METADATA_CHAINS = "/metadata/chains"
    METADATA_CHAINS_CHAIN_ID = "/metadata/chains/{chainId}"
    V1_DAPPS_CRYPTOPUNKSETHEREUM_BIDS_CURRENT = "/v1/dapps/cryptopunks-ethereum/bids/current"
    V1_DAPPS_CRYPTOPUNKSETHEREUM_COLLECTION_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/cryptopunks-ethereum/collectionDailySnapshots/current"
    V1_DAPPS_CRYPTOPUNKSETHEREUM_COLLECTIONS_CURRENT = "/v1/dapps/cryptopunks-ethereum/collections/current"
    V1_DAPPS_CRYPTOPUNKSETHEREUM_DATA_SOURCES_CURRENT = "/v1/dapps/cryptopunks-ethereum/dataSources/current"
    V1_DAPPS_CRYPTOPUNKSETHEREUM_ITEMS_CURRENT = "/v1/dapps/cryptopunks-ethereum/items/current"
    V1_DAPPS_CRYPTOPUNKSETHEREUM_MARKETPLACE_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/cryptopunks-ethereum/marketplaceDailySnapshots/current"
    V1_DAPPS_CRYPTOPUNKSETHEREUM_MARKET_PLACES_CURRENT = "/v1/dapps/cryptopunks-ethereum/marketPlaces/current"
    V1_DAPPS_CRYPTOPUNKSETHEREUM_TRADES_CURRENT = "/v1/dapps/cryptopunks-ethereum/trades/current"
    V1_DAPPS_CRYPTOPUNKSETHEREUM_USERS_CURRENT = "/v1/dapps/cryptopunks-ethereum/users/current"
    V1_DAPPS_CURVEFINANCEETHEREUM_ACCOUNTS_CURRENT = "/v1/dapps/curve-finance-ethereum/accounts/current"
    V1_DAPPS_CURVEFINANCEETHEREUM_ACTIVE_ACCOUNTS_CURRENT = "/v1/dapps/curve-finance-ethereum/activeAccounts/current"
    V1_DAPPS_CURVEFINANCEETHEREUM_DEPOSITS_CURRENT = "/v1/dapps/curve-finance-ethereum/deposits/current"
    V1_DAPPS_CURVEFINANCEETHEREUM_DEX_AMM_PROTOCOLS_CURRENT = "/v1/dapps/curve-finance-ethereum/dexAmmProtocols/current"
    V1_DAPPS_CURVEFINANCEETHEREUM_FINANCIALS_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/curve-finance-ethereum/financialsDailySnapshots/current"
    V1_DAPPS_CURVEFINANCEETHEREUM_LIQUIDITY_GAUGES_CURRENT = "/v1/dapps/curve-finance-ethereum/liquidityGauges/current"
    V1_DAPPS_CURVEFINANCEETHEREUM_LIQUIDITY_POOL_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/curve-finance-ethereum/liquidityPoolDailySnapshots/current"
    V1_DAPPS_CURVEFINANCEETHEREUM_LIQUIDITY_POOLS_CURRENT = "/v1/dapps/curve-finance-ethereum/liquidityPools/current"
    V1_DAPPS_CURVEFINANCEETHEREUM_LIQUIDITY_POOL_FEES_CURRENT = "/v1/dapps/curve-finance-ethereum/liquidityPoolFees/current"
    V1_DAPPS_CURVEFINANCEETHEREUM_LIQUIDITY_POOL_HOURLY_SNAPSHOTS_CURRENT = "/v1/dapps/curve-finance-ethereum/liquidityPoolHourlySnapshots/current"
    V1_DAPPS_CURVEFINANCEETHEREUM_LP_TOKENS_CURRENT = "/v1/dapps/curve-finance-ethereum/lpTokens/current"
    V1_DAPPS_CURVEFINANCEETHEREUM_REWARD_TOKENS_CURRENT = "/v1/dapps/curve-finance-ethereum/rewardTokens/current"
    V1_DAPPS_CURVEFINANCEETHEREUM_SWAPS_CURRENT = "/v1/dapps/curve-finance-ethereum/swaps/current"
    V1_DAPPS_CURVEFINANCEETHEREUM_TOKENS_CURRENT = "/v1/dapps/curve-finance-ethereum/tokens/current"
    V1_DAPPS_CURVEFINANCEETHEREUM_USAGE_METRICS_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/curve-finance-ethereum/usageMetricsDailySnapshots/current"
    V1_DAPPS_CURVEFINANCEETHEREUM_USAGE_METRICS_HOURLY_SNAPSHOTS_CURRENT = "/v1/dapps/curve-finance-ethereum/usageMetricsHourlySnapshots/current"
    V1_DAPPS_CURVEFINANCEETHEREUM_WITHDRAWS_CURRENT = "/v1/dapps/curve-finance-ethereum/withdraws/current"
    METADATA_DAPPS = "/metadata/dapps"
    METADATA_DAPPS_DAPP_ID = "/metadata/dapps/{dappId}"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_ACCOUNTS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/accounts/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_ACTIVE_ACCOUNTS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/activeAccounts/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_DEPOSITS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/deposits/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_DEX_AMM_PROTOCOLS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/dexAmmProtocols/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_FINANCIALS_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/financialsDailySnapshots/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_LIQUIDITY_POOL_AMOUNTS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/liquidityPoolAmounts/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_LIQUIDITY_POOL_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/liquidityPoolDailySnapshots/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_LIQUIDITY_POOLS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/liquidityPools/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_LIQUIDITY_POOL_FEES_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/liquidityPoolFees/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_LIQUIDITY_POOL_HOURLY_SNAPSHOTS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/liquidityPoolHourlySnapshots/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_POSITIONS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/positions/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_POSITION_SNAPSHOTS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/positionSnapshots/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_REWARD_TOKENS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/rewardTokens/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_SWAPS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/swaps/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_TICK_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/tickDailySnapshots/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_TICKS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/ticks/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_TICK_HOURLY_SNAPSHOTS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/tickHourlySnapshots/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_TOKENS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/tokens/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_TOKEN_WHITE_LISTS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/tokenWhiteLists/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_TOKEN_WHITE_LIST_SYMBOLS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/tokenWhiteListSymbols/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_USAGE_METRICS_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/usageMetricsDailySnapshots/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_USAGE_METRICS_HOURLY_SNAPSHOTS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/usageMetricsHourlySnapshots/current"
    V1_DAPPS_PANCAKESWAPV3ETHEREUM_WITHDRAWS_CURRENT = "/v1/dapps/pancakeswap-v3-ethereum/withdraws/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_ACCOUNTS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/accounts/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_ACTIVE_ACCOUNTS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/activeAccounts/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_DEPOSITS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/deposits/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_DEX_AMM_PROTOCOLS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/dexAmmProtocols/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_FINANCIALS_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/financialsDailySnapshots/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_LIQUIDITY_POOL_AMOUNTS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/liquidityPoolAmounts/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_LIQUIDITY_POOL_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/liquidityPoolDailySnapshots/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_LIQUIDITY_POOLS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/liquidityPools/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_LIQUIDITY_POOL_FEES_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/liquidityPoolFees/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_LIQUIDITY_POOL_HOURLY_SNAPSHOTS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/liquidityPoolHourlySnapshots/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_POSITIONS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/positions/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_POSITION_SNAPSHOTS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/positionSnapshots/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_REWARD_TOKENS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/rewardTokens/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_SWAPS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/swaps/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_TICK_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/tickDailySnapshots/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_TICKS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/ticks/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_TICK_HOURLY_SNAPSHOTS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/tickHourlySnapshots/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_TOKENS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/tokens/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_TOKEN_WHITE_LISTS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/tokenWhiteLists/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_TOKEN_WHITE_LIST_SYMBOLS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/tokenWhiteListSymbols/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_USAGE_METRICS_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/usageMetricsDailySnapshots/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_USAGE_METRICS_HOURLY_SNAPSHOTS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/usageMetricsHourlySnapshots/current"
    V1_DAPPS_SUSHISWAPV3ETHEREUM_WITHDRAWS_CURRENT = "/v1/dapps/sushiswap-v3-ethereum/withdraws/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_ACCOUNTS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/accounts/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_ACTIVE_ACCOUNTS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/activeAccounts/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_DEPOSITS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/deposits/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_DEX_AMM_PROTOCOLS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/dexAmmProtocols/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_FINANCIALS_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/financialsDailySnapshots/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_LIQUIDITY_POOL_AMOUNTS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/liquidityPoolAmounts/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_LIQUIDITY_POOL_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/liquidityPoolDailySnapshots/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_LIQUIDITY_POOLS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/liquidityPools/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_LIQUIDITY_POOL_FEES_CURRENT = "/v1/dapps/uniswap-v2-ethereum/liquidityPoolFees/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_LIQUIDITY_POOL_HOURLY_SNAPSHOTS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/liquidityPoolHourlySnapshots/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_MASTER_CHEF_ADDRESS_TO_PIDS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/masterChefAddressToPids/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_MASTER_CHEFS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/masterChefs/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_MASTER_CHEF_REWARDERS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/masterChefRewarders/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_MASTER_CHEF_STAKING_POOLS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/masterChefStakingPools/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_REWARDER_PROBES_CURRENT = "/v1/dapps/uniswap-v2-ethereum/rewarderProbes/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_REWARD_TOKENS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/rewardTokens/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_SWAPS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/swaps/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_TOKENS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/tokens/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_TOKEN_WHITE_LISTS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/tokenWhiteLists/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_TRANSFERS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/transfers/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_USAGE_METRICS_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/usageMetricsDailySnapshots/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_USAGE_METRICS_HOURLY_SNAPSHOTS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/usageMetricsHourlySnapshots/current"
    V1_DAPPS_UNISWAPV2ETHEREUM_WITHDRAWS_CURRENT = "/v1/dapps/uniswap-v2-ethereum/withdraws/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_ACCOUNTS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/accounts/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_ACTIVE_ACCOUNTS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/activeAccounts/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_DEPOSITS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/deposits/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_DEX_AMM_PROTOCOLS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/dexAmmProtocols/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_FINANCIALS_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/financialsDailySnapshots/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_LIQUIDITY_POOL_AMOUNTS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/liquidityPoolAmounts/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_LIQUIDITY_POOL_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/liquidityPoolDailySnapshots/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_LIQUIDITY_POOLS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/liquidityPools/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_LIQUIDITY_POOL_FEES_CURRENT = "/v1/dapps/uniswap-v3-ethereum/liquidityPoolFees/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_LIQUIDITY_POOL_HOURLY_SNAPSHOTS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/liquidityPoolHourlySnapshots/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_POSITIONS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/positions/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_POSITION_SNAPSHOTS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/positionSnapshots/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_REWARD_TOKENS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/rewardTokens/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_SWAPS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/swaps/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_TICK_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/tickDailySnapshots/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_TICKS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/ticks/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_TICK_HOURLY_SNAPSHOTS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/tickHourlySnapshots/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_TOKENS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/tokens/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_TOKEN_WHITE_LISTS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/tokenWhiteLists/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_TOKEN_WHITE_LIST_SYMBOLS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/tokenWhiteListSymbols/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_USAGE_METRICS_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/usageMetricsDailySnapshots/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_USAGE_METRICS_HOURLY_SNAPSHOTS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/usageMetricsHourlySnapshots/current"
    V1_DAPPS_UNISWAPV3ETHEREUM_WITHDRAWS_CURRENT = "/v1/dapps/uniswap-v3-ethereum/withdraws/current"
