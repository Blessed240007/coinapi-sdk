{-
   On Chain Dapps - REST API
    This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

   The version of the OpenAPI document: v1
   Contact: support@coinapi.io

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Request.CURVEFINANCEETHEREUM exposing
    ( cURVEFINANCEETHEREUMLiquidityPoolsCurrent
    , cURVEFINANCEETHEREUMSwapsCurrent
    , cURVEFINANCEETHEREUMTokensCurrent
    )

import Api
import Api.Data exposing (..)
import Dict
import Http
import Json.Decode
import Json.Encode

{-| Gets liquidityPools.
-}
cURVEFINANCEETHEREUMLiquidityPoolsCurrent : Api.Request (List Api.Data.CURVEFINANCEETHEREUMLiquidityPoolDTO)
cURVEFINANCEETHEREUMLiquidityPoolsCurrent =
    Api.request
        "GET"
        "/v1/dapps/curve-finance-ethereum/liquidityPools/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.cURVEFINANCEETHEREUMLiquidityPoolDTODecoder)


{-| Gets swaps.
-}
cURVEFINANCEETHEREUMSwapsCurrent : Api.Request (List Api.Data.CURVEFINANCEETHEREUMSwapDTO)
cURVEFINANCEETHEREUMSwapsCurrent =
    Api.request
        "GET"
        "/v1/dapps/curve-finance-ethereum/swaps/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.cURVEFINANCEETHEREUMSwapDTODecoder)


{-| Gets tokens.
-}
cURVEFINANCEETHEREUMTokensCurrent : Api.Request (List Api.Data.CURVEFINANCEETHEREUMTokenDTO)
cURVEFINANCEETHEREUMTokensCurrent =
    Api.request
        "GET"
        "/v1/dapps/curve-finance-ethereum/tokens/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.cURVEFINANCEETHEREUMTokenDTODecoder)

