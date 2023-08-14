/*
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


package org.openapitools.client.api;

import org.openapitools.client.ApiException;
import org.openapitools.client.model.PANCAKESWAPV3ETHEREUMLiquidityPoolDTO;
import org.openapitools.client.model.PANCAKESWAPV3ETHEREUMSwapDTO;
import org.openapitools.client.model.PANCAKESWAPV3ETHEREUMTokenDTO;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for PancakeswapV3EthereumApi
 */
@Disabled
public class PancakeswapV3EthereumApiTest {

    private final PancakeswapV3EthereumApi api = new PancakeswapV3EthereumApi();

    /**
     * LiquidityPools (current)
     *
     * Gets liquidityPools.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void pANCAKESWAPV3ETHEREUMLiquidityPoolsCurrentTest() throws ApiException {
        String id = null;
        List<PANCAKESWAPV3ETHEREUMLiquidityPoolDTO> response = api.pANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent(id);
        // TODO: test validations
    }

    /**
     * Swaps (current)
     *
     * Gets swaps.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void pANCAKESWAPV3ETHEREUMSwapsCurrentTest() throws ApiException {
        List<PANCAKESWAPV3ETHEREUMSwapDTO> response = api.pANCAKESWAPV3ETHEREUMSwapsCurrent();
        // TODO: test validations
    }

    /**
     * Tokens (current)
     *
     * Gets tokens.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void pANCAKESWAPV3ETHEREUMTokensCurrentTest() throws ApiException {
        String id = null;
        List<PANCAKESWAPV3ETHEREUMTokenDTO> response = api.pANCAKESWAPV3ETHEREUMTokensCurrent(id);
        // TODO: test validations
    }

}
