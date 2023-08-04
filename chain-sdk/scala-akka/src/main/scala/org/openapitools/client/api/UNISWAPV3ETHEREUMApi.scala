/**
 * On Chain Dapps - REST API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.client.api

import org.openapitools.client.model.AccountDTO
import org.openapitools.client.model.ActiveAccountDTO
import org.openapitools.client.model.DepositDTO
import org.openapitools.client.model.DexAmmProtocolDTO
import org.openapitools.client.model.FinancialsDailySnapshotDTO
import org.openapitools.client.model.LiquidityPoolAmountDTO
import org.openapitools.client.model.LiquidityPoolFeeDTO
import org.openapitools.client.model.LiquidityPoolHourlySnapshotDTO
import org.openapitools.client.model.PositionDTO
import org.openapitools.client.model.PositionSnapshotDTO
import org.openapitools.client.model.RewardTokenDTO
import org.openapitools.client.model.SwapDTO
import org.openapitools.client.model.TickDTO
import org.openapitools.client.model.TickDailySnapshotDTO
import org.openapitools.client.model.TickHourlySnapshotDTO
import org.openapitools.client.model.TokenDTO
import org.openapitools.client.model.TokenWhiteListDTO
import org.openapitools.client.model.TokenWhiteListSymbolDTO
import org.openapitools.client.model.UsageMetricsDailySnapshotDTO
import org.openapitools.client.model.UsageMetricsHourlySnapshotDTO
import org.openapitools.client.model.WithdrawDTO
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

object UNISWAPV3ETHEREUMApi {

  def apply(baseUrl: String = "https://onchain.coinapi.io") = new UNISWAPV3ETHEREUMApi(baseUrl)
}

class UNISWAPV3ETHEREUMApi(baseUrl: String) {

  /**
   * Gets accounts.
   * 
   * Expected answers:
   *   code 200 : Seq[AccountDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMAccountsCurrent(): ApiRequest[Seq[AccountDTO]] =
    ApiRequest[Seq[AccountDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/accounts/current", "application/json")
      .withSuccessResponse[Seq[AccountDTO]](200)
      

  /**
   * Gets activeAccounts.
   * 
   * Expected answers:
   *   code 200 : Seq[ActiveAccountDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMActiveAccountsCurrent(): ApiRequest[Seq[ActiveAccountDTO]] =
    ApiRequest[Seq[ActiveAccountDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/activeAccounts/current", "application/json")
      .withSuccessResponse[Seq[ActiveAccountDTO]](200)
      

  /**
   * Gets deposits.
   * 
   * Expected answers:
   *   code 200 : Seq[DepositDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMDepositsCurrent(): ApiRequest[Seq[DepositDTO]] =
    ApiRequest[Seq[DepositDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/deposits/current", "application/json")
      .withSuccessResponse[Seq[DepositDTO]](200)
      

  /**
   * Gets dexAmmProtocols.
   * 
   * Expected answers:
   *   code 200 : Seq[DexAmmProtocolDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMDexAmmProtocolsCurrent(): ApiRequest[Seq[DexAmmProtocolDTO]] =
    ApiRequest[Seq[DexAmmProtocolDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/dexAmmProtocols/current", "application/json")
      .withSuccessResponse[Seq[DexAmmProtocolDTO]](200)
      

  /**
   * Gets financialsDailySnapshots.
   * 
   * Expected answers:
   *   code 200 : Seq[FinancialsDailySnapshotDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent(): ApiRequest[Seq[FinancialsDailySnapshotDTO]] =
    ApiRequest[Seq[FinancialsDailySnapshotDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/financialsDailySnapshots/current", "application/json")
      .withSuccessResponse[Seq[FinancialsDailySnapshotDTO]](200)
      

  /**
   * Gets liquidityPoolAmounts.
   * 
   * Expected answers:
   *   code 200 : Seq[LiquidityPoolAmountDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent(): ApiRequest[Seq[LiquidityPoolAmountDTO]] =
    ApiRequest[Seq[LiquidityPoolAmountDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/liquidityPoolAmounts/current", "application/json")
      .withSuccessResponse[Seq[LiquidityPoolAmountDTO]](200)
      

  /**
   * Gets liquidityPoolFees.
   * 
   * Expected answers:
   *   code 200 : Seq[LiquidityPoolFeeDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMLiquidityPoolFeesCurrent(): ApiRequest[Seq[LiquidityPoolFeeDTO]] =
    ApiRequest[Seq[LiquidityPoolFeeDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/liquidityPoolFees/current", "application/json")
      .withSuccessResponse[Seq[LiquidityPoolFeeDTO]](200)
      

  /**
   * Gets liquidityPoolHourlySnapshots.
   * 
   * Expected answers:
   *   code 200 : Seq[LiquidityPoolHourlySnapshotDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent(): ApiRequest[Seq[LiquidityPoolHourlySnapshotDTO]] =
    ApiRequest[Seq[LiquidityPoolHourlySnapshotDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/liquidityPoolHourlySnapshots/current", "application/json")
      .withSuccessResponse[Seq[LiquidityPoolHourlySnapshotDTO]](200)
      

  /**
   * Gets positionSnapshots.
   * 
   * Expected answers:
   *   code 200 : Seq[PositionSnapshotDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMPositionSnapshotsCurrent(): ApiRequest[Seq[PositionSnapshotDTO]] =
    ApiRequest[Seq[PositionSnapshotDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/positionSnapshots/current", "application/json")
      .withSuccessResponse[Seq[PositionSnapshotDTO]](200)
      

  /**
   * Gets positions.
   * 
   * Expected answers:
   *   code 200 : Seq[PositionDTO] (successful operation)
   * 
   * @param pool The liquidity pool in which this position was opened
   */
  def uNISWAPV3ETHEREUMPositionsCurrent(pool: Option[String] = None): ApiRequest[Seq[PositionDTO]] =
    ApiRequest[Seq[PositionDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/positions/current", "application/json")
      .withQueryParam("pool", pool)
      .withSuccessResponse[Seq[PositionDTO]](200)
      

  /**
   * Gets rewardTokens.
   * 
   * Expected answers:
   *   code 200 : Seq[RewardTokenDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMRewardTokensCurrent(): ApiRequest[Seq[RewardTokenDTO]] =
    ApiRequest[Seq[RewardTokenDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/rewardTokens/current", "application/json")
      .withSuccessResponse[Seq[RewardTokenDTO]](200)
      

  /**
   * Gets swaps.
   * 
   * Expected answers:
   *   code 200 : Seq[SwapDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMSwapsCurrent(): ApiRequest[Seq[SwapDTO]] =
    ApiRequest[Seq[SwapDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/swaps/current", "application/json")
      .withSuccessResponse[Seq[SwapDTO]](200)
      

  /**
   * Gets tickDailySnapshots.
   * 
   * Expected answers:
   *   code 200 : Seq[TickDailySnapshotDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMTickDailySnapshotsCurrent(): ApiRequest[Seq[TickDailySnapshotDTO]] =
    ApiRequest[Seq[TickDailySnapshotDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/tickDailySnapshots/current", "application/json")
      .withSuccessResponse[Seq[TickDailySnapshotDTO]](200)
      

  /**
   * Gets tickHourlySnapshots.
   * 
   * Expected answers:
   *   code 200 : Seq[TickHourlySnapshotDTO] (successful operation)
   * 
   * @param pool liquidity pool this tick belongs to
   */
  def uNISWAPV3ETHEREUMTickHourlySnapshotsCurrent(pool: Option[String] = None): ApiRequest[Seq[TickHourlySnapshotDTO]] =
    ApiRequest[Seq[TickHourlySnapshotDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/tickHourlySnapshots/current", "application/json")
      .withQueryParam("pool", pool)
      .withSuccessResponse[Seq[TickHourlySnapshotDTO]](200)
      

  /**
   * Gets ticks.
   * 
   * Expected answers:
   *   code 200 : Seq[TickDTO] (successful operation)
   * 
   * @param pool Liquidity pool this tick belongs to
   */
  def uNISWAPV3ETHEREUMTicksCurrent(pool: Option[String] = None): ApiRequest[Seq[TickDTO]] =
    ApiRequest[Seq[TickDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/ticks/current", "application/json")
      .withQueryParam("pool", pool)
      .withSuccessResponse[Seq[TickDTO]](200)
      

  /**
   * Gets tokenWhiteListSymbols.
   * 
   * Expected answers:
   *   code 200 : Seq[TokenWhiteListSymbolDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent(): ApiRequest[Seq[TokenWhiteListSymbolDTO]] =
    ApiRequest[Seq[TokenWhiteListSymbolDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/tokenWhiteListSymbols/current", "application/json")
      .withSuccessResponse[Seq[TokenWhiteListSymbolDTO]](200)
      

  /**
   * Gets tokenWhiteLists.
   * 
   * Expected answers:
   *   code 200 : Seq[TokenWhiteListDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMTokenWhiteListsCurrent(): ApiRequest[Seq[TokenWhiteListDTO]] =
    ApiRequest[Seq[TokenWhiteListDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/tokenWhiteLists/current", "application/json")
      .withSuccessResponse[Seq[TokenWhiteListDTO]](200)
      

  /**
   * Gets tokens.
   * 
   * Expected answers:
   *   code 200 : Seq[TokenDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMTokensCurrent(): ApiRequest[Seq[TokenDTO]] =
    ApiRequest[Seq[TokenDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/tokens/current", "application/json")
      .withSuccessResponse[Seq[TokenDTO]](200)
      

  /**
   * Gets usageMetricsDailySnapshots.
   * 
   * Expected answers:
   *   code 200 : Seq[UsageMetricsDailySnapshotDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent(): ApiRequest[Seq[UsageMetricsDailySnapshotDTO]] =
    ApiRequest[Seq[UsageMetricsDailySnapshotDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/usageMetricsDailySnapshots/current", "application/json")
      .withSuccessResponse[Seq[UsageMetricsDailySnapshotDTO]](200)
      

  /**
   * Gets usageMetricsHourlySnapshots.
   * 
   * Expected answers:
   *   code 200 : Seq[UsageMetricsHourlySnapshotDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent(): ApiRequest[Seq[UsageMetricsHourlySnapshotDTO]] =
    ApiRequest[Seq[UsageMetricsHourlySnapshotDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/usageMetricsHourlySnapshots/current", "application/json")
      .withSuccessResponse[Seq[UsageMetricsHourlySnapshotDTO]](200)
      

  /**
   * Gets withdraws.
   * 
   * Expected answers:
   *   code 200 : Seq[WithdrawDTO] (successful operation)
   */
  def uNISWAPV3ETHEREUMWithdrawsCurrent(): ApiRequest[Seq[WithdrawDTO]] =
    ApiRequest[Seq[WithdrawDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswap_v3_ethereum/withdraws/current", "application/json")
      .withSuccessResponse[Seq[WithdrawDTO]](200)
      



}

