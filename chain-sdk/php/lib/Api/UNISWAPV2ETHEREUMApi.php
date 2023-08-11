<?php
/**
 * UNISWAPV2ETHEREUMApi
 * PHP version 7.4
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * On Chain Dapps - REST API
 *
 * This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 6.6.0
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace OpenAPI\Client\Api;

use GuzzleHttp\Client;
use GuzzleHttp\ClientInterface;
use GuzzleHttp\Exception\ConnectException;
use GuzzleHttp\Exception\RequestException;
use GuzzleHttp\Psr7\MultipartStream;
use GuzzleHttp\Psr7\Request;
use GuzzleHttp\RequestOptions;
use OpenAPI\Client\ApiException;
use OpenAPI\Client\Configuration;
use OpenAPI\Client\HeaderSelector;
use OpenAPI\Client\ObjectSerializer;

/**
 * UNISWAPV2ETHEREUMApi Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */
class UNISWAPV2ETHEREUMApi
{
    /**
     * @var ClientInterface
     */
    protected $client;

    /**
     * @var Configuration
     */
    protected $config;

    /**
     * @var HeaderSelector
     */
    protected $headerSelector;

    /**
     * @var int Host index
     */
    protected $hostIndex;

    /** @var string[] $contentTypes **/
    public const contentTypes = [
        'uNISWAPV2ETHEREUMLiquidityPoolsCurrent' => [
            'application/json',
        ],
        'uNISWAPV2ETHEREUMSwapsCurrent' => [
            'application/json',
        ],
        'uNISWAPV2ETHEREUMTokensCurrent' => [
            'application/json',
        ],
    ];

/**
     * @param ClientInterface $client
     * @param Configuration   $config
     * @param HeaderSelector  $selector
     * @param int             $hostIndex (Optional) host index to select the list of hosts if defined in the OpenAPI spec
     */
    public function __construct(
        ClientInterface $client = null,
        Configuration $config = null,
        HeaderSelector $selector = null,
        $hostIndex = 0
    ) {
        $this->client = $client ?: new Client();
        $this->config = $config ?: new Configuration();
        $this->headerSelector = $selector ?: new HeaderSelector();
        $this->hostIndex = $hostIndex;
    }

    /**
     * Set the host index
     *
     * @param int $hostIndex Host index (required)
     */
    public function setHostIndex($hostIndex): void
    {
        $this->hostIndex = $hostIndex;
    }

    /**
     * Get the host index
     *
     * @return int Host index
     */
    public function getHostIndex()
    {
        return $this->hostIndex;
    }

    /**
     * @return Configuration
     */
    public function getConfig()
    {
        return $this->config;
    }

    /**
     * Operation uNISWAPV2ETHEREUMLiquidityPoolsCurrent
     *
     * LiquidityPools (current)
     *
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['uNISWAPV2ETHEREUMLiquidityPoolsCurrent'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return \OpenAPI\Client\Model\UNISWAPV2ETHEREUMLiquidityPoolDTO[]
     */
    public function uNISWAPV2ETHEREUMLiquidityPoolsCurrent(string $contentType = self::contentTypes['uNISWAPV2ETHEREUMLiquidityPoolsCurrent'][0])
    {
        list($response) = $this->uNISWAPV2ETHEREUMLiquidityPoolsCurrentWithHttpInfo($contentType);
        return $response;
    }

