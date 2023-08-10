# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from openapi_client.apis.path_to_api import path_to_api

import enum


class PathValues(str, enum.Enum):
    METADATA_CHAINS = "/metadata/chains"
    V1_DAPPS_CRYPTOPUNKS_BIDS_CURRENT = "/v1/dapps/cryptopunks/bids/current"
    V1_DAPPS_CRYPTOPUNKS_COLLECTION_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/cryptopunks/collectionDailySnapshots/current"
    V1_DAPPS_CRYPTOPUNKS_COLLECTIONS_CURRENT = "/v1/dapps/cryptopunks/collections/current"
    V1_DAPPS_CRYPTOPUNKS_DATA_SOURCES_CURRENT = "/v1/dapps/cryptopunks/dataSources/current"
    V1_DAPPS_CRYPTOPUNKS_ITEMS_CURRENT = "/v1/dapps/cryptopunks/items/current"
    V1_DAPPS_CRYPTOPUNKS_MARKETPLACE_DAILY_SNAPSHOTS_CURRENT = "/v1/dapps/cryptopunks/marketplaceDailySnapshots/current"
    V1_DAPPS_CRYPTOPUNKS_MARKET_PLACES_CURRENT = "/v1/dapps/cryptopunks/marketPlaces/current"
    V1_DAPPS_CRYPTOPUNKS_TRADES_CURRENT = "/v1/dapps/cryptopunks/trades/current"
    V1_DAPPS_CRYPTOPUNKS_USERS_CURRENT = "/v1/dapps/cryptopunks/users/current"
    METADATA_DAPPS = "/metadata/dapps"
    METADATA_DAPPS_DAPP_NAME = "/metadata/dapps/{dappName}"
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
