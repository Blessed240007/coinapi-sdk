{-
   On Chain Dapps - REST API

    This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

   OpenAPI Version: 3.0.1
   On Chain Dapps - REST API API version: v1
   Contact: support@coinapi.io
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : OnChainDapps-REST.API.UNISWAPV3ETHEREUM
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module OnChainDapps-REST.API.UNISWAPV3ETHEREUM where

import OnChainDapps-REST.Core
import OnChainDapps-REST.MimeTypes
import OnChainDapps-REST.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** UNISWAPV3ETHEREUM

-- *** uNISWAPV3ETHEREUMAccountsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/accounts\/current@
-- 
-- Accounts (current)
-- 
-- Gets accounts.
-- 
uNISWAPV3ETHEREUMAccountsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMAccountsCurrent MimeNoContent [UNISWAPV3ETHEREUMAccountDTO] accept
uNISWAPV3ETHEREUMAccountsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/accounts/current"]

data UNISWAPV3ETHEREUMAccountsCurrent  
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMAccountsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMAccountsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMAccountsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMAccountsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMActiveAccountsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/activeAccounts\/current@
-- 
-- ActiveAccounts (current)
-- 
-- Gets activeAccounts.
-- 
uNISWAPV3ETHEREUMActiveAccountsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMActiveAccountsCurrent MimeNoContent [UNISWAPV3ETHEREUMActiveAccountDTO] accept
uNISWAPV3ETHEREUMActiveAccountsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/activeAccounts/current"]

data UNISWAPV3ETHEREUMActiveAccountsCurrent  
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMActiveAccountsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMActiveAccountsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMActiveAccountsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMActiveAccountsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMDepositsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/deposits\/current@
-- 
-- Deposits (current)
-- 
-- Gets deposits.
-- 
uNISWAPV3ETHEREUMDepositsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMDepositsCurrent MimeNoContent [UNISWAPV3ETHEREUMDepositDTO] accept
uNISWAPV3ETHEREUMDepositsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/deposits/current"]

data UNISWAPV3ETHEREUMDepositsCurrent  
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMDepositsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMDepositsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMDepositsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMDepositsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMDexAmmProtocolsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/dexAmmProtocols\/current@
-- 
-- DexAmmProtocols (current)
-- 
-- Gets dexAmmProtocols.
-- 
uNISWAPV3ETHEREUMDexAmmProtocolsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMDexAmmProtocolsCurrent MimeNoContent [UNISWAPV3ETHEREUMDexAmmProtocolDTO] accept
uNISWAPV3ETHEREUMDexAmmProtocolsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/dexAmmProtocols/current"]

data UNISWAPV3ETHEREUMDexAmmProtocolsCurrent  
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMDexAmmProtocolsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMDexAmmProtocolsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMDexAmmProtocolsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMDexAmmProtocolsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/financialsDailySnapshots\/current@
-- 
-- FinancialsDailySnapshots (current)
-- 
-- Gets financialsDailySnapshots.
-- 
uNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent MimeNoContent [UNISWAPV3ETHEREUMFinancialsDailySnapshotDTO] accept
uNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/financialsDailySnapshots/current"]

data UNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent  
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMFinancialsDailySnapshotsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/liquidityPoolAmounts\/current@
-- 
-- LiquidityPoolAmounts (current)
-- 
-- Gets liquidityPoolAmounts.
-- 
uNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent MimeNoContent [UNISWAPV3ETHEREUMLiquidityPoolAmountDTO] accept
uNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/liquidityPoolAmounts/current"]

data UNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent  

-- | /Optional Param/ "id" - Smart contract address of the pool.
instance HasOptionalParam UNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent Id where
  applyOptionalParam req (Id xs) =
    req `addQuery` toQuery ("id", Just xs)
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolAmountsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/liquidityPoolDailySnapshots\/current@
-- 
-- LiquidityPoolDailySnapshots (current)
-- 
-- Gets liquidityPoolDailySnapshots.
-- 
uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMLiquidityPoolDailySnapshotsCurrent MimeNoContent [UNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTO] accept
uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/liquidityPoolDailySnapshots/current"]

data UNISWAPV3ETHEREUMLiquidityPoolDailySnapshotsCurrent  

-- | /Optional Param/ "pool" - Pool this snapshot belongs to.
instance HasOptionalParam UNISWAPV3ETHEREUMLiquidityPoolDailySnapshotsCurrent Pool where
  applyOptionalParam req (Pool xs) =
    req `addQuery` toQuery ("pool", Just xs)
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolDailySnapshotsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolDailySnapshotsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolDailySnapshotsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolDailySnapshotsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMLiquidityPoolFeesCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/liquidityPoolFees\/current@
-- 
-- LiquidityPoolFees (current)
-- 
-- Gets liquidityPoolFees.
-- 
uNISWAPV3ETHEREUMLiquidityPoolFeesCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMLiquidityPoolFeesCurrent MimeNoContent [UNISWAPV3ETHEREUMLiquidityPoolFeeDTO] accept
uNISWAPV3ETHEREUMLiquidityPoolFeesCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/liquidityPoolFees/current"]

data UNISWAPV3ETHEREUMLiquidityPoolFeesCurrent  
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolFeesCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolFeesCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolFeesCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolFeesCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/liquidityPoolHourlySnapshots\/current@
-- 
-- LiquidityPoolHourlySnapshots (current)
-- 
-- Gets liquidityPoolHourlySnapshots.
-- 
uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent MimeNoContent [UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO] accept
uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/liquidityPoolHourlySnapshots/current"]

data UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent  

-- | /Optional Param/ "pool" - The pool this snapshot belongs to
instance HasOptionalParam UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent Pool where
  applyOptionalParam req (Pool xs) =
    req `addQuery` toQuery ("pool", Just xs)
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMLiquidityPoolsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/liquidityPools\/current@
-- 
-- LiquidityPools (current)
-- 
-- Gets liquidityPools.
-- 
uNISWAPV3ETHEREUMLiquidityPoolsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMLiquidityPoolsCurrent MimeNoContent [UNISWAPV3ETHEREUMLiquidityPoolDTO] accept
uNISWAPV3ETHEREUMLiquidityPoolsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/liquidityPools/current"]

data UNISWAPV3ETHEREUMLiquidityPoolsCurrent  

-- | /Optional Param/ "id" - Smart contract address of the pool.
instance HasOptionalParam UNISWAPV3ETHEREUMLiquidityPoolsCurrent Id where
  applyOptionalParam req (Id xs) =
    req `addQuery` toQuery ("id", Just xs)
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMLiquidityPoolsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMPositionSnapshotsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/positionSnapshots\/current@
-- 
-- PositionSnapshots (current)
-- 
-- Gets positionSnapshots.
-- 
uNISWAPV3ETHEREUMPositionSnapshotsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMPositionSnapshotsCurrent MimeNoContent [UNISWAPV3ETHEREUMPositionSnapshotDTO] accept
uNISWAPV3ETHEREUMPositionSnapshotsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/positionSnapshots/current"]

data UNISWAPV3ETHEREUMPositionSnapshotsCurrent  
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMPositionSnapshotsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMPositionSnapshotsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMPositionSnapshotsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMPositionSnapshotsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMPositionsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/positions\/current@
-- 
-- Positions (current)
-- 
-- Gets positions.
-- 
uNISWAPV3ETHEREUMPositionsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMPositionsCurrent MimeNoContent [UNISWAPV3ETHEREUMPositionDTO] accept
uNISWAPV3ETHEREUMPositionsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/positions/current"]

data UNISWAPV3ETHEREUMPositionsCurrent  

-- | /Optional Param/ "pool" - The liquidity pool in which this position was opened
instance HasOptionalParam UNISWAPV3ETHEREUMPositionsCurrent Pool where
  applyOptionalParam req (Pool xs) =
    req `addQuery` toQuery ("pool", Just xs)
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMPositionsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMPositionsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMPositionsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMPositionsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMRewardTokensCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/rewardTokens\/current@
-- 
-- RewardTokens (current)
-- 
-- Gets rewardTokens.
-- 
uNISWAPV3ETHEREUMRewardTokensCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMRewardTokensCurrent MimeNoContent [UNISWAPV3ETHEREUMRewardTokenDTO] accept
uNISWAPV3ETHEREUMRewardTokensCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/rewardTokens/current"]

data UNISWAPV3ETHEREUMRewardTokensCurrent  
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMRewardTokensCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMRewardTokensCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMRewardTokensCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMRewardTokensCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMSwapsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/swaps\/current@
-- 
-- Swaps (current)
-- 
-- Gets swaps.
-- 
uNISWAPV3ETHEREUMSwapsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMSwapsCurrent MimeNoContent [UNISWAPV3ETHEREUMSwapDTO] accept
uNISWAPV3ETHEREUMSwapsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/swaps/current"]

data UNISWAPV3ETHEREUMSwapsCurrent  
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMSwapsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMSwapsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMSwapsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMSwapsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMTickDailySnapshotsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/tickDailySnapshots\/current@
-- 
-- TickDailySnapshots (current)
-- 
-- Gets tickDailySnapshots.
-- 
uNISWAPV3ETHEREUMTickDailySnapshotsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMTickDailySnapshotsCurrent MimeNoContent [UNISWAPV3ETHEREUMTickDailySnapshotDTO] accept
uNISWAPV3ETHEREUMTickDailySnapshotsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/tickDailySnapshots/current"]

data UNISWAPV3ETHEREUMTickDailySnapshotsCurrent  

-- | /Optional Param/ "pool" - liquidity pool this tick belongs to
instance HasOptionalParam UNISWAPV3ETHEREUMTickDailySnapshotsCurrent Pool where
  applyOptionalParam req (Pool xs) =
    req `addQuery` toQuery ("pool", Just xs)
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMTickDailySnapshotsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMTickDailySnapshotsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMTickDailySnapshotsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMTickDailySnapshotsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMTickHourlySnapshotsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/tickHourlySnapshots\/current@
-- 
-- TickHourlySnapshots (current)
-- 
-- Gets tickHourlySnapshots.
-- 
uNISWAPV3ETHEREUMTickHourlySnapshotsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMTickHourlySnapshotsCurrent MimeNoContent [UNISWAPV3ETHEREUMTickHourlySnapshotDTO] accept
uNISWAPV3ETHEREUMTickHourlySnapshotsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/tickHourlySnapshots/current"]

data UNISWAPV3ETHEREUMTickHourlySnapshotsCurrent  

-- | /Optional Param/ "pool" - liquidity pool this tick belongs to
instance HasOptionalParam UNISWAPV3ETHEREUMTickHourlySnapshotsCurrent Pool where
  applyOptionalParam req (Pool xs) =
    req `addQuery` toQuery ("pool", Just xs)
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMTickHourlySnapshotsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMTickHourlySnapshotsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMTickHourlySnapshotsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMTickHourlySnapshotsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMTicksCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/ticks\/current@
-- 
-- Ticks (current)
-- 
-- Gets ticks.
-- 
uNISWAPV3ETHEREUMTicksCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMTicksCurrent MimeNoContent [UNISWAPV3ETHEREUMTickDTO] accept
uNISWAPV3ETHEREUMTicksCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/ticks/current"]

data UNISWAPV3ETHEREUMTicksCurrent  

-- | /Optional Param/ "pool" - Liquidity pool this tick belongs to
instance HasOptionalParam UNISWAPV3ETHEREUMTicksCurrent Pool where
  applyOptionalParam req (Pool xs) =
    req `addQuery` toQuery ("pool", Just xs)
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMTicksCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMTicksCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMTicksCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMTicksCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/tokenWhiteListSymbols\/current@
-- 
-- TokenWhiteListSymbols (current)
-- 
-- Gets tokenWhiteListSymbols.
-- 
uNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent MimeNoContent [UNISWAPV3ETHEREUMTokenWhiteListSymbolDTO] accept
uNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/tokenWhiteListSymbols/current"]

data UNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent  
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMTokenWhiteListSymbolsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMTokenWhiteListsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/tokenWhiteLists\/current@
-- 
-- TokenWhiteLists (current)
-- 
-- Gets tokenWhiteLists.
-- 
uNISWAPV3ETHEREUMTokenWhiteListsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMTokenWhiteListsCurrent MimeNoContent [UNISWAPV3ETHEREUMTokenWhiteListDTO] accept
uNISWAPV3ETHEREUMTokenWhiteListsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/tokenWhiteLists/current"]

data UNISWAPV3ETHEREUMTokenWhiteListsCurrent  
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMTokenWhiteListsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMTokenWhiteListsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMTokenWhiteListsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMTokenWhiteListsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMTokensCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/tokens\/current@
-- 
-- Tokens (current)
-- 
-- Gets tokens.
-- 
uNISWAPV3ETHEREUMTokensCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMTokensCurrent MimeNoContent [UNISWAPV3ETHEREUMTokenDTO] accept
uNISWAPV3ETHEREUMTokensCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/tokens/current"]

data UNISWAPV3ETHEREUMTokensCurrent  

-- | /Optional Param/ "id" - Smart contract address of the token.
instance HasOptionalParam UNISWAPV3ETHEREUMTokensCurrent Id where
  applyOptionalParam req (Id xs) =
    req `addQuery` toQuery ("id", Just xs)
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMTokensCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMTokensCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMTokensCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMTokensCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/usageMetricsDailySnapshots\/current@
-- 
-- UsageMetricsDailySnapshots (current)
-- 
-- Gets usageMetricsDailySnapshots.
-- 
uNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent MimeNoContent [UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO] accept
uNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/usageMetricsDailySnapshots/current"]

data UNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent  
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMUsageMetricsDailySnapshotsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/usageMetricsHourlySnapshots\/current@
-- 
-- UsageMetricsHourlySnapshots (current)
-- 
-- Gets usageMetricsHourlySnapshots.
-- 
uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent MimeNoContent [UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO] accept
uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/usageMetricsHourlySnapshots/current"]

data UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent  
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotsCurrent MimePlainText


-- *** uNISWAPV3ETHEREUMWithdrawsCurrent

-- | @GET \/v1\/dapps\/uniswap-v3-ethereum\/withdraws\/current@
-- 
-- Withdraws (current)
-- 
-- Gets withdraws.
-- 
uNISWAPV3ETHEREUMWithdrawsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest UNISWAPV3ETHEREUMWithdrawsCurrent MimeNoContent [UNISWAPV3ETHEREUMWithdrawDTO] accept
uNISWAPV3ETHEREUMWithdrawsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/uniswap-v3-ethereum/withdraws/current"]

data UNISWAPV3ETHEREUMWithdrawsCurrent  
-- | @application/json@
instance Produces UNISWAPV3ETHEREUMWithdrawsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces UNISWAPV3ETHEREUMWithdrawsCurrent MimeXMsgpack
-- | @text/json@
instance Produces UNISWAPV3ETHEREUMWithdrawsCurrent MimeTextJson
-- | @text/plain@
instance Produces UNISWAPV3ETHEREUMWithdrawsCurrent MimePlainText

