import typing_extensions

from openapi_client.paths import PathValues
from openapi_client.apis.paths.metadata_chains import MetadataChains
from openapi_client.apis.paths.v1_dapps_cryptopunks_bids_current import V1DappsCryptopunksBidsCurrent
from openapi_client.apis.paths.v1_dapps_cryptopunks_collection_daily_snapshots_current import V1DappsCryptopunksCollectionDailySnapshotsCurrent
from openapi_client.apis.paths.v1_dapps_cryptopunks_collections_current import V1DappsCryptopunksCollectionsCurrent
from openapi_client.apis.paths.v1_dapps_cryptopunks_data_sources_current import V1DappsCryptopunksDataSourcesCurrent
from openapi_client.apis.paths.v1_dapps_cryptopunks_items_current import V1DappsCryptopunksItemsCurrent
from openapi_client.apis.paths.v1_dapps_cryptopunks_marketplace_daily_snapshots_current import V1DappsCryptopunksMarketplaceDailySnapshotsCurrent
from openapi_client.apis.paths.v1_dapps_cryptopunks_market_places_current import V1DappsCryptopunksMarketPlacesCurrent
from openapi_client.apis.paths.v1_dapps_cryptopunks_trades_current import V1DappsCryptopunksTradesCurrent
from openapi_client.apis.paths.v1_dapps_cryptopunks_users_current import V1DappsCryptopunksUsersCurrent
from openapi_client.apis.paths.metadata_dapps import MetadataDapps
from openapi_client.apis.paths.metadata_dapps_dapp_name import MetadataDappsDappName
from openapi_client.apis.paths.v1_dapps_uniswap_v2_ethereum_liquidity_pools_current import V1DappsUniswapV2EthereumLiquidityPoolsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v2_ethereum_swaps_current import V1DappsUniswapV2EthereumSwapsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v2_ethereum_tokens_current import V1DappsUniswapV2EthereumTokensCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_accounts_current import V1DappsUniswapV3EthereumAccountsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_active_accounts_current import V1DappsUniswapV3EthereumActiveAccountsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_deposits_current import V1DappsUniswapV3EthereumDepositsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_dex_amm_protocols_current import V1DappsUniswapV3EthereumDexAmmProtocolsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_financials_daily_snapshots_current import V1DappsUniswapV3EthereumFinancialsDailySnapshotsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_liquidity_pool_amounts_current import V1DappsUniswapV3EthereumLiquidityPoolAmountsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_liquidity_pool_daily_snapshots_current import V1DappsUniswapV3EthereumLiquidityPoolDailySnapshotsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_liquidity_pools_current import V1DappsUniswapV3EthereumLiquidityPoolsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_liquidity_pool_fees_current import V1DappsUniswapV3EthereumLiquidityPoolFeesCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_liquidity_pool_hourly_snapshots_current import V1DappsUniswapV3EthereumLiquidityPoolHourlySnapshotsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_positions_current import V1DappsUniswapV3EthereumPositionsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_position_snapshots_current import V1DappsUniswapV3EthereumPositionSnapshotsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_reward_tokens_current import V1DappsUniswapV3EthereumRewardTokensCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_swaps_current import V1DappsUniswapV3EthereumSwapsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_tick_daily_snapshots_current import V1DappsUniswapV3EthereumTickDailySnapshotsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_ticks_current import V1DappsUniswapV3EthereumTicksCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_tick_hourly_snapshots_current import V1DappsUniswapV3EthereumTickHourlySnapshotsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_tokens_current import V1DappsUniswapV3EthereumTokensCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_token_white_lists_current import V1DappsUniswapV3EthereumTokenWhiteListsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_token_white_list_symbols_current import V1DappsUniswapV3EthereumTokenWhiteListSymbolsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_usage_metrics_daily_snapshots_current import V1DappsUniswapV3EthereumUsageMetricsDailySnapshotsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_usage_metrics_hourly_snapshots_current import V1DappsUniswapV3EthereumUsageMetricsHourlySnapshotsCurrent
from openapi_client.apis.paths.v1_dapps_uniswap_v3_ethereum_withdraws_current import V1DappsUniswapV3EthereumWithdrawsCurrent

