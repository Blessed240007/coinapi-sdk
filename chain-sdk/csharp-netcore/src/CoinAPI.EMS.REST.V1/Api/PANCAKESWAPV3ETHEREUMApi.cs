/*
 * On Chain Dapps - REST API
 *
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net;
using System.Net.Mime;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace CoinAPI.EMS.REST.V1.Api
{

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IPANCAKESWAPV3ETHEREUMApiSync : IApiAccessor
    {
        #region Synchronous Operations
        /// <summary>
        /// LiquidityPools (current)
        /// </summary>
        /// <remarks>
        /// Gets liquidityPools.
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="id">Smart contract address of the pool. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>List&lt;PANCAKESWAPV3ETHEREUMLiquidityPoolDTO&gt;</returns>
        List<PANCAKESWAPV3ETHEREUMLiquidityPoolDTO> PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent(string id = default(string), int operationIndex = 0);

        /// <summary>
        /// LiquidityPools (current)
        /// </summary>
        /// <remarks>
        /// Gets liquidityPools.
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="id">Smart contract address of the pool. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of List&lt;PANCAKESWAPV3ETHEREUMLiquidityPoolDTO&gt;</returns>
        ApiResponse<List<PANCAKESWAPV3ETHEREUMLiquidityPoolDTO>> PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrentWithHttpInfo(string id = default(string), int operationIndex = 0);
        /// <summary>
        /// Swaps (current)
        /// </summary>
        /// <remarks>
        /// Gets swaps.
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>List&lt;PANCAKESWAPV3ETHEREUMSwapDTO&gt;</returns>
        List<PANCAKESWAPV3ETHEREUMSwapDTO> PANCAKESWAPV3ETHEREUMSwapsCurrent(int operationIndex = 0);

        /// <summary>
        /// Swaps (current)
        /// </summary>
        /// <remarks>
        /// Gets swaps.
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of List&lt;PANCAKESWAPV3ETHEREUMSwapDTO&gt;</returns>
        ApiResponse<List<PANCAKESWAPV3ETHEREUMSwapDTO>> PANCAKESWAPV3ETHEREUMSwapsCurrentWithHttpInfo(int operationIndex = 0);
        /// <summary>
        /// Tokens (current)
        /// </summary>
        /// <remarks>
        /// Gets tokens.
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="id">Smart contract address of the token. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>List&lt;PANCAKESWAPV3ETHEREUMTokenDTO&gt;</returns>
        List<PANCAKESWAPV3ETHEREUMTokenDTO> PANCAKESWAPV3ETHEREUMTokensCurrent(string id = default(string), int operationIndex = 0);

        /// <summary>
        /// Tokens (current)
        /// </summary>
        /// <remarks>
        /// Gets tokens.
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="id">Smart contract address of the token. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of List&lt;PANCAKESWAPV3ETHEREUMTokenDTO&gt;</returns>
        ApiResponse<List<PANCAKESWAPV3ETHEREUMTokenDTO>> PANCAKESWAPV3ETHEREUMTokensCurrentWithHttpInfo(string id = default(string), int operationIndex = 0);
        #endregion Synchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IPANCAKESWAPV3ETHEREUMApiAsync : IApiAccessor
    {
        #region Asynchronous Operations
        /// <summary>
        /// LiquidityPools (current)
        /// </summary>
        /// <remarks>
        /// Gets liquidityPools.
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="id">Smart contract address of the pool. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of List&lt;PANCAKESWAPV3ETHEREUMLiquidityPoolDTO&gt;</returns>
        System.Threading.Tasks.Task<List<PANCAKESWAPV3ETHEREUMLiquidityPoolDTO>> PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrentAsync(string id = default(string), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));

        /// <summary>
        /// LiquidityPools (current)
        /// </summary>
        /// <remarks>
        /// Gets liquidityPools.
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="id">Smart contract address of the pool. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (List&lt;PANCAKESWAPV3ETHEREUMLiquidityPoolDTO&gt;)</returns>
        System.Threading.Tasks.Task<ApiResponse<List<PANCAKESWAPV3ETHEREUMLiquidityPoolDTO>>> PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrentWithHttpInfoAsync(string id = default(string), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));
        /// <summary>
        /// Swaps (current)
        /// </summary>
        /// <remarks>
        /// Gets swaps.
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of List&lt;PANCAKESWAPV3ETHEREUMSwapDTO&gt;</returns>
        System.Threading.Tasks.Task<List<PANCAKESWAPV3ETHEREUMSwapDTO>> PANCAKESWAPV3ETHEREUMSwapsCurrentAsync(int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));

        /// <summary>
        /// Swaps (current)
        /// </summary>
        /// <remarks>
        /// Gets swaps.
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (List&lt;PANCAKESWAPV3ETHEREUMSwapDTO&gt;)</returns>
        System.Threading.Tasks.Task<ApiResponse<List<PANCAKESWAPV3ETHEREUMSwapDTO>>> PANCAKESWAPV3ETHEREUMSwapsCurrentWithHttpInfoAsync(int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));
        /// <summary>
        /// Tokens (current)
        /// </summary>
        /// <remarks>
        /// Gets tokens.
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="id">Smart contract address of the token. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of List&lt;PANCAKESWAPV3ETHEREUMTokenDTO&gt;</returns>
        System.Threading.Tasks.Task<List<PANCAKESWAPV3ETHEREUMTokenDTO>> PANCAKESWAPV3ETHEREUMTokensCurrentAsync(string id = default(string), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));

        /// <summary>
        /// Tokens (current)
        /// </summary>
        /// <remarks>
        /// Gets tokens.
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="id">Smart contract address of the token. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (List&lt;PANCAKESWAPV3ETHEREUMTokenDTO&gt;)</returns>
        System.Threading.Tasks.Task<ApiResponse<List<PANCAKESWAPV3ETHEREUMTokenDTO>>> PANCAKESWAPV3ETHEREUMTokensCurrentWithHttpInfoAsync(string id = default(string), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));
        #endregion Asynchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IPANCAKESWAPV3ETHEREUMApi : IPANCAKESWAPV3ETHEREUMApiSync, IPANCAKESWAPV3ETHEREUMApiAsync
    {

    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public partial class PANCAKESWAPV3ETHEREUMApi : IPANCAKESWAPV3ETHEREUMApi
    {
        private CoinAPI.EMS.REST.V1.Client.ExceptionFactory _exceptionFactory = (name, response) => null;

        /// <summary>
        /// Initializes a new instance of the <see cref="PANCAKESWAPV3ETHEREUMApi"/> class.
        /// </summary>
        /// <returns></returns>
        public PANCAKESWAPV3ETHEREUMApi() : this((string)null)
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="PANCAKESWAPV3ETHEREUMApi"/> class.
        /// </summary>
        /// <returns></returns>
        public PANCAKESWAPV3ETHEREUMApi(string basePath)
        {
            this.Configuration = CoinAPI.EMS.REST.V1.Client.Configuration.MergeConfigurations(
                CoinAPI.EMS.REST.V1.Client.GlobalConfiguration.Instance,
                new CoinAPI.EMS.REST.V1.Client.Configuration { BasePath = basePath }
            );
            this.Client = new CoinAPI.EMS.REST.V1.Client.ApiClient(this.Configuration.BasePath);
            this.AsynchronousClient = new CoinAPI.EMS.REST.V1.Client.ApiClient(this.Configuration.BasePath);
            this.ExceptionFactory = CoinAPI.EMS.REST.V1.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="PANCAKESWAPV3ETHEREUMApi"/> class
        /// using Configuration object
        /// </summary>
        /// <param name="configuration">An instance of Configuration</param>
        /// <returns></returns>
        public PANCAKESWAPV3ETHEREUMApi(CoinAPI.EMS.REST.V1.Client.Configuration configuration)
        {
            if (configuration == null) throw new ArgumentNullException("configuration");

            this.Configuration = CoinAPI.EMS.REST.V1.Client.Configuration.MergeConfigurations(
                CoinAPI.EMS.REST.V1.Client.GlobalConfiguration.Instance,
                configuration
            );
            this.Client = new CoinAPI.EMS.REST.V1.Client.ApiClient(this.Configuration.BasePath);
            this.AsynchronousClient = new CoinAPI.EMS.REST.V1.Client.ApiClient(this.Configuration.BasePath);
            ExceptionFactory = CoinAPI.EMS.REST.V1.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="PANCAKESWAPV3ETHEREUMApi"/> class
        /// using a Configuration object and client instance.
        /// </summary>
        /// <param name="client">The client interface for synchronous API access.</param>
        /// <param name="asyncClient">The client interface for asynchronous API access.</param>
        /// <param name="configuration">The configuration object.</param>
        public PANCAKESWAPV3ETHEREUMApi(CoinAPI.EMS.REST.V1.Client.ISynchronousClient client, CoinAPI.EMS.REST.V1.Client.IAsynchronousClient asyncClient, CoinAPI.EMS.REST.V1.Client.IReadableConfiguration configuration)
        {
            if (client == null) throw new ArgumentNullException("client");
            if (asyncClient == null) throw new ArgumentNullException("asyncClient");
            if (configuration == null) throw new ArgumentNullException("configuration");

            this.Client = client;
            this.AsynchronousClient = asyncClient;
            this.Configuration = configuration;
            this.ExceptionFactory = CoinAPI.EMS.REST.V1.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// The client for accessing this underlying API asynchronously.
        /// </summary>
        public CoinAPI.EMS.REST.V1.Client.IAsynchronousClient AsynchronousClient { get; set; }

        /// <summary>
        /// The client for accessing this underlying API synchronously.
        /// </summary>
        public CoinAPI.EMS.REST.V1.Client.ISynchronousClient Client { get; set; }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        public string GetBasePath()
        {
            return this.Configuration.BasePath;
        }

        /// <summary>
        /// Gets or sets the configuration object
        /// </summary>
        /// <value>An instance of the Configuration</value>
        public CoinAPI.EMS.REST.V1.Client.IReadableConfiguration Configuration { get; set; }

        /// <summary>
        /// Provides a factory method hook for the creation of exceptions.
        /// </summary>
        public CoinAPI.EMS.REST.V1.Client.ExceptionFactory ExceptionFactory
        {
            get
            {
                if (_exceptionFactory != null && _exceptionFactory.GetInvocationList().Length > 1)
                {
                    throw new InvalidOperationException("Multicast delegate for ExceptionFactory is unsupported.");
                }
                return _exceptionFactory;
            }
            set { _exceptionFactory = value; }
        }

        /// <summary>
        /// LiquidityPools (current) Gets liquidityPools.
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="id">Smart contract address of the pool. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>List&lt;PANCAKESWAPV3ETHEREUMLiquidityPoolDTO&gt;</returns>
        public List<PANCAKESWAPV3ETHEREUMLiquidityPoolDTO> PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent(string id = default(string), int operationIndex = 0)
        {
            CoinAPI.EMS.REST.V1.Client.ApiResponse<List<PANCAKESWAPV3ETHEREUMLiquidityPoolDTO>> localVarResponse = PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrentWithHttpInfo(id);
            return localVarResponse.Data;
        }

        /// <summary>
        /// LiquidityPools (current) Gets liquidityPools.
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="id">Smart contract address of the pool. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of List&lt;PANCAKESWAPV3ETHEREUMLiquidityPoolDTO&gt;</returns>
        public CoinAPI.EMS.REST.V1.Client.ApiResponse<List<PANCAKESWAPV3ETHEREUMLiquidityPoolDTO>> PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrentWithHttpInfo(string id = default(string), int operationIndex = 0)
        {
            CoinAPI.EMS.REST.V1.Client.RequestOptions localVarRequestOptions = new CoinAPI.EMS.REST.V1.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "text/plain",
                "application/json",
                "text/json",
                "application/x-msgpack"
            };

            var localVarContentType = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            if (id != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "id", id));
            }

            localVarRequestOptions.Operation = "PANCAKESWAPV3ETHEREUMApi.PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent";
            localVarRequestOptions.OperationIndex = operationIndex;


            // make the HTTP request
            var localVarResponse = this.Client.Get<List<PANCAKESWAPV3ETHEREUMLiquidityPoolDTO>>("/v1/dapps/pancakeswap-v3-ethereum/liquidityPools/current", localVarRequestOptions, this.Configuration);
            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

        /// <summary>
        /// LiquidityPools (current) Gets liquidityPools.
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="id">Smart contract address of the pool. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of List&lt;PANCAKESWAPV3ETHEREUMLiquidityPoolDTO&gt;</returns>
        public async System.Threading.Tasks.Task<List<PANCAKESWAPV3ETHEREUMLiquidityPoolDTO>> PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrentAsync(string id = default(string), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            CoinAPI.EMS.REST.V1.Client.ApiResponse<List<PANCAKESWAPV3ETHEREUMLiquidityPoolDTO>> localVarResponse = await PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrentWithHttpInfoAsync(id, operationIndex, cancellationToken).ConfigureAwait(false);
            return localVarResponse.Data;
        }

        /// <summary>
        /// LiquidityPools (current) Gets liquidityPools.
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="id">Smart contract address of the pool. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (List&lt;PANCAKESWAPV3ETHEREUMLiquidityPoolDTO&gt;)</returns>
        public async System.Threading.Tasks.Task<CoinAPI.EMS.REST.V1.Client.ApiResponse<List<PANCAKESWAPV3ETHEREUMLiquidityPoolDTO>>> PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrentWithHttpInfoAsync(string id = default(string), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {

            CoinAPI.EMS.REST.V1.Client.RequestOptions localVarRequestOptions = new CoinAPI.EMS.REST.V1.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "text/plain",
                "application/json",
                "text/json",
                "application/x-msgpack"
            };

            var localVarContentType = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            if (id != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "id", id));
            }

            localVarRequestOptions.Operation = "PANCAKESWAPV3ETHEREUMApi.PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent";
            localVarRequestOptions.OperationIndex = operationIndex;


            // make the HTTP request
            var localVarResponse = await this.AsynchronousClient.GetAsync<List<PANCAKESWAPV3ETHEREUMLiquidityPoolDTO>>("/v1/dapps/pancakeswap-v3-ethereum/liquidityPools/current", localVarRequestOptions, this.Configuration, cancellationToken).ConfigureAwait(false);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

        /// <summary>
        /// Swaps (current) Gets swaps.
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>List&lt;PANCAKESWAPV3ETHEREUMSwapDTO&gt;</returns>
        public List<PANCAKESWAPV3ETHEREUMSwapDTO> PANCAKESWAPV3ETHEREUMSwapsCurrent(int operationIndex = 0)
        {
            CoinAPI.EMS.REST.V1.Client.ApiResponse<List<PANCAKESWAPV3ETHEREUMSwapDTO>> localVarResponse = PANCAKESWAPV3ETHEREUMSwapsCurrentWithHttpInfo();
            return localVarResponse.Data;
        }

        /// <summary>
        /// Swaps (current) Gets swaps.
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of List&lt;PANCAKESWAPV3ETHEREUMSwapDTO&gt;</returns>
        public CoinAPI.EMS.REST.V1.Client.ApiResponse<List<PANCAKESWAPV3ETHEREUMSwapDTO>> PANCAKESWAPV3ETHEREUMSwapsCurrentWithHttpInfo(int operationIndex = 0)
        {
            CoinAPI.EMS.REST.V1.Client.RequestOptions localVarRequestOptions = new CoinAPI.EMS.REST.V1.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "text/plain",
                "application/json",
                "text/json",
                "application/x-msgpack"
            };

            var localVarContentType = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }


            localVarRequestOptions.Operation = "PANCAKESWAPV3ETHEREUMApi.PANCAKESWAPV3ETHEREUMSwapsCurrent";
            localVarRequestOptions.OperationIndex = operationIndex;


            // make the HTTP request
            var localVarResponse = this.Client.Get<List<PANCAKESWAPV3ETHEREUMSwapDTO>>("/v1/dapps/pancakeswap-v3-ethereum/swaps/current", localVarRequestOptions, this.Configuration);
            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("PANCAKESWAPV3ETHEREUMSwapsCurrent", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

        /// <summary>
        /// Swaps (current) Gets swaps.
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of List&lt;PANCAKESWAPV3ETHEREUMSwapDTO&gt;</returns>
        public async System.Threading.Tasks.Task<List<PANCAKESWAPV3ETHEREUMSwapDTO>> PANCAKESWAPV3ETHEREUMSwapsCurrentAsync(int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            CoinAPI.EMS.REST.V1.Client.ApiResponse<List<PANCAKESWAPV3ETHEREUMSwapDTO>> localVarResponse = await PANCAKESWAPV3ETHEREUMSwapsCurrentWithHttpInfoAsync(operationIndex, cancellationToken).ConfigureAwait(false);
            return localVarResponse.Data;
        }

        /// <summary>
        /// Swaps (current) Gets swaps.
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (List&lt;PANCAKESWAPV3ETHEREUMSwapDTO&gt;)</returns>
        public async System.Threading.Tasks.Task<CoinAPI.EMS.REST.V1.Client.ApiResponse<List<PANCAKESWAPV3ETHEREUMSwapDTO>>> PANCAKESWAPV3ETHEREUMSwapsCurrentWithHttpInfoAsync(int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {

            CoinAPI.EMS.REST.V1.Client.RequestOptions localVarRequestOptions = new CoinAPI.EMS.REST.V1.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "text/plain",
                "application/json",
                "text/json",
                "application/x-msgpack"
            };

            var localVarContentType = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }


            localVarRequestOptions.Operation = "PANCAKESWAPV3ETHEREUMApi.PANCAKESWAPV3ETHEREUMSwapsCurrent";
            localVarRequestOptions.OperationIndex = operationIndex;


            // make the HTTP request
            var localVarResponse = await this.AsynchronousClient.GetAsync<List<PANCAKESWAPV3ETHEREUMSwapDTO>>("/v1/dapps/pancakeswap-v3-ethereum/swaps/current", localVarRequestOptions, this.Configuration, cancellationToken).ConfigureAwait(false);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("PANCAKESWAPV3ETHEREUMSwapsCurrent", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

        /// <summary>
        /// Tokens (current) Gets tokens.
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="id">Smart contract address of the token. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>List&lt;PANCAKESWAPV3ETHEREUMTokenDTO&gt;</returns>
        public List<PANCAKESWAPV3ETHEREUMTokenDTO> PANCAKESWAPV3ETHEREUMTokensCurrent(string id = default(string), int operationIndex = 0)
        {
            CoinAPI.EMS.REST.V1.Client.ApiResponse<List<PANCAKESWAPV3ETHEREUMTokenDTO>> localVarResponse = PANCAKESWAPV3ETHEREUMTokensCurrentWithHttpInfo(id);
            return localVarResponse.Data;
        }

        /// <summary>
        /// Tokens (current) Gets tokens.
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="id">Smart contract address of the token. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of List&lt;PANCAKESWAPV3ETHEREUMTokenDTO&gt;</returns>
        public CoinAPI.EMS.REST.V1.Client.ApiResponse<List<PANCAKESWAPV3ETHEREUMTokenDTO>> PANCAKESWAPV3ETHEREUMTokensCurrentWithHttpInfo(string id = default(string), int operationIndex = 0)
        {
            CoinAPI.EMS.REST.V1.Client.RequestOptions localVarRequestOptions = new CoinAPI.EMS.REST.V1.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "text/plain",
                "application/json",
                "text/json",
                "application/x-msgpack"
            };

            var localVarContentType = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            if (id != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "id", id));
            }

            localVarRequestOptions.Operation = "PANCAKESWAPV3ETHEREUMApi.PANCAKESWAPV3ETHEREUMTokensCurrent";
            localVarRequestOptions.OperationIndex = operationIndex;


            // make the HTTP request
            var localVarResponse = this.Client.Get<List<PANCAKESWAPV3ETHEREUMTokenDTO>>("/v1/dapps/pancakeswap-v3-ethereum/tokens/current", localVarRequestOptions, this.Configuration);
            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("PANCAKESWAPV3ETHEREUMTokensCurrent", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

        /// <summary>
        /// Tokens (current) Gets tokens.
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="id">Smart contract address of the token. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of List&lt;PANCAKESWAPV3ETHEREUMTokenDTO&gt;</returns>
        public async System.Threading.Tasks.Task<List<PANCAKESWAPV3ETHEREUMTokenDTO>> PANCAKESWAPV3ETHEREUMTokensCurrentAsync(string id = default(string), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            CoinAPI.EMS.REST.V1.Client.ApiResponse<List<PANCAKESWAPV3ETHEREUMTokenDTO>> localVarResponse = await PANCAKESWAPV3ETHEREUMTokensCurrentWithHttpInfoAsync(id, operationIndex, cancellationToken).ConfigureAwait(false);
            return localVarResponse.Data;
        }

        /// <summary>
        /// Tokens (current) Gets tokens.
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="id">Smart contract address of the token. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (List&lt;PANCAKESWAPV3ETHEREUMTokenDTO&gt;)</returns>
        public async System.Threading.Tasks.Task<CoinAPI.EMS.REST.V1.Client.ApiResponse<List<PANCAKESWAPV3ETHEREUMTokenDTO>>> PANCAKESWAPV3ETHEREUMTokensCurrentWithHttpInfoAsync(string id = default(string), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {

            CoinAPI.EMS.REST.V1.Client.RequestOptions localVarRequestOptions = new CoinAPI.EMS.REST.V1.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "text/plain",
                "application/json",
                "text/json",
                "application/x-msgpack"
            };

            var localVarContentType = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            if (id != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "id", id));
            }

            localVarRequestOptions.Operation = "PANCAKESWAPV3ETHEREUMApi.PANCAKESWAPV3ETHEREUMTokensCurrent";
            localVarRequestOptions.OperationIndex = operationIndex;


            // make the HTTP request
            var localVarResponse = await this.AsynchronousClient.GetAsync<List<PANCAKESWAPV3ETHEREUMTokenDTO>>("/v1/dapps/pancakeswap-v3-ethereum/tokens/current", localVarRequestOptions, this.Configuration, cancellationToken).ConfigureAwait(false);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("PANCAKESWAPV3ETHEREUMTokensCurrent", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

    }
}
