//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CURVEFINANCEETHEREUMApi {
  CURVEFINANCEETHEREUMApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// LiquidityPools (current)
  ///
  /// Gets liquidityPools.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> cURVEFINANCEETHEREUMLiquidityPoolsCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dapps/curve-finance-ethereum/liquidityPools/current';

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

  /// LiquidityPools (current)
  ///
  /// Gets liquidityPools.
  Future<List<CURVEFINANCEETHEREUMLiquidityPoolDTO>?> cURVEFINANCEETHEREUMLiquidityPoolsCurrent() async {
    final response = await cURVEFINANCEETHEREUMLiquidityPoolsCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CURVEFINANCEETHEREUMLiquidityPoolDTO>') as List)
        .cast<CURVEFINANCEETHEREUMLiquidityPoolDTO>()
        .toList();

    }
    return null;
  }

  /// Swaps (current)
  ///
  /// Gets swaps.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> cURVEFINANCEETHEREUMSwapsCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dapps/curve-finance-ethereum/swaps/current';

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
  Future<List<CURVEFINANCEETHEREUMSwapDTO>?> cURVEFINANCEETHEREUMSwapsCurrent() async {
    final response = await cURVEFINANCEETHEREUMSwapsCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CURVEFINANCEETHEREUMSwapDTO>') as List)
        .cast<CURVEFINANCEETHEREUMSwapDTO>()
        .toList();

    }
    return null;
  }

  /// Tokens (current)
  ///
  /// Gets tokens.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> cURVEFINANCEETHEREUMTokensCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dapps/curve-finance-ethereum/tokens/current';

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

  /// Tokens (current)
  ///
  /// Gets tokens.
  Future<List<CURVEFINANCEETHEREUMTokenDTO>?> cURVEFINANCEETHEREUMTokensCurrent() async {
    final response = await cURVEFINANCEETHEREUMTokensCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CURVEFINANCEETHEREUMTokenDTO>') as List)
        .cast<CURVEFINANCEETHEREUMTokenDTO>()
        .toList();

    }
    return null;
  }
}
