//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PANCAKESWAPV3ETHEREUMApi {
  PANCAKESWAPV3ETHEREUMApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// LiquidityPools (current)
  ///
  /// Gets liquidityPools.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Smart contract address of the pool.
  Future<Response> pANCAKESWAPV3ETHEREUMLiquidityPoolsCurrentWithHttpInfo({ String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dapps/pancakeswap-v3-ethereum/liquidityPools/current';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// LiquidityPools (current)
  ///
  /// Gets liquidityPools.
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Smart contract address of the pool.
  Future<List<PANCAKESWAPV3ETHEREUMLiquidityPoolDTO>?> pANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent({ String? id, }) async {
    final response = await pANCAKESWAPV3ETHEREUMLiquidityPoolsCurrentWithHttpInfo( id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PANCAKESWAPV3ETHEREUMLiquidityPoolDTO>') as List)
        .cast<PANCAKESWAPV3ETHEREUMLiquidityPoolDTO>()
        .toList();

    }
    return null;
  }

  /// Swaps (current)
  ///
  /// Gets swaps.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> pANCAKESWAPV3ETHEREUMSwapsCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dapps/pancakeswap-v3-ethereum/swaps/current';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Swaps (current)
  ///
  /// Gets swaps.
  Future<List<PANCAKESWAPV3ETHEREUMSwapDTO>?> pANCAKESWAPV3ETHEREUMSwapsCurrent() async {
    final response = await pANCAKESWAPV3ETHEREUMSwapsCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PANCAKESWAPV3ETHEREUMSwapDTO>') as List)
        .cast<PANCAKESWAPV3ETHEREUMSwapDTO>()
        .toList();

    }
    return null;
  }

  /// Tokens (current)
  ///
  /// Gets tokens.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Smart contract address of the token.
  Future<Response> pANCAKESWAPV3ETHEREUMTokensCurrentWithHttpInfo({ String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dapps/pancakeswap-v3-ethereum/tokens/current';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Tokens (current)
  ///
  /// Gets tokens.
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Smart contract address of the token.
  Future<List<PANCAKESWAPV3ETHEREUMTokenDTO>?> pANCAKESWAPV3ETHEREUMTokensCurrent({ String? id, }) async {
    final response = await pANCAKESWAPV3ETHEREUMTokensCurrentWithHttpInfo( id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PANCAKESWAPV3ETHEREUMTokenDTO>') as List)
        .cast<PANCAKESWAPV3ETHEREUMTokenDTO>()
        .toList();

    }
    return null;
  }
}