PathToApi = typing_extensions.TypedDict(
    'PathToApi',
    {
        PathValues.METADATA_CHAINS: MetadataChains,
        PathValues.V1_DAPPS_CRYPTOPUNKS_BIDS_CURRENT: V1DappsCryptopunksBidsCurrent,
        PathValues.V1_DAPPS_CRYPTOPUNKS_COLLECTION_DAILY_SNAPSHOTS_CURRENT: V1DappsCryptopunksCollectionDailySnapshotsCurrent,
        PathValues.V1_DAPPS_CRYPTOPUNKS_COLLECTIONS_CURRENT: V1DappsCryptopunksCollectionsCurrent,
        PathValues.V1_DAPPS_CRYPTOPUNKS_DATA_SOURCES_CURRENT: V1DappsCryptopunksDataSourcesCurrent,
        PathValues.V1_DAPPS_CRYPTOPUNKS_ITEMS_CURRENT: V1DappsCryptopunksItemsCurrent,
        PathValues.V1_DAPPS_CRYPTOPUNKS_MARKETPLACE_DAILY_SNAPSHOTS_CURRENT: V1DappsCryptopunksMarketplaceDailySnapshotsCurrent,
        PathValues.V1_DAPPS_CRYPTOPUNKS_MARKET_PLACES_CURRENT: V1DappsCryptopunksMarketPlacesCurrent,
        PathValues.V1_DAPPS_CRYPTOPUNKS_TRADES_CURRENT: V1DappsCryptopunksTradesCurrent,
        PathValues.V1_DAPPS_CRYPTOPUNKS_USERS_CURRENT: V1DappsCryptopunksUsersCurrent,
        PathValues.METADATA_DAPPS: MetadataDapps,
        PathValues.METADATA_DAPPS_DAPP_NAME: MetadataDappsDappName,
        PathValues.V1_DAPPS_UNISWAPV2ETHEREUM_LIQUIDITY_POOLS_CURRENT: V1DappsUniswapV2EthereumLiquidityPoolsCurrent,
        PathValues.V1_DAPPS_UNISWAPV2ETHEREUM_SWAPS_CURRENT: V1DappsUniswapV2EthereumSwapsCurrent,
        PathValues.V1_DAPPS_UNISWAPV2ETHEREUM_TOKENS_CURRENT: V1DappsUniswapV2EthereumTokensCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_ACCOUNTS_CURRENT: V1DappsUniswapV3EthereumAccountsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_ACTIVE_ACCOUNTS_CURRENT: V1DappsUniswapV3EthereumActiveAccountsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_DEPOSITS_CURRENT: V1DappsUniswapV3EthereumDepositsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_DEX_AMM_PROTOCOLS_CURRENT: V1DappsUniswapV3EthereumDexAmmProtocolsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_FINANCIALS_DAILY_SNAPSHOTS_CURRENT: V1DappsUniswapV3EthereumFinancialsDailySnapshotsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_LIQUIDITY_POOL_AMOUNTS_CURRENT: V1DappsUniswapV3EthereumLiquidityPoolAmountsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_LIQUIDITY_POOL_DAILY_SNAPSHOTS_CURRENT: V1DappsUniswapV3EthereumLiquidityPoolDailySnapshotsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_LIQUIDITY_POOLS_CURRENT: V1DappsUniswapV3EthereumLiquidityPoolsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_LIQUIDITY_POOL_FEES_CURRENT: V1DappsUniswapV3EthereumLiquidityPoolFeesCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_LIQUIDITY_POOL_HOURLY_SNAPSHOTS_CURRENT: V1DappsUniswapV3EthereumLiquidityPoolHourlySnapshotsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_POSITIONS_CURRENT: V1DappsUniswapV3EthereumPositionsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_POSITION_SNAPSHOTS_CURRENT: V1DappsUniswapV3EthereumPositionSnapshotsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_REWARD_TOKENS_CURRENT: V1DappsUniswapV3EthereumRewardTokensCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_SWAPS_CURRENT: V1DappsUniswapV3EthereumSwapsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_TICK_DAILY_SNAPSHOTS_CURRENT: V1DappsUniswapV3EthereumTickDailySnapshotsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_TICKS_CURRENT: V1DappsUniswapV3EthereumTicksCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_TICK_HOURLY_SNAPSHOTS_CURRENT: V1DappsUniswapV3EthereumTickHourlySnapshotsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_TOKENS_CURRENT: V1DappsUniswapV3EthereumTokensCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_TOKEN_WHITE_LISTS_CURRENT: V1DappsUniswapV3EthereumTokenWhiteListsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_TOKEN_WHITE_LIST_SYMBOLS_CURRENT: V1DappsUniswapV3EthereumTokenWhiteListSymbolsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_USAGE_METRICS_DAILY_SNAPSHOTS_CURRENT: V1DappsUniswapV3EthereumUsageMetricsDailySnapshotsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_USAGE_METRICS_HOURLY_SNAPSHOTS_CURRENT: V1DappsUniswapV3EthereumUsageMetricsHourlySnapshotsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_WITHDRAWS_CURRENT: V1DappsUniswapV3EthereumWithdrawsCurrent,
    }
)