    /**
     * Operation uNISWAPV2ETHEREUMLiquidityPoolsCurrentWithHttpInfo
     *
     * LiquidityPools (current)
     *
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['uNISWAPV2ETHEREUMLiquidityPoolsCurrent'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of \OpenAPI\Client\Model\UNISWAPV2ETHEREUMLiquidityPoolDTO[], HTTP status code, HTTP response headers (array of strings)
     */
    public function uNISWAPV2ETHEREUMLiquidityPoolsCurrentWithHttpInfo(string $contentType = self::contentTypes['uNISWAPV2ETHEREUMLiquidityPoolsCurrent'][0])
    {
        $request = $this->uNISWAPV2ETHEREUMLiquidityPoolsCurrentRequest($contentType);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? (string) $e->getResponse()->getBody() : null
                );
            } catch (ConnectException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    null,
                    null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        (string) $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    (string) $response->getBody()
                );
            }

            switch($statusCode) {
                case 200:
                    if ('\OpenAPI\Client\Model\UNISWAPV2ETHEREUMLiquidityPoolDTO[]' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ('\OpenAPI\Client\Model\UNISWAPV2ETHEREUMLiquidityPoolDTO[]' !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\OpenAPI\Client\Model\UNISWAPV2ETHEREUMLiquidityPoolDTO[]', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
            }

            $returnType = '\OpenAPI\Client\Model\UNISWAPV2ETHEREUMLiquidityPoolDTO[]';
            if ($returnType === '\SplFileObject') {
                $content = $response->getBody(); //stream goes to serializer
            } else {
                $content = (string) $response->getBody();
                if ($returnType !== 'string') {
                    $content = json_decode($content);
                }
            }

            return [
                ObjectSerializer::deserialize($content, $returnType, []),
                $response->getStatusCode(),
                $response->getHeaders()
            ];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\OpenAPI\Client\Model\UNISWAPV2ETHEREUMLiquidityPoolDTO[]',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation uNISWAPV2ETHEREUMLiquidityPoolsCurrentAsync
     *
     * LiquidityPools (current)
     *
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['uNISWAPV2ETHEREUMLiquidityPoolsCurrent'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function uNISWAPV2ETHEREUMLiquidityPoolsCurrentAsync(string $contentType = self::contentTypes['uNISWAPV2ETHEREUMLiquidityPoolsCurrent'][0])
    {
        return $this->uNISWAPV2ETHEREUMLiquidityPoolsCurrentAsyncWithHttpInfo($contentType)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation uNISWAPV2ETHEREUMLiquidityPoolsCurrentAsyncWithHttpInfo
     *
     * LiquidityPools (current)
     *
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['uNISWAPV2ETHEREUMLiquidityPoolsCurrent'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function uNISWAPV2ETHEREUMLiquidityPoolsCurrentAsyncWithHttpInfo(string $contentType = self::contentTypes['uNISWAPV2ETHEREUMLiquidityPoolsCurrent'][0])
    {
        $returnType = '\OpenAPI\Client\Model\UNISWAPV2ETHEREUMLiquidityPoolDTO[]';
        $request = $this->uNISWAPV2ETHEREUMLiquidityPoolsCurrentRequest($contentType);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    if ($returnType === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ($returnType !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, $returnType, []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        (string) $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'uNISWAPV2ETHEREUMLiquidityPoolsCurrent'
     *
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['uNISWAPV2ETHEREUMLiquidityPoolsCurrent'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function uNISWAPV2ETHEREUMLiquidityPoolsCurrentRequest(string $contentType = self::contentTypes['uNISWAPV2ETHEREUMLiquidityPoolsCurrent'][0])
    {


        $resourcePath = '/v1/dapps/uniswap-v2-ethereum/liquidityPools/current';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;





        $headers = $this->headerSelector->selectHeaders(
            ['text/plain', 'application/json', 'text/json', 'application/x-msgpack', ],
            $contentType,
            $multipart
        );

        // for model (json/xml)
        if (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $formParamValueItems = is_array($formParamValue) ? $formParamValue : [$formParamValue];
                    foreach ($formParamValueItems as $formParamValueItem) {
                        $multipartContents[] = [
                            'name' => $formParamName,
                            'contents' => $formParamValueItem
                        ];
                    }
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif (stripos($headers['Content-Type'], 'application/json') !== false) {
                # if Content-Type contains "application/json", json_encode the form parameters
                $httpBody = \GuzzleHttp\Utils::jsonEncode($formParams);
            } else {
                // for HTTP post (form)
                $httpBody = ObjectSerializer::buildQuery($formParams);
            }
        }


        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $operationHost = $this->config->getHost();
        $query = ObjectSerializer::buildQuery($queryParams);
        return new Request(
            'GET',
            $operationHost . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Operation uNISWAPV2ETHEREUMSwapsCurrent
     *
     * Swaps (current)
     *
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['uNISWAPV2ETHEREUMSwapsCurrent'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return \OpenAPI\Client\Model\UNISWAPV2ETHEREUMSwapDTO[]
     */
    public function uNISWAPV2ETHEREUMSwapsCurrent(string $contentType = self::contentTypes['uNISWAPV2ETHEREUMSwapsCurrent'][0])
    {
        list($response) = $this->uNISWAPV2ETHEREUMSwapsCurrentWithHttpInfo($contentType);
        return $response;
    }

    /**
     * Operation uNISWAPV2ETHEREUMSwapsCurrentWithHttpInfo
     *
     * Swaps (current)
     *
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['uNISWAPV2ETHEREUMSwapsCurrent'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of \OpenAPI\Client\Model\UNISWAPV2ETHEREUMSwapDTO[], HTTP status code, HTTP response headers (array of strings)
     */
    public function uNISWAPV2ETHEREUMSwapsCurrentWithHttpInfo(string $contentType = self::contentTypes['uNISWAPV2ETHEREUMSwapsCurrent'][0])
    {
        $request = $this->uNISWAPV2ETHEREUMSwapsCurrentRequest($contentType);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? (string) $e->getResponse()->getBody() : null
                );
            } catch (ConnectException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    null,
                    null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        (string) $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    (string) $response->getBody()
                );
            }

            switch($statusCode) {
                case 200:
                    if ('\OpenAPI\Client\Model\UNISWAPV2ETHEREUMSwapDTO[]' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ('\OpenAPI\Client\Model\UNISWAPV2ETHEREUMSwapDTO[]' !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\OpenAPI\Client\Model\UNISWAPV2ETHEREUMSwapDTO[]', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
            }

            $returnType = '\OpenAPI\Client\Model\UNISWAPV2ETHEREUMSwapDTO[]';
            if ($returnType === '\SplFileObject') {
                $content = $response->getBody(); //stream goes to serializer
            } else {
                $content = (string) $response->getBody();
                if ($returnType !== 'string') {
                    $content = json_decode($content);
                }
            }

            return [
                ObjectSerializer::deserialize($content, $returnType, []),
                $response->getStatusCode(),
                $response->getHeaders()
            ];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\OpenAPI\Client\Model\UNISWAPV2ETHEREUMSwapDTO[]',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation uNISWAPV2ETHEREUMSwapsCurrentAsync
     *
     * Swaps (current)
     *
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['uNISWAPV2ETHEREUMSwapsCurrent'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function uNISWAPV2ETHEREUMSwapsCurrentAsync(string $contentType = self::contentTypes['uNISWAPV2ETHEREUMSwapsCurrent'][0])
    {
        return $this->uNISWAPV2ETHEREUMSwapsCurrentAsyncWithHttpInfo($contentType)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation uNISWAPV2ETHEREUMSwapsCurrentAsyncWithHttpInfo
     *
     * Swaps (current)
     *
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['uNISWAPV2ETHEREUMSwapsCurrent'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function uNISWAPV2ETHEREUMSwapsCurrentAsyncWithHttpInfo(string $contentType = self::contentTypes['uNISWAPV2ETHEREUMSwapsCurrent'][0])
    {
        $returnType = '\OpenAPI\Client\Model\UNISWAPV2ETHEREUMSwapDTO[]';
        $request = $this->uNISWAPV2ETHEREUMSwapsCurrentRequest($contentType);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    if ($returnType === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ($returnType !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, $returnType, []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        (string) $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'uNISWAPV2ETHEREUMSwapsCurrent'
     *
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['uNISWAPV2ETHEREUMSwapsCurrent'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function uNISWAPV2ETHEREUMSwapsCurrentRequest(string $contentType = self::contentTypes['uNISWAPV2ETHEREUMSwapsCurrent'][0])
    {


        $resourcePath = '/v1/dapps/uniswap-v2-ethereum/swaps/current';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;





        $headers = $this->headerSelector->selectHeaders(
            ['text/plain', 'application/json', 'text/json', 'application/x-msgpack', ],
            $contentType,
            $multipart
        );

        // for model (json/xml)
        if (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $formParamValueItems = is_array($formParamValue) ? $formParamValue : [$formParamValue];
                    foreach ($formParamValueItems as $formParamValueItem) {
                        $multipartContents[] = [
                            'name' => $formParamName,
                            'contents' => $formParamValueItem
                        ];
                    }
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif (stripos($headers['Content-Type'], 'application/json') !== false) {
                # if Content-Type contains "application/json", json_encode the form parameters
                $httpBody = \GuzzleHttp\Utils::jsonEncode($formParams);
            } else {
                // for HTTP post (form)
                $httpBody = ObjectSerializer::buildQuery($formParams);
            }
        }


        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $operationHost = $this->config->getHost();
        $query = ObjectSerializer::buildQuery($queryParams);
        return new Request(
            'GET',
            $operationHost . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Operation uNISWAPV2ETHEREUMTokensCurrent
     *
     * Tokens (current)
     *
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['uNISWAPV2ETHEREUMTokensCurrent'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return \OpenAPI\Client\Model\UNISWAPV2ETHEREUMTokenDTO[]
     */
    public function uNISWAPV2ETHEREUMTokensCurrent(string $contentType = self::contentTypes['uNISWAPV2ETHEREUMTokensCurrent'][0])
    {
        list($response) = $this->uNISWAPV2ETHEREUMTokensCurrentWithHttpInfo($contentType);
        return $response;
    }

    /**
     * Operation uNISWAPV2ETHEREUMTokensCurrentWithHttpInfo
     *
     * Tokens (current)
     *
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['uNISWAPV2ETHEREUMTokensCurrent'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of \OpenAPI\Client\Model\UNISWAPV2ETHEREUMTokenDTO[], HTTP status code, HTTP response headers (array of strings)
     */
    public function uNISWAPV2ETHEREUMTokensCurrentWithHttpInfo(string $contentType = self::contentTypes['uNISWAPV2ETHEREUMTokensCurrent'][0])
    {
        $request = $this->uNISWAPV2ETHEREUMTokensCurrentRequest($contentType);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? (string) $e->getResponse()->getBody() : null
                );
            } catch (ConnectException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    null,
                    null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        (string) $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    (string) $response->getBody()
                );
            }

            switch($statusCode) {
                case 200:
                    if ('\OpenAPI\Client\Model\UNISWAPV2ETHEREUMTokenDTO[]' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ('\OpenAPI\Client\Model\UNISWAPV2ETHEREUMTokenDTO[]' !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\OpenAPI\Client\Model\UNISWAPV2ETHEREUMTokenDTO[]', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
            }

            $returnType = '\OpenAPI\Client\Model\UNISWAPV2ETHEREUMTokenDTO[]';
            if ($returnType === '\SplFileObject') {
                $content = $response->getBody(); //stream goes to serializer
            } else {
                $content = (string) $response->getBody();
                if ($returnType !== 'string') {
                    $content = json_decode($content);
                }
            }

            return [
                ObjectSerializer::deserialize($content, $returnType, []),
                $response->getStatusCode(),
                $response->getHeaders()
            ];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\OpenAPI\Client\Model\UNISWAPV2ETHEREUMTokenDTO[]',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation uNISWAPV2ETHEREUMTokensCurrentAsync
     *
     * Tokens (current)
     *
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['uNISWAPV2ETHEREUMTokensCurrent'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function uNISWAPV2ETHEREUMTokensCurrentAsync(string $contentType = self::contentTypes['uNISWAPV2ETHEREUMTokensCurrent'][0])
    {
        return $this->uNISWAPV2ETHEREUMTokensCurrentAsyncWithHttpInfo($contentType)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation uNISWAPV2ETHEREUMTokensCurrentAsyncWithHttpInfo
     *
     * Tokens (current)
     *
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['uNISWAPV2ETHEREUMTokensCurrent'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function uNISWAPV2ETHEREUMTokensCurrentAsyncWithHttpInfo(string $contentType = self::contentTypes['uNISWAPV2ETHEREUMTokensCurrent'][0])
    {
        $returnType = '\OpenAPI\Client\Model\UNISWAPV2ETHEREUMTokenDTO[]';
        $request = $this->uNISWAPV2ETHEREUMTokensCurrentRequest($contentType);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    if ($returnType === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ($returnType !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, $returnType, []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        (string) $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'uNISWAPV2ETHEREUMTokensCurrent'
     *
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['uNISWAPV2ETHEREUMTokensCurrent'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function uNISWAPV2ETHEREUMTokensCurrentRequest(string $contentType = self::contentTypes['uNISWAPV2ETHEREUMTokensCurrent'][0])
    {


        $resourcePath = '/v1/dapps/uniswap-v2-ethereum/tokens/current';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;





        $headers = $this->headerSelector->selectHeaders(
            ['text/plain', 'application/json', 'text/json', 'application/x-msgpack', ],
            $contentType,
            $multipart
        );

        // for model (json/xml)
        if (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $formParamValueItems = is_array($formParamValue) ? $formParamValue : [$formParamValue];
                    foreach ($formParamValueItems as $formParamValueItem) {
                        $multipartContents[] = [
                            'name' => $formParamName,
                            'contents' => $formParamValueItem
                        ];
                    }
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif (stripos($headers['Content-Type'], 'application/json') !== false) {
                # if Content-Type contains "application/json", json_encode the form parameters
                $httpBody = \GuzzleHttp\Utils::jsonEncode($formParams);
            } else {
                // for HTTP post (form)
                $httpBody = ObjectSerializer::buildQuery($formParams);
            }
        }


        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $operationHost = $this->config->getHost();
        $query = ObjectSerializer::buildQuery($queryParams);
        return new Request(
            'GET',
            $operationHost . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Create http client option
     *
     * @throws \RuntimeException on file opening failure
     * @return array of http client options
     */
    protected function createHttpClientOption()
    {
        $options = [];
        if ($this->config->getDebug()) {
            $options[RequestOptions::DEBUG] = fopen($this->config->getDebugFile(), 'a');
            if (!$options[RequestOptions::DEBUG]) {
                throw new \RuntimeException('Failed to open the debug file: ' . $this->config->getDebugFile());
            }
        }

        return $options;
    }
}
