// tslint:disable
/**
 * On Chain Dapps - REST API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import type { Observable } from 'rxjs';
import type { AjaxResponse } from 'rxjs/ajax';
import { BaseAPI } from '../runtime';
import type { OperationOpts, HttpQuery } from '../runtime';
import type {
    UNISWAPV3ETHEREUMAccountDTO,
    UNISWAPV3ETHEREUMActiveAccountDTO,
    UNISWAPV3ETHEREUMDepositDTO,
    UNISWAPV3ETHEREUMDexAmmProtocolDTO,
    UNISWAPV3ETHEREUMFinancialsDailySnapshotDTO,
    UNISWAPV3ETHEREUMLiquidityPoolAmountDTO,
    UNISWAPV3ETHEREUMLiquidityPoolFeeDTO,
    UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO,
    UNISWAPV3ETHEREUMPositionDTO,
    UNISWAPV3ETHEREUMPositionSnapshotDTO,
    UNISWAPV3ETHEREUMRewardTokenDTO,
    UNISWAPV3ETHEREUMSwapDTO,
    UNISWAPV3ETHEREUMTickDTO,
    UNISWAPV3ETHEREUMTickDailySnapshotDTO,
    UNISWAPV3ETHEREUMTickHourlySnapshotDTO,
    UNISWAPV3ETHEREUMTokenDTO,
    UNISWAPV3ETHEREUMTokenWhiteListDTO,
    UNISWAPV3ETHEREUMTokenWhiteListSymbolDTO,
    UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO,
    UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO,
    UNISWAPV3ETHEREUMWithdrawDTO,
} from '../models';

export interface UNISWAPV3ETHEREUMPositionsCurrentRequest {
    pool?: string;
}

export interface UNISWAPV3ETHEREUMTickHourlySnapshotsCurrentRequest {
    pool?: string;
}

export interface UNISWAPV3ETHEREUMTicksCurrentRequest {
    pool?: string;
}

/**
 * no description
 */
export class UNISWAPV3ETHEREUMApi extends BaseAPI {