path_to_api = PathToApi(
    {
        PathValues.METADATA_CHAINS: MetadataChains,
        PathValues.V1_DAPPS_CRYPTOPUNKS_BIDS_CURRENT: V1DappsCryptopunksBidsCurrent,
        PathValues.V1_DAPPS_CRYPTOPUNKS_COLLECTION_DAILY_SNAPSHOTS_CURRENT: V1DappsCryptopunksCollectionDailySnapshotsCurrent,
        PathValues.V1_DAPPS_CRYPTOPUNKS_COLLECTIONS_CURRENT: V1DappsCryptopunksCollectionsCurrent,
        PathValues.V1_DAPPS_CRYPTOPUNKS_DATA_SOURCES_CURRENT: V1DappsCryptopunksDataSourcesCurrent,
        PathValues.V1_DAPPS_CRYPTOPUNKS_ITEMS_CURRENT: V1DappsCryptopunksItemsCurrent,
        PathValues.V1_DAPPS_CRYPTOPUNKS_MARKETPLACE_DAILY_SNAPSHOTS_CURRENT: V1DappsCryptopunksMarketplaceDailySnapshotsCurrent,
        PathValues.V1_DAPPS_CRYPTOPUNKS_MARKET_PLACES_CURRENT: V1DappsCryptopunksMarketPlacesCurrent,
        PathValues.V1_DAPPS_CRYPTOPUNKS_TRADES_CURRENT: V1DappsCryptopunksTradesCurrent,
        PathValues.V1_DAPPS_CRYPTOPUNKS_USERS_CURRENT: V1DappsCryptopunksUsersCurrent,
        PathValues.METADATA_DAPPS: MetadataDapps,
        PathValues.METADATA_DAPPS_DAPP_NAME: MetadataDappsDappName,
        PathValues.V1_DAPPS_UNISWAPV2ETHEREUM_LIQUIDITY_POOLS_CURRENT: V1DappsUniswapV2EthereumLiquidityPoolsCurrent,
        PathValues.V1_DAPPS_UNISWAPV2ETHEREUM_SWAPS_CURRENT: V1DappsUniswapV2EthereumSwapsCurrent,
        PathValues.V1_DAPPS_UNISWAPV2ETHEREUM_TOKENS_CURRENT: V1DappsUniswapV2EthereumTokensCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_ACCOUNTS_CURRENT: V1DappsUniswapV3EthereumAccountsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_ACTIVE_ACCOUNTS_CURRENT: V1DappsUniswapV3EthereumActiveAccountsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_DEPOSITS_CURRENT: V1DappsUniswapV3EthereumDepositsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_DEX_AMM_PROTOCOLS_CURRENT: V1DappsUniswapV3EthereumDexAmmProtocolsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_FINANCIALS_DAILY_SNAPSHOTS_CURRENT: V1DappsUniswapV3EthereumFinancialsDailySnapshotsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_LIQUIDITY_POOL_AMOUNTS_CURRENT: V1DappsUniswapV3EthereumLiquidityPoolAmountsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_LIQUIDITY_POOL_DAILY_SNAPSHOTS_CURRENT: V1DappsUniswapV3EthereumLiquidityPoolDailySnapshotsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_LIQUIDITY_POOLS_CURRENT: V1DappsUniswapV3EthereumLiquidityPoolsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_LIQUIDITY_POOL_FEES_CURRENT: V1DappsUniswapV3EthereumLiquidityPoolFeesCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_LIQUIDITY_POOL_HOURLY_SNAPSHOTS_CURRENT: V1DappsUniswapV3EthereumLiquidityPoolHourlySnapshotsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_POSITIONS_CURRENT: V1DappsUniswapV3EthereumPositionsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_POSITION_SNAPSHOTS_CURRENT: V1DappsUniswapV3EthereumPositionSnapshotsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_REWARD_TOKENS_CURRENT: V1DappsUniswapV3EthereumRewardTokensCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_SWAPS_CURRENT: V1DappsUniswapV3EthereumSwapsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_TICK_DAILY_SNAPSHOTS_CURRENT: V1DappsUniswapV3EthereumTickDailySnapshotsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_TICKS_CURRENT: V1DappsUniswapV3EthereumTicksCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_TICK_HOURLY_SNAPSHOTS_CURRENT: V1DappsUniswapV3EthereumTickHourlySnapshotsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_TOKENS_CURRENT: V1DappsUniswapV3EthereumTokensCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_TOKEN_WHITE_LISTS_CURRENT: V1DappsUniswapV3EthereumTokenWhiteListsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_TOKEN_WHITE_LIST_SYMBOLS_CURRENT: V1DappsUniswapV3EthereumTokenWhiteListSymbolsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_USAGE_METRICS_DAILY_SNAPSHOTS_CURRENT: V1DappsUniswapV3EthereumUsageMetricsDailySnapshotsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_USAGE_METRICS_HOURLY_SNAPSHOTS_CURRENT: V1DappsUniswapV3EthereumUsageMetricsHourlySnapshotsCurrent,
        PathValues.V1_DAPPS_UNISWAPV3ETHEREUM_WITHDRAWS_CURRENT: V1DappsUniswapV3EthereumWithdrawsCurrent,
    }
)
