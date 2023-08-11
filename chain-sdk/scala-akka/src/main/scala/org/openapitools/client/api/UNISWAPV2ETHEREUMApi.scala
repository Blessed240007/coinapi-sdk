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

import org.openapitools.client.model.LiquidityPoolDTO
import org.openapitools.client.model.SwapDTO
import org.openapitools.client.model.TokenDTO
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

object UNISWAPV2ETHEREUMApi {

  def apply(baseUrl: String = "https://onchain.coinapi.io") = new UNISWAPV2ETHEREUMApi(baseUrl)
}

class UNISWAPV2ETHEREUMApi(baseUrl: String) {

  /**
   * Gets liquidityPools.
   * 
   * Expected answers:
   *   code 200 : Seq[LiquidityPoolDTO] (successful operation)
   */
  def uNISWAPV2ETHEREUMLiquidityPoolsCurrent(): ApiRequest[Seq[LiquidityPoolDTO]] =
    ApiRequest[Seq[LiquidityPoolDTO]](ApiMethods.GET, baseUrl, "/v1/dapps/uniswap-v2-ethereum/liquidityPools/current", "application/json")
      .withSuccessResponse[Seq[LiquidityPoolDTO]](200)
      

  /**
   * Gets swaps.
   * 
   * Expected answers:
   *   code 200 : Seq[SwapDTO] (successful operation)
   */
  def uNISWAPV2ETHEREUMSwapsCurrent(): ApiRequest[Seq[SwapDTO]] =
    ApiRequest[Seq[SwapDTO]](ApiMethods.GET, baseUrl, "/v1/dapps/uniswap-v2-ethereum/swaps/current", "application/json")
      .withSuccessResponse[Seq[SwapDTO]](200)
      

  /**
   * Gets tokens.
   * 
   * Expected answers:
   *   code 200 : Seq[TokenDTO] (successful operation)
   */
  def uNISWAPV2ETHEREUMTokensCurrent(): ApiRequest[Seq[TokenDTO]] =
    ApiRequest[Seq[TokenDTO]](ApiMethods.GET, baseUrl, "/v1/dapps/uniswap-v2-ethereum/tokens/current", "application/json")
      .withSuccessResponse[Seq[TokenDTO]](200)
      



}

