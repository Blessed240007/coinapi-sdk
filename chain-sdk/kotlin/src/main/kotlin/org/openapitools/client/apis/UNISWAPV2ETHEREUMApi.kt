/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.apis

import java.io.IOException
import okhttp3.OkHttpClient
import okhttp3.HttpUrl

import org.openapitools.client.models.UNISWAPV2ETHEREUMLiquidityPoolDTO
import org.openapitools.client.models.UNISWAPV2ETHEREUMSwapDTO
import org.openapitools.client.models.UNISWAPV2ETHEREUMTokenDTO

import com.squareup.moshi.Json

import org.openapitools.client.infrastructure.ApiClient
import org.openapitools.client.infrastructure.ApiResponse
import org.openapitools.client.infrastructure.ClientException
import org.openapitools.client.infrastructure.ClientError
import org.openapitools.client.infrastructure.ServerException
import org.openapitools.client.infrastructure.ServerError
import org.openapitools.client.infrastructure.MultiValueMap
import org.openapitools.client.infrastructure.PartConfig
import org.openapitools.client.infrastructure.RequestConfig
import org.openapitools.client.infrastructure.RequestMethod
import org.openapitools.client.infrastructure.ResponseType
import org.openapitools.client.infrastructure.Success
import org.openapitools.client.infrastructure.toMultiValue

class UNISWAPV2ETHEREUMApi(basePath: kotlin.String = defaultBasePath, client: OkHttpClient = ApiClient.defaultClient) : ApiClient(basePath, client) {
    companion object {
        @JvmStatic
        val defaultBasePath: String by lazy {
            System.getProperties().getProperty(ApiClient.baseUrlKey, "https://onchain.coinapi.io")
        }
    }

    /**
     * LiquidityPools (current)
     * Gets liquidityPools.
     * @return kotlin.collections.List<UNISWAPV2ETHEREUMLiquidityPoolDTO>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun uNISWAPV2ETHEREUMLiquidityPoolsCurrent() : kotlin.collections.List<UNISWAPV2ETHEREUMLiquidityPoolDTO> {
        val localVarResponse = uNISWAPV2ETHEREUMLiquidityPoolsCurrentWithHttpInfo()

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as kotlin.collections.List<UNISWAPV2ETHEREUMLiquidityPoolDTO>
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
     * LiquidityPools (current)
     * Gets liquidityPools.
     * @return ApiResponse<kotlin.collections.List<UNISWAPV2ETHEREUMLiquidityPoolDTO>?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun uNISWAPV2ETHEREUMLiquidityPoolsCurrentWithHttpInfo() : ApiResponse<kotlin.collections.List<UNISWAPV2ETHEREUMLiquidityPoolDTO>?> {
        val localVariableConfig = uNISWAPV2ETHEREUMLiquidityPoolsCurrentRequestConfig()

        return request<Unit, kotlin.collections.List<UNISWAPV2ETHEREUMLiquidityPoolDTO>>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation uNISWAPV2ETHEREUMLiquidityPoolsCurrent
     *
     * @return RequestConfig
     */
    fun uNISWAPV2ETHEREUMLiquidityPoolsCurrentRequestConfig() : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf()
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/v1/dapps/uniswap-v2-ethereum/liquidityPools/current",
            query = localVariableQuery,
            headers = localVariableHeaders,
            requiresAuthentication = false,
            body = localVariableBody
        )
    }

    /**
     * Swaps (current)
     * Gets swaps.
     * @return kotlin.collections.List<UNISWAPV2ETHEREUMSwapDTO>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun uNISWAPV2ETHEREUMSwapsCurrent() : kotlin.collections.List<UNISWAPV2ETHEREUMSwapDTO> {
        val localVarResponse = uNISWAPV2ETHEREUMSwapsCurrentWithHttpInfo()

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as kotlin.collections.List<UNISWAPV2ETHEREUMSwapDTO>
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
     * Swaps (current)
     * Gets swaps.
     * @return ApiResponse<kotlin.collections.List<UNISWAPV2ETHEREUMSwapDTO>?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun uNISWAPV2ETHEREUMSwapsCurrentWithHttpInfo() : ApiResponse<kotlin.collections.List<UNISWAPV2ETHEREUMSwapDTO>?> {
        val localVariableConfig = uNISWAPV2ETHEREUMSwapsCurrentRequestConfig()

        return request<Unit, kotlin.collections.List<UNISWAPV2ETHEREUMSwapDTO>>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation uNISWAPV2ETHEREUMSwapsCurrent
     *
     * @return RequestConfig
     */
    fun uNISWAPV2ETHEREUMSwapsCurrentRequestConfig() : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf()
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/v1/dapps/uniswap-v2-ethereum/swaps/current",
            query = localVariableQuery,
            headers = localVariableHeaders,
            requiresAuthentication = false,
            body = localVariableBody
        )
    }

    /**
     * Tokens (current)
     * Gets tokens.
     * @return kotlin.collections.List<UNISWAPV2ETHEREUMTokenDTO>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun uNISWAPV2ETHEREUMTokensCurrent() : kotlin.collections.List<UNISWAPV2ETHEREUMTokenDTO> {
        val localVarResponse = uNISWAPV2ETHEREUMTokensCurrentWithHttpInfo()

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as kotlin.collections.List<UNISWAPV2ETHEREUMTokenDTO>
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
     * Tokens (current)
     * Gets tokens.
     * @return ApiResponse<kotlin.collections.List<UNISWAPV2ETHEREUMTokenDTO>?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun uNISWAPV2ETHEREUMTokensCurrentWithHttpInfo() : ApiResponse<kotlin.collections.List<UNISWAPV2ETHEREUMTokenDTO>?> {
        val localVariableConfig = uNISWAPV2ETHEREUMTokensCurrentRequestConfig()

        return request<Unit, kotlin.collections.List<UNISWAPV2ETHEREUMTokenDTO>>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation uNISWAPV2ETHEREUMTokensCurrent
     *
     * @return RequestConfig
     */
    fun uNISWAPV2ETHEREUMTokensCurrentRequestConfig() : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf()
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/v1/dapps/uniswap-v2-ethereum/tokens/current",
            query = localVariableQuery,
            headers = localVariableHeaders,
            requiresAuthentication = false,
            body = localVariableBody
        )
    }


    private fun encodeURIComponent(uriComponent: kotlin.String): kotlin.String =
        HttpUrl.Builder().scheme("http").host("localhost").addPathSegment(uriComponent).build().encodedPathSegments[0]
}