    /**
     * Gets accounts.
     * Accounts (current)
     */
    uNISWAPV3ETHEREUMAccountsCurrent(): Observable<Array<UNISWAPV3ETHEREUMAccountDTO>>
    uNISWAPV3ETHEREUMAccountsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMAccountDTO>>>
    uNISWAPV3ETHEREUMAccountsCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMAccountDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMAccountDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMAccountDTO>>({
            url: '/dapps/uniswap_v3_ethereum/accounts/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets activeAccounts.
     * ActiveAccounts (current)
     */
    uNISWAPV3ETHEREUMActiveAccountsCurrent(): Observable<Array<UNISWAPV3ETHEREUMActiveAccountDTO>>
    uNISWAPV3ETHEREUMActiveAccountsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMActiveAccountDTO>>>
    uNISWAPV3ETHEREUMActiveAccountsCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMActiveAccountDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMActiveAccountDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMActiveAccountDTO>>({
            url: '/dapps/uniswap_v3_ethereum/activeAccounts/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets deposits.
     * Deposits (current)
     */
    uNISWAPV3ETHEREUMDepositsCurrent(): Observable<Array<UNISWAPV3ETHEREUMDepositDTO>>
    uNISWAPV3ETHEREUMDepositsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMDepositDTO>>>
    uNISWAPV3ETHEREUMDepositsCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMDepositDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMDepositDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMDepositDTO>>({
            url: '/dapps/uniswap_v3_ethereum/deposits/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets dexAmmProtocols.
     * DexAmmProtocols (current)
     */
    uNISWAPV3ETHEREUMDexAmmProtocolsCurrent(): Observable<Array<UNISWAPV3ETHEREUMDexAmmProtocolDTO>>
    uNISWAPV3ETHEREUMDexAmmProtocolsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMDexAmmProtocolDTO>>>
    uNISWAPV3ETHEREUMDexAmmProtocolsCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMDexAmmProtocolDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMDexAmmProtocolDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMDexAmmProtocolDTO>>({
            url: '/dapps/uniswap_v3_ethereum/dexAmmProtocols/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets financialsDailySnapshots.
     * FinancialsDailySnapshots (current)
     */
    uNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent(): Observable<Array<UNISWAPV3ETHEREUMFinancialsDailySnapshotDTO>>
    uNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMFinancialsDailySnapshotDTO>>>
    uNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMFinancialsDailySnapshotDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMFinancialsDailySnapshotDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMFinancialsDailySnapshotDTO>>({
            url: '/dapps/uniswap_v3_ethereum/financialsDailySnapshots/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets liquidityPoolAmounts.
     * LiquidityPoolAmounts (current)
     */
    uNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent(): Observable<Array<UNISWAPV3ETHEREUMLiquidityPoolAmountDTO>>
    uNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMLiquidityPoolAmountDTO>>>
    uNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMLiquidityPoolAmountDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMLiquidityPoolAmountDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMLiquidityPoolAmountDTO>>({
            url: '/dapps/uniswap_v3_ethereum/liquidityPoolAmounts/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets liquidityPoolFees.
     * LiquidityPoolFees (current)
     */
    uNISWAPV3ETHEREUMLiquidityPoolFeesCurrent(): Observable<Array<UNISWAPV3ETHEREUMLiquidityPoolFeeDTO>>
    uNISWAPV3ETHEREUMLiquidityPoolFeesCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMLiquidityPoolFeeDTO>>>
    uNISWAPV3ETHEREUMLiquidityPoolFeesCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMLiquidityPoolFeeDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMLiquidityPoolFeeDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMLiquidityPoolFeeDTO>>({
            url: '/dapps/uniswap_v3_ethereum/liquidityPoolFees/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets liquidityPoolHourlySnapshots.
     * LiquidityPoolHourlySnapshots (current)
     */
    uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent(): Observable<Array<UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO>>
    uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO>>>
    uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO>>({
            url: '/dapps/uniswap_v3_ethereum/liquidityPoolHourlySnapshots/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets positionSnapshots.
     * PositionSnapshots (current)
     */
    uNISWAPV3ETHEREUMPositionSnapshotsCurrent(): Observable<Array<UNISWAPV3ETHEREUMPositionSnapshotDTO>>
    uNISWAPV3ETHEREUMPositionSnapshotsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMPositionSnapshotDTO>>>
    uNISWAPV3ETHEREUMPositionSnapshotsCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMPositionSnapshotDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMPositionSnapshotDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMPositionSnapshotDTO>>({
            url: '/dapps/uniswap_v3_ethereum/positionSnapshots/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets positions.
     * Positions (current)
     */
    uNISWAPV3ETHEREUMPositionsCurrent({ pool }: UNISWAPV3ETHEREUMPositionsCurrentRequest): Observable<Array<UNISWAPV3ETHEREUMPositionDTO>>
    uNISWAPV3ETHEREUMPositionsCurrent({ pool }: UNISWAPV3ETHEREUMPositionsCurrentRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMPositionDTO>>>
    uNISWAPV3ETHEREUMPositionsCurrent({ pool }: UNISWAPV3ETHEREUMPositionsCurrentRequest, opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMPositionDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMPositionDTO>>> {

        const query: HttpQuery = {};

        if (pool != null) { query['pool'] = pool; }

        return this.request<Array<UNISWAPV3ETHEREUMPositionDTO>>({
            url: '/dapps/uniswap_v3_ethereum/positions/current',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets rewardTokens.
     * RewardTokens (current)
     */
    uNISWAPV3ETHEREUMRewardTokensCurrent(): Observable<Array<UNISWAPV3ETHEREUMRewardTokenDTO>>
    uNISWAPV3ETHEREUMRewardTokensCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMRewardTokenDTO>>>
    uNISWAPV3ETHEREUMRewardTokensCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMRewardTokenDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMRewardTokenDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMRewardTokenDTO>>({
            url: '/dapps/uniswap_v3_ethereum/rewardTokens/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets swaps.
     * Swaps (current)
     */
    uNISWAPV3ETHEREUMSwapsCurrent(): Observable<Array<UNISWAPV3ETHEREUMSwapDTO>>
    uNISWAPV3ETHEREUMSwapsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMSwapDTO>>>
    uNISWAPV3ETHEREUMSwapsCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMSwapDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMSwapDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMSwapDTO>>({
            url: '/dapps/uniswap_v3_ethereum/swaps/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets tickDailySnapshots.
     * TickDailySnapshots (current)
     */
    uNISWAPV3ETHEREUMTickDailySnapshotsCurrent(): Observable<Array<UNISWAPV3ETHEREUMTickDailySnapshotDTO>>
    uNISWAPV3ETHEREUMTickDailySnapshotsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMTickDailySnapshotDTO>>>
    uNISWAPV3ETHEREUMTickDailySnapshotsCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMTickDailySnapshotDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMTickDailySnapshotDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMTickDailySnapshotDTO>>({
            url: '/dapps/uniswap_v3_ethereum/tickDailySnapshots/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets tickHourlySnapshots.
     * TickHourlySnapshots (current)
     */
    uNISWAPV3ETHEREUMTickHourlySnapshotsCurrent({ pool }: UNISWAPV3ETHEREUMTickHourlySnapshotsCurrentRequest): Observable<Array<UNISWAPV3ETHEREUMTickHourlySnapshotDTO>>
    uNISWAPV3ETHEREUMTickHourlySnapshotsCurrent({ pool }: UNISWAPV3ETHEREUMTickHourlySnapshotsCurrentRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMTickHourlySnapshotDTO>>>
    uNISWAPV3ETHEREUMTickHourlySnapshotsCurrent({ pool }: UNISWAPV3ETHEREUMTickHourlySnapshotsCurrentRequest, opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMTickHourlySnapshotDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMTickHourlySnapshotDTO>>> {

        const query: HttpQuery = {};

        if (pool != null) { query['pool'] = pool; }

        return this.request<Array<UNISWAPV3ETHEREUMTickHourlySnapshotDTO>>({
            url: '/dapps/uniswap_v3_ethereum/tickHourlySnapshots/current',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets ticks.
     * Ticks (current)
     */
    uNISWAPV3ETHEREUMTicksCurrent({ pool }: UNISWAPV3ETHEREUMTicksCurrentRequest): Observable<Array<UNISWAPV3ETHEREUMTickDTO>>
    uNISWAPV3ETHEREUMTicksCurrent({ pool }: UNISWAPV3ETHEREUMTicksCurrentRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMTickDTO>>>
    uNISWAPV3ETHEREUMTicksCurrent({ pool }: UNISWAPV3ETHEREUMTicksCurrentRequest, opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMTickDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMTickDTO>>> {

        const query: HttpQuery = {};

        if (pool != null) { query['pool'] = pool; }

        return this.request<Array<UNISWAPV3ETHEREUMTickDTO>>({
            url: '/dapps/uniswap_v3_ethereum/ticks/current',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * Gets tokenWhiteListSymbols.
     * TokenWhiteListSymbols (current)
     */
    uNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent(): Observable<Array<UNISWAPV3ETHEREUMTokenWhiteListSymbolDTO>>
    uNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMTokenWhiteListSymbolDTO>>>
    uNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMTokenWhiteListSymbolDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMTokenWhiteListSymbolDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMTokenWhiteListSymbolDTO>>({
            url: '/dapps/uniswap_v3_ethereum/tokenWhiteListSymbols/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets tokenWhiteLists.
     * TokenWhiteLists (current)
     */
    uNISWAPV3ETHEREUMTokenWhiteListsCurrent(): Observable<Array<UNISWAPV3ETHEREUMTokenWhiteListDTO>>
    uNISWAPV3ETHEREUMTokenWhiteListsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMTokenWhiteListDTO>>>
    uNISWAPV3ETHEREUMTokenWhiteListsCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMTokenWhiteListDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMTokenWhiteListDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMTokenWhiteListDTO>>({
            url: '/dapps/uniswap_v3_ethereum/tokenWhiteLists/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets tokens.
     * Tokens (current)
     */
    uNISWAPV3ETHEREUMTokensCurrent(): Observable<Array<UNISWAPV3ETHEREUMTokenDTO>>
    uNISWAPV3ETHEREUMTokensCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMTokenDTO>>>
    uNISWAPV3ETHEREUMTokensCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMTokenDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMTokenDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMTokenDTO>>({
            url: '/dapps/uniswap_v3_ethereum/tokens/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets usageMetricsDailySnapshots.
     * UsageMetricsDailySnapshots (current)
     */
    uNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent(): Observable<Array<UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO>>
    uNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO>>>
    uNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO>>({
            url: '/dapps/uniswap_v3_ethereum/usageMetricsDailySnapshots/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets usageMetricsHourlySnapshots.
     * UsageMetricsHourlySnapshots (current)
     */
    uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent(): Observable<Array<UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO>>
    uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO>>>
    uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO>>({
            url: '/dapps/uniswap_v3_ethereum/usageMetricsHourlySnapshots/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     * Gets withdraws.
     * Withdraws (current)
     */
    uNISWAPV3ETHEREUMWithdrawsCurrent(): Observable<Array<UNISWAPV3ETHEREUMWithdrawDTO>>
    uNISWAPV3ETHEREUMWithdrawsCurrent(opts?: OperationOpts): Observable<AjaxResponse<Array<UNISWAPV3ETHEREUMWithdrawDTO>>>
    uNISWAPV3ETHEREUMWithdrawsCurrent(opts?: OperationOpts): Observable<Array<UNISWAPV3ETHEREUMWithdrawDTO> | AjaxResponse<Array<UNISWAPV3ETHEREUMWithdrawDTO>>> {
        return this.request<Array<UNISWAPV3ETHEREUMWithdrawDTO>>({
            url: '/dapps/uniswap_v3_ethereum/withdraws/current',
            method: 'GET',
        }, opts?.responseOpts);
    };

}
