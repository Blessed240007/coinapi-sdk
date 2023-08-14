{-
   On Chain Dapps - REST API

    This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

   OpenAPI Version: 3.0.1
   On Chain Dapps - REST API API version: v1
   Contact: support@coinapi.io
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : OnChainDapps-REST.API.PANCAKESWAPV3ETHEREUM
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module OnChainDapps-REST.API.PANCAKESWAPV3ETHEREUM where

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


-- ** PANCAKESWAPV3ETHEREUM

-- *** pANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent

-- | @GET \/v1\/dapps\/pancakeswap-v3-ethereum\/liquidityPools\/current@
-- 
-- LiquidityPools (current)
-- 
-- Gets liquidityPools.
-- 
pANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent MimeNoContent [PANCAKESWAPV3ETHEREUMLiquidityPoolDTO] accept
pANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/pancakeswap-v3-ethereum/liquidityPools/current"]

data PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent  

-- | /Optional Param/ "id" - Smart contract address of the pool.
instance HasOptionalParam PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent Id where
  applyOptionalParam req (Id xs) =
    req `addQuery` toQuery ("id", Just xs)
-- | @application/json@
instance Produces PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent MimeXMsgpack
-- | @text/json@
instance Produces PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent MimeTextJson
-- | @text/plain@
instance Produces PANCAKESWAPV3ETHEREUMLiquidityPoolsCurrent MimePlainText


-- *** pANCAKESWAPV3ETHEREUMSwapsCurrent

-- | @GET \/v1\/dapps\/pancakeswap-v3-ethereum\/swaps\/current@
-- 
-- Swaps (current)
-- 
-- Gets swaps.
-- 
pANCAKESWAPV3ETHEREUMSwapsCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest PANCAKESWAPV3ETHEREUMSwapsCurrent MimeNoContent [PANCAKESWAPV3ETHEREUMSwapDTO] accept
pANCAKESWAPV3ETHEREUMSwapsCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/pancakeswap-v3-ethereum/swaps/current"]

data PANCAKESWAPV3ETHEREUMSwapsCurrent  
-- | @application/json@
instance Produces PANCAKESWAPV3ETHEREUMSwapsCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces PANCAKESWAPV3ETHEREUMSwapsCurrent MimeXMsgpack
-- | @text/json@
instance Produces PANCAKESWAPV3ETHEREUMSwapsCurrent MimeTextJson
-- | @text/plain@
instance Produces PANCAKESWAPV3ETHEREUMSwapsCurrent MimePlainText


-- *** pANCAKESWAPV3ETHEREUMTokensCurrent

-- | @GET \/v1\/dapps\/pancakeswap-v3-ethereum\/tokens\/current@
-- 
-- Tokens (current)
-- 
-- Gets tokens.
-- 
pANCAKESWAPV3ETHEREUMTokensCurrent
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainDapps-RESTRequest PANCAKESWAPV3ETHEREUMTokensCurrent MimeNoContent [PANCAKESWAPV3ETHEREUMTokenDTO] accept
pANCAKESWAPV3ETHEREUMTokensCurrent  _ =
  _mkRequest "GET" ["/v1/dapps/pancakeswap-v3-ethereum/tokens/current"]

data PANCAKESWAPV3ETHEREUMTokensCurrent  

-- | /Optional Param/ "id" - Smart contract address of the token.
instance HasOptionalParam PANCAKESWAPV3ETHEREUMTokensCurrent Id where
  applyOptionalParam req (Id xs) =
    req `addQuery` toQuery ("id", Just xs)
-- | @application/json@
instance Produces PANCAKESWAPV3ETHEREUMTokensCurrent MimeJSON
-- | @application/x-msgpack@
instance Produces PANCAKESWAPV3ETHEREUMTokensCurrent MimeXMsgpack
-- | @text/json@
instance Produces PANCAKESWAPV3ETHEREUMTokensCurrent MimeTextJson
-- | @text/plain@
instance Produces PANCAKESWAPV3ETHEREUMTokensCurrent MimePlainText

