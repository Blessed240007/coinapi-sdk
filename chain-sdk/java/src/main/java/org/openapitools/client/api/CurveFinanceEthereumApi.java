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

import org.openapitools.client.ApiCallback;
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.ApiResponse;
import org.openapitools.client.Configuration;
import org.openapitools.client.Pair;
import org.openapitools.client.ProgressRequestBody;
import org.openapitools.client.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;


import org.openapitools.client.model.CURVEFINANCEETHEREUMLiquidityPoolDTO;
import org.openapitools.client.model.CURVEFINANCEETHEREUMSwapDTO;
import org.openapitools.client.model.CURVEFINANCEETHEREUMTokenDTO;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

public class CurveFinanceEthereumApi {
    private ApiClient localVarApiClient;
    private int localHostIndex;
    private String localCustomBaseUrl;

    public CurveFinanceEthereumApi() {
        this(Configuration.getDefaultApiClient());
    }

    public CurveFinanceEthereumApi(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return localVarApiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public int getHostIndex() {
        return localHostIndex;
    }

    public void setHostIndex(int hostIndex) {
        this.localHostIndex = hostIndex;
    }

    public String getCustomBaseUrl() {
        return localCustomBaseUrl;
    }

    public void setCustomBaseUrl(String customBaseUrl) {
        this.localCustomBaseUrl = customBaseUrl;
    }

    /**
     * Build call for cURVEFINANCEETHEREUMLiquidityPoolsCurrent
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> successful operation </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call cURVEFINANCEETHEREUMLiquidityPoolsCurrentCall(final ApiCallback _callback) throws ApiException {
        String basePath = null;
        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/v1/dapps/curve-finance-ethereum/liquidityPools/current";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "text/plain",
            "application/json",
            "text/json",
            "application/x-msgpack"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] {  };
        return localVarApiClient.buildCall(basePath, localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call cURVEFINANCEETHEREUMLiquidityPoolsCurrentValidateBeforeCall(final ApiCallback _callback) throws ApiException {
        return cURVEFINANCEETHEREUMLiquidityPoolsCurrentCall(_callback);

    }

    /**
     * LiquidityPools (current)
     * Gets liquidityPools.
     * @return List&lt;CURVEFINANCEETHEREUMLiquidityPoolDTO&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> successful operation </td><td>  -  </td></tr>
     </table>
     */
    public List<CURVEFINANCEETHEREUMLiquidityPoolDTO> cURVEFINANCEETHEREUMLiquidityPoolsCurrent() throws ApiException {
        ApiResponse<List<CURVEFINANCEETHEREUMLiquidityPoolDTO>> localVarResp = cURVEFINANCEETHEREUMLiquidityPoolsCurrentWithHttpInfo();
        return localVarResp.getData();
    }

    /**
     * LiquidityPools (current)
     * Gets liquidityPools.
     * @return ApiResponse&lt;List&lt;CURVEFINANCEETHEREUMLiquidityPoolDTO&gt;&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> successful operation </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<List<CURVEFINANCEETHEREUMLiquidityPoolDTO>> cURVEFINANCEETHEREUMLiquidityPoolsCurrentWithHttpInfo() throws ApiException {
        okhttp3.Call localVarCall = cURVEFINANCEETHEREUMLiquidityPoolsCurrentValidateBeforeCall(null);
        Type localVarReturnType = new TypeToken<List<CURVEFINANCEETHEREUMLiquidityPoolDTO>>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * LiquidityPools (current) (asynchronously)
     * Gets liquidityPools.
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> successful operation </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call cURVEFINANCEETHEREUMLiquidityPoolsCurrentAsync(final ApiCallback<List<CURVEFINANCEETHEREUMLiquidityPoolDTO>> _callback) throws ApiException {

        okhttp3.Call localVarCall = cURVEFINANCEETHEREUMLiquidityPoolsCurrentValidateBeforeCall(_callback);
        Type localVarReturnType = new TypeToken<List<CURVEFINANCEETHEREUMLiquidityPoolDTO>>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for cURVEFINANCEETHEREUMSwapsCurrent
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> successful operation </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call cURVEFINANCEETHEREUMSwapsCurrentCall(final ApiCallback _callback) throws ApiException {
        String basePath = null;
        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/v1/dapps/curve-finance-ethereum/swaps/current";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "text/plain",
            "application/json",
            "text/json",
            "application/x-msgpack"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] {  };
        return localVarApiClient.buildCall(basePath, localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call cURVEFINANCEETHEREUMSwapsCurrentValidateBeforeCall(final ApiCallback _callback) throws ApiException {
        return cURVEFINANCEETHEREUMSwapsCurrentCall(_callback);

    }

    /**
     * Swaps (current)
     * Gets swaps.
     * @return List&lt;CURVEFINANCEETHEREUMSwapDTO&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> successful operation </td><td>  -  </td></tr>
     </table>
     */
    public List<CURVEFINANCEETHEREUMSwapDTO> cURVEFINANCEETHEREUMSwapsCurrent() throws ApiException {
        ApiResponse<List<CURVEFINANCEETHEREUMSwapDTO>> localVarResp = cURVEFINANCEETHEREUMSwapsCurrentWithHttpInfo();
        return localVarResp.getData();
    }

    /**
     * Swaps (current)
     * Gets swaps.
     * @return ApiResponse&lt;List&lt;CURVEFINANCEETHEREUMSwapDTO&gt;&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> successful operation </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<List<CURVEFINANCEETHEREUMSwapDTO>> cURVEFINANCEETHEREUMSwapsCurrentWithHttpInfo() throws ApiException {
        okhttp3.Call localVarCall = cURVEFINANCEETHEREUMSwapsCurrentValidateBeforeCall(null);
        Type localVarReturnType = new TypeToken<List<CURVEFINANCEETHEREUMSwapDTO>>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Swaps (current) (asynchronously)
     * Gets swaps.
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> successful operation </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call cURVEFINANCEETHEREUMSwapsCurrentAsync(final ApiCallback<List<CURVEFINANCEETHEREUMSwapDTO>> _callback) throws ApiException {

        okhttp3.Call localVarCall = cURVEFINANCEETHEREUMSwapsCurrentValidateBeforeCall(_callback);
        Type localVarReturnType = new TypeToken<List<CURVEFINANCEETHEREUMSwapDTO>>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for cURVEFINANCEETHEREUMTokensCurrent
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> successful operation </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call cURVEFINANCEETHEREUMTokensCurrentCall(final ApiCallback _callback) throws ApiException {
        String basePath = null;
        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/v1/dapps/curve-finance-ethereum/tokens/current";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "text/plain",
            "application/json",
            "text/json",
            "application/x-msgpack"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] {  };
        return localVarApiClient.buildCall(basePath, localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call cURVEFINANCEETHEREUMTokensCurrentValidateBeforeCall(final ApiCallback _callback) throws ApiException {
        return cURVEFINANCEETHEREUMTokensCurrentCall(_callback);

    }

    /**
     * Tokens (current)
     * Gets tokens.
     * @return List&lt;CURVEFINANCEETHEREUMTokenDTO&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> successful operation </td><td>  -  </td></tr>
     </table>
     */
    public List<CURVEFINANCEETHEREUMTokenDTO> cURVEFINANCEETHEREUMTokensCurrent() throws ApiException {
        ApiResponse<List<CURVEFINANCEETHEREUMTokenDTO>> localVarResp = cURVEFINANCEETHEREUMTokensCurrentWithHttpInfo();
        return localVarResp.getData();
    }

    /**
     * Tokens (current)
     * Gets tokens.
     * @return ApiResponse&lt;List&lt;CURVEFINANCEETHEREUMTokenDTO&gt;&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> successful operation </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<List<CURVEFINANCEETHEREUMTokenDTO>> cURVEFINANCEETHEREUMTokensCurrentWithHttpInfo() throws ApiException {
        okhttp3.Call localVarCall = cURVEFINANCEETHEREUMTokensCurrentValidateBeforeCall(null);
        Type localVarReturnType = new TypeToken<List<CURVEFINANCEETHEREUMTokenDTO>>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Tokens (current) (asynchronously)
     * Gets tokens.
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> successful operation </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call cURVEFINANCEETHEREUMTokensCurrentAsync(final ApiCallback<List<CURVEFINANCEETHEREUMTokenDTO>> _callback) throws ApiException {

        okhttp3.Call localVarCall = cURVEFINANCEETHEREUMTokensCurrentValidateBeforeCall(_callback);
        Type localVarReturnType = new TypeToken<List<CURVEFINANCEETHEREUMTokenDTO>>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}
