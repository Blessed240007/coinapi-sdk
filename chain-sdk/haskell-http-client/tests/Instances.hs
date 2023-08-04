{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import OnChainDapps-REST.Model
import OnChainDapps-REST.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V
import Data.String (fromString)

import Control.Monad
import Data.Char (isSpace)
import Data.List (sort)
import Test.QuickCheck

import ApproxEq

instance Arbitrary T.Text where
  arbitrary = T.pack <$> arbitrary

instance Arbitrary TI.Day where
  arbitrary = TI.ModifiedJulianDay . (2000 +) <$> arbitrary
  shrink = (TI.ModifiedJulianDay <$>) . shrink . TI.toModifiedJulianDay

instance Arbitrary TI.UTCTime where
  arbitrary =
    TI.UTCTime <$> arbitrary <*> (TI.secondsToDiffTime <$> choose (0, 86401))

instance Arbitrary BL.ByteString where
    arbitrary = BL.pack <$> arbitrary
    shrink xs = BL.pack <$> shrink (BL.unpack xs)

instance Arbitrary ByteArray where
    arbitrary = ByteArray <$> arbitrary
    shrink (ByteArray xs) = ByteArray <$> shrink xs

instance Arbitrary Binary where
    arbitrary = Binary <$> arbitrary
    shrink (Binary xs) = Binary <$> shrink xs

instance Arbitrary DateTime where
    arbitrary = DateTime <$> arbitrary
    shrink (DateTime xs) = DateTime <$> shrink xs

instance Arbitrary Date where
    arbitrary = Date <$> arbitrary
    shrink (Date xs) = Date <$> shrink xs

#if MIN_VERSION_aeson(2,0,0)
#else
-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = arbitraryValue
#endif

arbitraryValue :: Gen A.Value
arbitraryValue =
  frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (fromString k, v)
      simpleAndArrays = frequency [(1, sized sizedArray), (4, simpleTypes)]
      arrayTypes = sized sizedArray
      objectTypes = sized sizedObject
      sizedArray n = liftM (A.Array . V.fromList) $ replicateM n simpleTypes
      sizedObject n =
        liftM (A.object . map mapF) $
        replicateM n $ (,) <$> (arbitrary :: Gen String) <*> simpleAndArrays

-- | Checks if a given list has no duplicates in _O(n log n)_.
hasNoDups
  :: (Ord a)
  => [a] -> Bool
hasNoDups = go Set.empty
  where
    go _ [] = True
    go s (x:xs)
      | s' <- Set.insert x s
      , Set.size s' > Set.size s = go s' xs
      | otherwise = False

instance ApproxEq TI.Day where
  (=~) = (==)

arbitraryReduced :: Arbitrary a => Int -> Gen a
arbitraryReduced n = resize (n `div` 2) arbitrary

arbitraryReducedMaybe :: Arbitrary a => Int -> Gen (Maybe a)
arbitraryReducedMaybe 0 = elements [Nothing]
arbitraryReducedMaybe n = arbitraryReduced n

arbitraryReducedMaybeValue :: Int -> Gen (Maybe A.Value)
arbitraryReducedMaybeValue 0 = elements [Nothing]
arbitraryReducedMaybeValue n = do
  generated <- arbitraryReduced n
  if generated == Just A.Null
    then return Nothing
    else return generated

-- * Models

instance Arbitrary CRYPTOPUNKSBidDTO where
  arbitrary = sized genCRYPTOPUNKSBidDTO

genCRYPTOPUNKSBidDTO :: Int -> Gen CRYPTOPUNKSBidDTO
genCRYPTOPUNKSBidDTO n =
  CRYPTOPUNKSBidDTO
    <$> arbitraryReducedMaybe n -- cRYPTOPUNKSBidDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSBidDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSBidDTOBlockNumber :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSBidDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSBidDTOBlockRange :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSBidDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSBidDTOTokensBid :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSBidDTOTokenId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSBidDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSBidDTOBidder :: Maybe Text
  
instance Arbitrary CRYPTOPUNKSCollectionDTO where
  arbitrary = sized genCRYPTOPUNKSCollectionDTO

genCRYPTOPUNKSCollectionDTO :: Int -> Gen CRYPTOPUNKSCollectionDTO
genCRYPTOPUNKSCollectionDTO n =
  CRYPTOPUNKSCollectionDTO
    <$> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDTOBlockRange :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDTOTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDTORoyaltyFee :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDTOCumulativeTradeVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDTOMarketplaceRevenueEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDTOCreatorRevenueEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDTOTotalRevenueEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDTOTradeCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDTOBuyerCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDTOSellerCount :: Maybe Int
  
instance Arbitrary CRYPTOPUNKSCollectionDailySnapshotDTO where
  arbitrary = sized genCRYPTOPUNKSCollectionDailySnapshotDTO

genCRYPTOPUNKSCollectionDailySnapshotDTO :: Int -> Gen CRYPTOPUNKSCollectionDailySnapshotDTO
genCRYPTOPUNKSCollectionDailySnapshotDTO n =
  CRYPTOPUNKSCollectionDailySnapshotDTO
    <$> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTOBlockNumber :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTOBlockRange :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTOCollection :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTORoyaltyFee :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTODailyMinSalePrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTODailyMaxSalePrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTOCumulativeTradeVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTODailyTradeVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTOMarketplaceRevenueEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTOCreatorRevenueEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTOTotalRevenueEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTOTradeCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSCollectionDailySnapshotDTODailyTradedItemCount :: Maybe Int
  
instance Arbitrary CRYPTOPUNKSDataSourcesDTO where
  arbitrary = sized genCRYPTOPUNKSDataSourcesDTO

genCRYPTOPUNKSDataSourcesDTO :: Int -> Gen CRYPTOPUNKSDataSourcesDTO
genCRYPTOPUNKSDataSourcesDTO n =
  CRYPTOPUNKSDataSourcesDTO
    <$> arbitraryReducedMaybe n -- cRYPTOPUNKSDataSourcesDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSDataSourcesDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSDataSourcesDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSDataSourcesDTOVid :: Maybe Int
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSDataSourcesDTOBlockRange :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSDataSourcesDTOCausalityRegion :: Maybe Int
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSDataSourcesDTOManifestIdx :: Maybe Int
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSDataSourcesDTOParent :: Maybe Int
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSDataSourcesDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSDataSourcesDTOParam :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSDataSourcesDTOContext :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSDataSourcesDTODoneAt :: Maybe Int
  
instance Arbitrary CRYPTOPUNKSItemDTO where
  arbitrary = sized genCRYPTOPUNKSItemDTO

genCRYPTOPUNKSItemDTO :: Int -> Gen CRYPTOPUNKSItemDTO
genCRYPTOPUNKSItemDTO n =
  CRYPTOPUNKSItemDTO
    <$> arbitraryReducedMaybe n -- cRYPTOPUNKSItemDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSItemDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSItemDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSItemDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSItemDTOBlockRange :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSItemDTOId :: Maybe Text
  
instance Arbitrary CRYPTOPUNKSMarketPlaceDTO where
  arbitrary = sized genCRYPTOPUNKSMarketPlaceDTO

genCRYPTOPUNKSMarketPlaceDTO :: Int -> Gen CRYPTOPUNKSMarketPlaceDTO
genCRYPTOPUNKSMarketPlaceDTO n =
  CRYPTOPUNKSMarketPlaceDTO
    <$> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTOBlockRange :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTOSlug :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTOSchemaVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTOSubgraphVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTOMethodologyVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTOCollectionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTOTradeCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTOCumulativeTradeVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTOMarketplaceRevenueEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTOCreatorRevenueEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTOTotalRevenueEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketPlaceDTOCumulativeUniqueTraders :: Maybe Int
  
instance Arbitrary CRYPTOPUNKSMarketplaceDailySnapshotDTO where
  arbitrary = sized genCRYPTOPUNKSMarketplaceDailySnapshotDTO

genCRYPTOPUNKSMarketplaceDailySnapshotDTO :: Int -> Gen CRYPTOPUNKSMarketplaceDailySnapshotDTO
genCRYPTOPUNKSMarketplaceDailySnapshotDTO n =
  CRYPTOPUNKSMarketplaceDailySnapshotDTO
    <$> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTOBlockRange :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTOMarketplace :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTOCollectionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTOCumulativeTradeVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTOMarketplaceRevenueEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTOCreatorRevenueEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTOTotalRevenueEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTOTradeCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTOCumulativeUniqueTraders :: Maybe Int
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTODailyActiveTraders :: Maybe Int
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTODailyTradedCollectionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSMarketplaceDailySnapshotDTODailyTradedItemCount :: Maybe Int
  
instance Arbitrary CRYPTOPUNKSTradeDTO where
  arbitrary = sized genCRYPTOPUNKSTradeDTO

genCRYPTOPUNKSTradeDTO :: Int -> Gen CRYPTOPUNKSTradeDTO
genCRYPTOPUNKSTradeDTO n =
  CRYPTOPUNKSTradeDTO
    <$> arbitraryReducedMaybe n -- cRYPTOPUNKSTradeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSTradeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSTradeDTOBlockNumber :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSTradeDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSTradeDTOBlockRange :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSTradeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSTradeDTOTransactionHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSTradeDTOLogIndex :: Maybe Int
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSTradeDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSTradeDTOIsBundle :: Maybe Bool
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSTradeDTOCollection :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSTradeDTOTokenId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSTradeDTOAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSTradeDTOPriceEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSTradeDTOBuyer :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSTradeDTOSeller :: Maybe Text
  
instance Arbitrary CRYPTOPUNKSUserDTO where
  arbitrary = sized genCRYPTOPUNKSUserDTO

genCRYPTOPUNKSUserDTO :: Int -> Gen CRYPTOPUNKSUserDTO
genCRYPTOPUNKSUserDTO n =
  CRYPTOPUNKSUserDTO
    <$> arbitraryReducedMaybe n -- cRYPTOPUNKSUserDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSUserDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSUserDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSUserDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSUserDTOBlockRange :: Maybe Text
    <*> arbitraryReducedMaybe n -- cRYPTOPUNKSUserDTOId :: Maybe Text
  
instance Arbitrary CowOrderDTO where
  arbitrary = sized genCowOrderDTO

genCowOrderDTO :: Int -> Gen CowOrderDTO
genCowOrderDTO n =
  CowOrderDTO
    <$> arbitraryReducedMaybe n -- cowOrderDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowOrderDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowOrderDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cowOrderDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowOrderDTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowOrderDTOTradesTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowOrderDTOInvalidateTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowOrderDTOPresignTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowOrderDTOIsSigned :: Maybe Bool
    <*> arbitraryReducedMaybe n -- cowOrderDTOIsValid :: Maybe Bool
    <*> arbitraryReducedMaybe n -- cowOrderDTOVid :: Maybe Integer
  
instance Arbitrary CowSettlementDTO where
  arbitrary = sized genCowSettlementDTO

genCowSettlementDTO :: Int -> Gen CowSettlementDTO
genCowSettlementDTO n =
  CowSettlementDTO
    <$> arbitraryReducedMaybe n -- cowSettlementDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowSettlementDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowSettlementDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cowSettlementDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowSettlementDTOSolver :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowSettlementDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowSettlementDTOFirstTradeTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowSettlementDTOVid :: Maybe Integer
  
instance Arbitrary CowTokenDTO where
  arbitrary = sized genCowTokenDTO

genCowTokenDTO :: Int -> Gen CowTokenDTO
genCowTokenDTO n =
  CowTokenDTO
    <$> arbitraryReducedMaybe n -- cowTokenDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowTokenDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowTokenDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cowTokenDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTokenDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTokenDTOFirstTradeTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTokenDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTokenDTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTokenDTODecimals :: Maybe Int
    <*> arbitraryReducedMaybe n -- cowTokenDTOTotalVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTokenDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cowTokenDTOTokenSymbol :: Maybe Text
  
instance Arbitrary CowTradeDTO where
  arbitrary = sized genCowTradeDTO

genCowTradeDTO :: Int -> Gen CowTradeDTO
genCowTradeDTO n =
  CowTradeDTO
    <$> arbitraryReducedMaybe n -- cowTradeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowTradeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowTradeDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cowTradeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOGasPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOGasLimit :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOFeeAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOSettlement :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOBuyAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOSellAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOSellToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOBuyToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOOrder :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cowTradeDTOPoolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOTransactionId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOEvaluatedPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- cowTradeDTOEvaluatedAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- cowTradeDTOEvaluatedAggressor :: Maybe TransactionsETradeAggressiveSide
  
instance Arbitrary CowUserDTO where
  arbitrary = sized genCowUserDTO

genCowUserDTO :: Int -> Gen CowUserDTO
genCowUserDTO n =
  CowUserDTO
    <$> arbitraryReducedMaybe n -- cowUserDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowUserDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowUserDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cowUserDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowUserDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowUserDTOFirstTradeTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowUserDTOIsSolver :: Maybe Bool
    <*> arbitraryReducedMaybe n -- cowUserDTOVid :: Maybe Integer
  
instance Arbitrary CurveAccountDTO where
  arbitrary = sized genCurveAccountDTO

genCurveAccountDTO :: Int -> Gen CurveAccountDTO
genCurveAccountDTO n =
  CurveAccountDTO
    <$> arbitraryReducedMaybe n -- curveAccountDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveAccountDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveAccountDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveAccountDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAccountDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAccountDTOVid :: Maybe Integer
  
instance Arbitrary CurveAddLiquidityEventDTO where
  arbitrary = sized genCurveAddLiquidityEventDTO

genCurveAddLiquidityEventDTO :: Int -> Gen CurveAddLiquidityEventDTO
genCurveAddLiquidityEventDTO n =
  CurveAddLiquidityEventDTO
    <$> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOProvider :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOTokenAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOFees :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOInvariant :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOTokenSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOVid :: Maybe Integer
  
instance Arbitrary CurveAdminFeeChangeLogDTO where
  arbitrary = sized genCurveAdminFeeChangeLogDTO

genCurveAdminFeeChangeLogDTO :: Int -> Gen CurveAdminFeeChangeLogDTO
genCurveAdminFeeChangeLogDTO n =
  CurveAdminFeeChangeLogDTO
    <$> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOVid :: Maybe Integer
  
instance Arbitrary CurveAmplificationCoeffChangeLogDTO where
  arbitrary = sized genCurveAmplificationCoeffChangeLogDTO

genCurveAmplificationCoeffChangeLogDTO :: Int -> Gen CurveAmplificationCoeffChangeLogDTO
genCurveAmplificationCoeffChangeLogDTO n =
  CurveAmplificationCoeffChangeLogDTO
    <$> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOVid :: Maybe Integer
  
instance Arbitrary CurveCoinDTO where
  arbitrary = sized genCurveCoinDTO

genCurveCoinDTO :: Int -> Gen CurveCoinDTO
genCurveCoinDTO n =
  CurveCoinDTO
    <$> arbitraryReducedMaybe n -- curveCoinDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveCoinDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveCoinDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveCoinDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTOIndex :: Maybe Int
    <*> arbitraryReducedMaybe n -- curveCoinDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTOUnderlying :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTOBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTORate :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTOUpdated :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTOUpdatedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTOUpdatedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveCoinDTOBlockRange :: Maybe Text
  
instance Arbitrary CurveContractDTO where
  arbitrary = sized genCurveContractDTO

genCurveContractDTO :: Int -> Gen CurveContractDTO
genCurveContractDTO n =
  CurveContractDTO
    <$> arbitraryReducedMaybe n -- curveContractDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveContractDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveContractDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveContractDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractDTODescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractDTOAdded :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractDTOAddedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractDTOAddedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractDTOModified :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractDTOModifiedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractDTOModifiedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractDTOVid :: Maybe Integer
  
instance Arbitrary CurveContractVersionDTO where
  arbitrary = sized genCurveContractVersionDTO

genCurveContractVersionDTO :: Int -> Gen CurveContractVersionDTO
genCurveContractVersionDTO n =
  CurveContractVersionDTO
    <$> arbitraryReducedMaybe n -- curveContractVersionDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveContractVersionDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOContract :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOAdded :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOAddedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOAddedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOVid :: Maybe Integer
  
instance Arbitrary CurveDailyVolumeDTO where
  arbitrary = sized genCurveDailyVolumeDTO

genCurveDailyVolumeDTO :: Int -> Gen CurveDailyVolumeDTO
genCurveDailyVolumeDTO n =
  CurveDailyVolumeDTO
    <$> arbitraryReducedMaybe n -- curveDailyVolumeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveDailyVolumeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveDailyVolumeDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveDailyVolumeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveDailyVolumeDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveDailyVolumeDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveDailyVolumeDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveDailyVolumeDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveDailyVolumeDTOBlockRange :: Maybe Text
  
instance Arbitrary CurveExchangeDTO where
  arbitrary = sized genCurveExchangeDTO

genCurveExchangeDTO :: Int -> Gen CurveExchangeDTO
genCurveExchangeDTO n =
  CurveExchangeDTO
    <$> arbitraryReducedMaybe n -- curveExchangeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveExchangeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveExchangeDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveExchangeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOBuyer :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOReceiver :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOTokenSold :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOTokenBought :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOAmountSold :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOAmountBought :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveExchangeDTOEvaluatedPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- curveExchangeDTOEvaluatedAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- curveExchangeDTOEvaluatedAggressor :: Maybe TransactionsETradeAggressiveSide
    <*> arbitraryReducedMaybe n -- curveExchangeDTOPoolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOTransactionId :: Maybe Text
  
instance Arbitrary CurveFeeChangeLogDTO where
  arbitrary = sized genCurveFeeChangeLogDTO

genCurveFeeChangeLogDTO :: Int -> Gen CurveFeeChangeLogDTO
genCurveFeeChangeLogDTO n =
  CurveFeeChangeLogDTO
    <$> arbitraryReducedMaybe n -- curveFeeChangeLogDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTOValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTOVid :: Maybe Integer
  
instance Arbitrary CurveGaugeDTO where
  arbitrary = sized genCurveGaugeDTO

genCurveGaugeDTO :: Int -> Gen CurveGaugeDTO
genCurveGaugeDTO n =
  CurveGaugeDTO
    <$> arbitraryReducedMaybe n -- curveGaugeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDTOType :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDTOCreated :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDTOCreatedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDTOCreatedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDTOVid :: Maybe Integer
  
instance Arbitrary CurveGaugeDepositDTO where
  arbitrary = sized genCurveGaugeDepositDTO

genCurveGaugeDepositDTO :: Int -> Gen CurveGaugeDepositDTO
genCurveGaugeDepositDTO n =
  CurveGaugeDepositDTO
    <$> arbitraryReducedMaybe n -- curveGaugeDepositDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeDepositDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeDepositDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeDepositDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDepositDTOGauge :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDepositDTOProvider :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDepositDTOValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDepositDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeDepositDTOBlockRange :: Maybe Text
  
instance Arbitrary CurveGaugeLiquidityDTO where
  arbitrary = sized genCurveGaugeLiquidityDTO

genCurveGaugeLiquidityDTO :: Int -> Gen CurveGaugeLiquidityDTO
genCurveGaugeLiquidityDTO n =
  CurveGaugeLiquidityDTO
    <$> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOGauge :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOOriginalBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOOriginalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOWorkingBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOWorkingSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOVid :: Maybe Integer
  
instance Arbitrary CurveGaugeTotalWeightDTO where
  arbitrary = sized genCurveGaugeTotalWeightDTO

genCurveGaugeTotalWeightDTO :: Int -> Gen CurveGaugeTotalWeightDTO
genCurveGaugeTotalWeightDTO n =
  CurveGaugeTotalWeightDTO
    <$> arbitraryReducedMaybe n -- curveGaugeTotalWeightDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeTotalWeightDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeTotalWeightDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeTotalWeightDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTotalWeightDTOTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTotalWeightDTOWeight :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTotalWeightDTOVid :: Maybe Integer
  
instance Arbitrary CurveGaugeTypeDTO where
  arbitrary = sized genCurveGaugeTypeDTO

genCurveGaugeTypeDTO :: Int -> Gen CurveGaugeTypeDTO
genCurveGaugeTypeDTO n =
  CurveGaugeTypeDTO
    <$> arbitraryReducedMaybe n -- curveGaugeTypeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeTypeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeTypeDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeTypeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTypeDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTypeDTOGaugeCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTypeDTOVid :: Maybe Integer
  
instance Arbitrary CurveGaugeTypeWeightDTO where
  arbitrary = sized genCurveGaugeTypeWeightDTO

genCurveGaugeTypeWeightDTO :: Int -> Gen CurveGaugeTypeWeightDTO
genCurveGaugeTypeWeightDTO n =
  CurveGaugeTypeWeightDTO
    <$> arbitraryReducedMaybe n -- curveGaugeTypeWeightDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeTypeWeightDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeTypeWeightDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeTypeWeightDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTypeWeightDTOType :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTypeWeightDTOTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTypeWeightDTOWeight :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTypeWeightDTOVid :: Maybe Integer
  
instance Arbitrary CurveGaugeWeightDTO where
  arbitrary = sized genCurveGaugeWeightDTO

genCurveGaugeWeightDTO :: Int -> Gen CurveGaugeWeightDTO
genCurveGaugeWeightDTO n =
  CurveGaugeWeightDTO
    <$> arbitraryReducedMaybe n -- curveGaugeWeightDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeWeightDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeWeightDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeWeightDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightDTOGauge :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightDTOTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightDTOWeight :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightDTOVid :: Maybe Integer
  
instance Arbitrary CurveGaugeWeightVoteDTO where
  arbitrary = sized genCurveGaugeWeightVoteDTO

genCurveGaugeWeightVoteDTO :: Int -> Gen CurveGaugeWeightVoteDTO
genCurveGaugeWeightVoteDTO n =
  CurveGaugeWeightVoteDTO
    <$> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTOGauge :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTOTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTOWeight :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTOVid :: Maybe Integer
  
instance Arbitrary CurveGaugeWithdrawDTO where
  arbitrary = sized genCurveGaugeWithdrawDTO

genCurveGaugeWithdrawDTO :: Int -> Gen CurveGaugeWithdrawDTO
genCurveGaugeWithdrawDTO n =
  CurveGaugeWithdrawDTO
    <$> arbitraryReducedMaybe n -- curveGaugeWithdrawDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeWithdrawDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeWithdrawDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeWithdrawDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWithdrawDTOGauge :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWithdrawDTOProvider :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWithdrawDTOValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWithdrawDTOVid :: Maybe Integer
  
instance Arbitrary CurveHourlyVolumeDTO where
  arbitrary = sized genCurveHourlyVolumeDTO

genCurveHourlyVolumeDTO :: Int -> Gen CurveHourlyVolumeDTO
genCurveHourlyVolumeDTO n =
  CurveHourlyVolumeDTO
    <$> arbitraryReducedMaybe n -- curveHourlyVolumeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveHourlyVolumeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveHourlyVolumeDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveHourlyVolumeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveHourlyVolumeDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveHourlyVolumeDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveHourlyVolumeDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveHourlyVolumeDTOVid :: Maybe Integer
  
instance Arbitrary CurveLpTokenDTO where
  arbitrary = sized genCurveLpTokenDTO

genCurveLpTokenDTO :: Int -> Gen CurveLpTokenDTO
genCurveLpTokenDTO n =
  CurveLpTokenDTO
    <$> arbitraryReducedMaybe n -- curveLpTokenDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveLpTokenDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveLpTokenDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveLpTokenDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveLpTokenDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveLpTokenDTODecimals :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveLpTokenDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveLpTokenDTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveLpTokenDTOGauge :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveLpTokenDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveLpTokenDTOVid :: Maybe Integer
  
instance Arbitrary CurvePoolDTO where
  arbitrary = sized genCurvePoolDTO

genCurvePoolDTO :: Int -> Gen CurvePoolDTO
genCurvePoolDTO n =
  CurvePoolDTO
    <$> arbitraryReducedMaybe n -- curvePoolDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curvePoolDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curvePoolDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curvePoolDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOIsMeta :: Maybe Bool
    <*> arbitraryReducedMaybe n -- curvePoolDTORegistryAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOSwapAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOLpToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOCoinCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOUnderlyingCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOA :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOFee :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOAdminFee :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOVirtualPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOLocked :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOAddedAt :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curvePoolDTOAddedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOAddedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTORemovedAt :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTORemovedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTORemovedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOExchangeCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOGaugeCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curvePoolDTOEvaluatedAsk :: Maybe Double
  
instance Arbitrary CurveProposalDTO where
  arbitrary = sized genCurveProposalDTO

genCurveProposalDTO :: Int -> Gen CurveProposalDTO
genCurveProposalDTO n =
  CurveProposalDTO
    <$> arbitraryReducedMaybe n -- curveProposalDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveProposalDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveProposalDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveProposalDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTONumber :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOApp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOCreator :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOExecutionScript :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOExpireDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOMinimumQuorum :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTORequiredSupport :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOSnapshotBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOVotingPower :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOMetadata :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOText :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOVoteCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOPositiveVoteCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTONegativeVoteCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOCurrentQuorum :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOCurrentSupport :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOStakedSupport :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOTotalStaked :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOCreated :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOCreatedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOCreatedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOUpdated :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOUpdatedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOUpdatedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOExecuted :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOExecutedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOExecutedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOVid :: Maybe Integer
  
instance Arbitrary CurveProposalVoteDTO where
  arbitrary = sized genCurveProposalVoteDTO

genCurveProposalVoteDTO :: Int -> Gen CurveProposalVoteDTO
genCurveProposalVoteDTO n =
  CurveProposalVoteDTO
    <$> arbitraryReducedMaybe n -- curveProposalVoteDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOProposal :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOSupports :: Maybe Bool
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOStake :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOVoter :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOCreated :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOCreatedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOCreatedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOVid :: Maybe Integer
  
instance Arbitrary CurveRemoveLiquidityEventDTO where
  arbitrary = sized genCurveRemoveLiquidityEventDTO

genCurveRemoveLiquidityEventDTO :: Int -> Gen CurveRemoveLiquidityEventDTO
genCurveRemoveLiquidityEventDTO n =
  CurveRemoveLiquidityEventDTO
    <$> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOProvider :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOTokenAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOFees :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOTokenSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOInvariant :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOVid :: Maybe Integer
  
instance Arbitrary CurveRemoveLiquidityOneEventDTO where
  arbitrary = sized genCurveRemoveLiquidityOneEventDTO

genCurveRemoveLiquidityOneEventDTO :: Int -> Gen CurveRemoveLiquidityOneEventDTO
genCurveRemoveLiquidityOneEventDTO n =
  CurveRemoveLiquidityOneEventDTO
    <$> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOProvider :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOTokenAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOCoinAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOVid :: Maybe Integer
  
instance Arbitrary CurveSystemStateDTO where
  arbitrary = sized genCurveSystemStateDTO

genCurveSystemStateDTO :: Int -> Gen CurveSystemStateDTO
genCurveSystemStateDTO n =
  CurveSystemStateDTO
    <$> arbitraryReducedMaybe n -- curveSystemStateDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveSystemStateDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTORegistryContract :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOContractCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOGaugeCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOGaugeTypeCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOPoolCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOTokenCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOTotalPoolCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOUpdated :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOUpdatedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOUpdatedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOVid :: Maybe Integer
  
instance Arbitrary CurveTokenDTO where
  arbitrary = sized genCurveTokenDTO

genCurveTokenDTO :: Int -> Gen CurveTokenDTO
genCurveTokenDTO n =
  CurveTokenDTO
    <$> arbitraryReducedMaybe n -- curveTokenDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveTokenDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveTokenDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveTokenDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTokenDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTokenDTODecimals :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTokenDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTokenDTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTokenDTOPools :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- curveTokenDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveTokenDTOTokenSymbol :: Maybe Text
  
instance Arbitrary CurveTransferOwnershipEventDTO where
  arbitrary = sized genCurveTransferOwnershipEventDTO

genCurveTransferOwnershipEventDTO :: Int -> Gen CurveTransferOwnershipEventDTO
genCurveTransferOwnershipEventDTO n =
  CurveTransferOwnershipEventDTO
    <$> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTONewAdmin :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTOVid :: Maybe Integer
  
instance Arbitrary CurveUnderlyingCoinDTO where
  arbitrary = sized genCurveUnderlyingCoinDTO

genCurveUnderlyingCoinDTO :: Int -> Gen CurveUnderlyingCoinDTO
genCurveUnderlyingCoinDTO n =
  CurveUnderlyingCoinDTO
    <$> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOIndex :: Maybe Int
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOCoin :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOUpdated :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOUpdatedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOUpdatedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOVid :: Maybe Integer
  
instance Arbitrary CurveVotingAppDTO where
  arbitrary = sized genCurveVotingAppDTO

genCurveVotingAppDTO :: Int -> Gen CurveVotingAppDTO
genCurveVotingAppDTO n =
  CurveVotingAppDTO
    <$> arbitraryReducedMaybe n -- curveVotingAppDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveVotingAppDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOCodename :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOMinimumBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOMinimumQuorum :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOMinimumTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTORequiredSupport :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOVoteTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOProposalCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOVoteCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOVid :: Maybe Integer
  
instance Arbitrary CurveWeeklyVolumeDTO where
  arbitrary = sized genCurveWeeklyVolumeDTO

genCurveWeeklyVolumeDTO :: Int -> Gen CurveWeeklyVolumeDTO
genCurveWeeklyVolumeDTO n =
  CurveWeeklyVolumeDTO
    <$> arbitraryReducedMaybe n -- curveWeeklyVolumeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveWeeklyVolumeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveWeeklyVolumeDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveWeeklyVolumeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveWeeklyVolumeDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveWeeklyVolumeDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveWeeklyVolumeDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveWeeklyVolumeDTOVid :: Maybe Integer
  
instance Arbitrary DexBatchDTO where
  arbitrary = sized genDexBatchDTO

genDexBatchDTO :: Int -> Gen DexBatchDTO
genDexBatchDTO n =
  DexBatchDTO
    <$> arbitraryReducedMaybe n -- dexBatchDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexBatchDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexBatchDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexBatchDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexBatchDTOStartEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexBatchDTOEndEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexBatchDTOSolution :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexBatchDTOFirstSolutionEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexBatchDTOLastRevertEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexBatchDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexBatchDTOVid :: Maybe Integer
  
instance Arbitrary DexDepositDTO where
  arbitrary = sized genDexDepositDTO

genDexDepositDTO :: Int -> Gen DexDepositDTO
genDexDepositDTO n =
  DexDepositDTO
    <$> arbitraryReducedMaybe n -- dexDepositDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexDepositDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexDepositDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexDepositDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexDepositDTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexDepositDTOTokenAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexDepositDTOAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexDepositDTOBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexDepositDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexDepositDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexDepositDTOVid :: Maybe Integer
  
instance Arbitrary DexOrderDTO where
  arbitrary = sized genDexOrderDTO

genDexOrderDTO :: Int -> Gen DexOrderDTO
genDexOrderDTO n =
  DexOrderDTO
    <$> arbitraryReducedMaybe n -- dexOrderDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexOrderDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexOrderDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexOrderDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOOrderId :: Maybe Int
    <*> arbitraryReducedMaybe n -- dexOrderDTOFromBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOFromEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOUntilBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOUntilEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOBuyToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOSellToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOPriceNumerator :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOPriceDenominator :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOMaxSellAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOMinReceiveAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOSoldVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOBoughtVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOCancelEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTODeleteEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOTxLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOVid :: Maybe Integer
  
instance Arbitrary DexPriceDTO where
  arbitrary = sized genDexPriceDTO

genDexPriceDTO :: Int -> Gen DexPriceDTO
genDexPriceDTO n =
  DexPriceDTO
    <$> arbitraryReducedMaybe n -- dexPriceDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexPriceDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexPriceDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexPriceDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexPriceDTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexPriceDTOBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexPriceDTOPriceInOwlNumerator :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexPriceDTOPriceInOwlDenominator :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexPriceDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexPriceDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexPriceDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexPriceDTOVid :: Maybe Integer
  
instance Arbitrary DexSolutionDTO where
  arbitrary = sized genDexSolutionDTO

genDexSolutionDTO :: Int -> Gen DexSolutionDTO
genDexSolutionDTO n =
  DexSolutionDTO
    <$> arbitraryReducedMaybe n -- dexSolutionDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexSolutionDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexSolutionDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexSolutionDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOBatch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOSolver :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOFeeReward :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOObjectiveValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOUtility :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOTrades :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- dexSolutionDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTORevertEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOTxLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOVid :: Maybe Integer
  
instance Arbitrary DexStatsDTO where
  arbitrary = sized genDexStatsDTO

genDexStatsDTO :: Int -> Gen DexStatsDTO
genDexStatsDTO n =
  DexStatsDTO
    <$> arbitraryReducedMaybe n -- dexStatsDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexStatsDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexStatsDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexStatsDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexStatsDTOVolumeInOwl :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexStatsDTOUtilityInOwl :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexStatsDTOOwlBurnt :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexStatsDTOSettledBatchCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- dexStatsDTOSettledTradeCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- dexStatsDTOListedTokens :: Maybe Int
    <*> arbitraryReducedMaybe n -- dexStatsDTOVid :: Maybe Integer
  
instance Arbitrary DexTokenDTO where
  arbitrary = sized genDexTokenDTO

genDexTokenDTO :: Int -> Gen DexTokenDTO
genDexTokenDTO n =
  DexTokenDTO
    <$> arbitraryReducedMaybe n -- dexTokenDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexTokenDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexTokenDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexTokenDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTOFromBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTODecimals :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTOSellVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexTokenDTOTokenSymbol :: Maybe Text
  
instance Arbitrary DexTradeDTO where
  arbitrary = sized genDexTradeDTO

genDexTradeDTO :: Int -> Gen DexTradeDTO
genDexTradeDTO n =
  DexTradeDTO
    <$> arbitraryReducedMaybe n -- dexTradeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexTradeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexTradeDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexTradeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOOrder :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOSellVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOBuyVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOTradeBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOTradeEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOBuyToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOSellToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTORevertEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOTxLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexTradeDTOPoolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOTransactionId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOEvaluatedPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- dexTradeDTOEvaluatedAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- dexTradeDTOEvaluatedAggressor :: Maybe TransactionsETradeAggressiveSide
  
instance Arbitrary DexUserDTO where
  arbitrary = sized genDexUserDTO

genDexUserDTO :: Int -> Gen DexUserDTO
genDexUserDTO n =
  DexUserDTO
    <$> arbitraryReducedMaybe n -- dexUserDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexUserDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexUserDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexUserDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexUserDTOFromBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexUserDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexUserDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexUserDTOVid :: Maybe Integer
  
instance Arbitrary DexWithdrawDTO where
  arbitrary = sized genDexWithdrawDTO

genDexWithdrawDTO :: Int -> Gen DexWithdrawDTO
genDexWithdrawDTO n =
  DexWithdrawDTO
    <$> arbitraryReducedMaybe n -- dexWithdrawDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexWithdrawDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOTokenAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOCreateBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOVid :: Maybe Integer
  
instance Arbitrary DexWithdrawRequestDTO where
  arbitrary = sized genDexWithdrawRequestDTO

genDexWithdrawRequestDTO :: Int -> Gen DexWithdrawRequestDTO
genDexWithdrawRequestDTO n =
  DexWithdrawRequestDTO
    <$> arbitraryReducedMaybe n -- dexWithdrawRequestDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOTokenAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOWithdrawableFromBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOCreateBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOVid :: Maybe Integer
  
instance Arbitrary NumericsBigInteger where
  arbitrary = sized genNumericsBigInteger

genNumericsBigInteger :: Int -> Gen NumericsBigInteger
genNumericsBigInteger n =
  NumericsBigInteger
    <$> arbitraryReducedMaybe n -- numericsBigIntegerIsPowerOfTwo :: Maybe Bool
    <*> arbitraryReducedMaybe n -- numericsBigIntegerIsZero :: Maybe Bool
    <*> arbitraryReducedMaybe n -- numericsBigIntegerIsOne :: Maybe Bool
    <*> arbitraryReducedMaybe n -- numericsBigIntegerIsEven :: Maybe Bool
    <*> arbitraryReducedMaybe n -- numericsBigIntegerSign :: Maybe Int
  
instance Arbitrary SushiswapBundleDTO where
  arbitrary = sized genSushiswapBundleDTO

genSushiswapBundleDTO :: Int -> Gen SushiswapBundleDTO
genSushiswapBundleDTO n =
  SushiswapBundleDTO
    <$> arbitraryReducedMaybe n -- sushiswapBundleDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapBundleDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapBundleDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapBundleDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBundleDTOEthPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBundleDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapBurnDTO where
  arbitrary = sized genSushiswapBurnDTO

genSushiswapBurnDTO :: Int -> Gen SushiswapBurnDTO
genSushiswapBurnDTO n =
  SushiswapBurnDTO
    <$> arbitraryReducedMaybe n -- sushiswapBurnDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOAmount0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOComplete :: Maybe Bool
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOFeeTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOFeeLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapDayDataDTO where
  arbitrary = sized genSushiswapDayDataDTO

genSushiswapDayDataDTO :: Int -> Gen SushiswapDayDataDTO
genSushiswapDayDataDTO n =
  SushiswapDayDataDTO
    <$> arbitraryReducedMaybe n -- sushiswapDayDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOFactory :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOUntrackedVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOLiquidityEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapFactoryDTO where
  arbitrary = sized genSushiswapFactoryDTO

genSushiswapFactoryDTO :: Int -> Gen SushiswapFactoryDTO
genSushiswapFactoryDTO n =
  SushiswapFactoryDTO
    <$> arbitraryReducedMaybe n -- sushiswapFactoryDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOPairCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOLiquidityEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOTokenCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOUserCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapHourDataDTO where
  arbitrary = sized genSushiswapHourDataDTO

genSushiswapHourDataDTO :: Int -> Gen SushiswapHourDataDTO
genSushiswapHourDataDTO n =
  SushiswapHourDataDTO
    <$> arbitraryReducedMaybe n -- sushiswapHourDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOFactory :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOUntrackedVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOLiquidityEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapLiquidityPositionDTO where
  arbitrary = sized genSushiswapLiquidityPositionDTO

genSushiswapLiquidityPositionDTO :: Int -> Gen SushiswapLiquidityPositionDTO
genSushiswapLiquidityPositionDTO n =
  SushiswapLiquidityPositionDTO
    <$> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOLiquidityTokenBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOBlock :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOTimestamp :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapLiquidityPositionSnapshotDTO where
  arbitrary = sized genSushiswapLiquidityPositionSnapshotDTO

genSushiswapLiquidityPositionSnapshotDTO :: Int -> Gen SushiswapLiquidityPositionSnapshotDTO
genSushiswapLiquidityPositionSnapshotDTO n =
  SushiswapLiquidityPositionSnapshotDTO
    <$> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOLiquidityPosition :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOTimestamp :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOBlock :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOToken0PriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOToken1PriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOLiquidityTokenTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOLiquidityTokenBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapMintDTO where
  arbitrary = sized genSushiswapMintDTO

genSushiswapMintDTO :: Int -> Gen SushiswapMintDTO
genSushiswapMintDTO n =
  SushiswapMintDTO
    <$> arbitraryReducedMaybe n -- sushiswapMintDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapMintDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOAmount0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOFeeTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOFeeLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapPairDTO where
  arbitrary = sized genSushiswapPairDTO

genSushiswapPairDTO :: Int -> Gen SushiswapPairDTO
genSushiswapPairDTO n =
  SushiswapPairDTO
    <$> arbitraryReducedMaybe n -- sushiswapPairDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapPairDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOFactory :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOReserveEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOTrackedReserveEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOToken0Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOToken1Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOLiquidityProviderCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOEvaluatedAsk :: Maybe Double
  
instance Arbitrary SushiswapPairDayDataDTO where
  arbitrary = sized genSushiswapPairDayDataDTO

genSushiswapPairDayDataDTO :: Int -> Gen SushiswapPairDayDataDTO
genSushiswapPairDayDataDTO n =
  SushiswapPairDayDataDTO
    <$> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapPairHourDataDTO where
  arbitrary = sized genSushiswapPairHourDataDTO

genSushiswapPairHourDataDTO :: Int -> Gen SushiswapPairHourDataDTO
genSushiswapPairHourDataDTO n =
  SushiswapPairHourDataDTO
    <$> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapSwapDTO where
  arbitrary = sized genSushiswapSwapDTO

genSushiswapSwapDTO :: Int -> Gen SushiswapSwapDTO
genSushiswapSwapDTO n =
  SushiswapSwapDTO
    <$> arbitraryReducedMaybe n -- sushiswapSwapDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOAmount0In :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOAmount1In :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOAmount0Out :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOAmount1Out :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOPoolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOTransactionId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOEvaluatedPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOEvaluatedAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOEvaluatedAggressor :: Maybe TransactionsETradeAggressiveSide
  
instance Arbitrary SushiswapTokenDTO where
  arbitrary = sized genSushiswapTokenDTO

genSushiswapTokenDTO :: Int -> Gen SushiswapTokenDTO
genSushiswapTokenDTO n =
  SushiswapTokenDTO
    <$> arbitraryReducedMaybe n -- sushiswapTokenDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOFactory :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTODecimals :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTODerivedEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOWhitelistPairs :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOTokenSymbol :: Maybe Text
  
instance Arbitrary SushiswapTokenDayDataDTO where
  arbitrary = sized genSushiswapTokenDayDataDTO

genSushiswapTokenDayDataDTO :: Int -> Gen SushiswapTokenDayDataDTO
genSushiswapTokenDayDataDTO n =
  SushiswapTokenDayDataDTO
    <$> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOLiquidityEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOPriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapTransactionDTO where
  arbitrary = sized genSushiswapTransactionDTO

genSushiswapTransactionDTO :: Int -> Gen SushiswapTransactionDTO
genSushiswapTransactionDTO n =
  SushiswapTransactionDTO
    <$> arbitraryReducedMaybe n -- sushiswapTransactionDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapTransactionDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapTransactionDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapTransactionDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTransactionDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTransactionDTOMints :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- sushiswapTransactionDTOBurns :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- sushiswapTransactionDTOSwaps :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- sushiswapTransactionDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapUserDTO where
  arbitrary = sized genSushiswapUserDTO

genSushiswapUserDTO :: Int -> Gen SushiswapUserDTO
genSushiswapUserDTO n =
  SushiswapUserDTO
    <$> arbitraryReducedMaybe n -- sushiswapUserDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapUserDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapUserDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapUserDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapUserDTOVid :: Maybe Integer
  
instance Arbitrary UNISWAPV3ETHEREUMAccountDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMAccountDTO

genUNISWAPV3ETHEREUMAccountDTO :: Int -> Gen UNISWAPV3ETHEREUMAccountDTO
genUNISWAPV3ETHEREUMAccountDTO n =
  UNISWAPV3ETHEREUMAccountDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMAccountDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMAccountDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMAccountDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMAccountDTOBlockRange :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMAccountDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMAccountDTOPositionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMAccountDTOOpenPositionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMAccountDTOClosedPositionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMAccountDTODepositCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMAccountDTOWithdrawCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMAccountDTOSwapCount :: Maybe Int
  
instance Arbitrary UNISWAPV3ETHEREUMActiveAccountDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMActiveAccountDTO

genUNISWAPV3ETHEREUMActiveAccountDTO :: Int -> Gen UNISWAPV3ETHEREUMActiveAccountDTO
genUNISWAPV3ETHEREUMActiveAccountDTO n =
  UNISWAPV3ETHEREUMActiveAccountDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMActiveAccountDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMActiveAccountDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMActiveAccountDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMActiveAccountDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMActiveAccountDTOBlockRange :: Maybe Text
  
instance Arbitrary UNISWAPV3ETHEREUMDepositDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMDepositDTO

genUNISWAPV3ETHEREUMDepositDTO :: Int -> Gen UNISWAPV3ETHEREUMDepositDTO
genUNISWAPV3ETHEREUMDepositDTO n =
  UNISWAPV3ETHEREUMDepositDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOBlock :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTONonce :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOLogIndex :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOGasLimit :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOGasUsed :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOGasPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOProtocol :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOAccount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOPosition :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOTickLower :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOTickUpper :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOInputTokens :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOInputTokenAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOReserveAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDepositDTOBlockRange :: Maybe Text
  
instance Arbitrary UNISWAPV3ETHEREUMDexAmmProtocolDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMDexAmmProtocolDTO

genUNISWAPV3ETHEREUMDexAmmProtocolDTO :: Int -> Gen UNISWAPV3ETHEREUMDexAmmProtocolDTO
genUNISWAPV3ETHEREUMDexAmmProtocolDTO n =
  UNISWAPV3ETHEREUMDexAmmProtocolDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOBlockRange :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOSlug :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOSchemaVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOSubgraphVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOMethodologyVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOTotalLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOActiveLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOUncollectedProtocolSideValueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOUncollectedSupplySideValueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOProtocolControlledValueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOCumulativeVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOCumulativeSupplySideRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOCumulativeProtocolSideRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOCumulativeTotalRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOCumulativeUniqueUsers :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOCumulativeUniqueLps :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOCumulativeUniqueTraders :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOTotalPoolCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOOpenPositionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOCumulativePositionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOLastSnapshotDayId :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOLastUpdateTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTOLastUpdateBlockNumber :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMDexAmmProtocolDTORegenesis :: Maybe Bool
  
instance Arbitrary UNISWAPV3ETHEREUMFinancialsDailySnapshotDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMFinancialsDailySnapshotDTO

genUNISWAPV3ETHEREUMFinancialsDailySnapshotDTO :: Int -> Gen UNISWAPV3ETHEREUMFinancialsDailySnapshotDTO
genUNISWAPV3ETHEREUMFinancialsDailySnapshotDTO n =
  UNISWAPV3ETHEREUMFinancialsDailySnapshotDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTOBlockNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTODay :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTOProtocol :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTOTotalLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTOActiveLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTOUncollectedProtocolSideValueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTOUncollectedSupplySideValueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTOProtocolControlledValueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTODailyVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTOCumulativeVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTODailySupplySideRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTOCumulativeSupplySideRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTODailyProtocolSideRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTOCumulativeProtocolSideRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTODailyTotalRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTOCumulativeTotalRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMFinancialsDailySnapshotDTOTimestamp :: Maybe Text
  
instance Arbitrary UNISWAPV3ETHEREUMLiquidityPoolAmountDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMLiquidityPoolAmountDTO

genUNISWAPV3ETHEREUMLiquidityPoolAmountDTO :: Int -> Gen UNISWAPV3ETHEREUMLiquidityPoolAmountDTO
genUNISWAPV3ETHEREUMLiquidityPoolAmountDTO n =
  UNISWAPV3ETHEREUMLiquidityPoolAmountDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolAmountDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolAmountDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolAmountDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolAmountDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolAmountDTOBlockRange :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolAmountDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolAmountDTOInputTokens :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolAmountDTOInputTokenBalances :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolAmountDTOTokenPrices :: Maybe [Text]
  
instance Arbitrary UNISWAPV3ETHEREUMLiquidityPoolDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMLiquidityPoolDTO

genUNISWAPV3ETHEREUMLiquidityPoolDTO :: Int -> Gen UNISWAPV3ETHEREUMLiquidityPoolDTO
genUNISWAPV3ETHEREUMLiquidityPoolDTO n =
  UNISWAPV3ETHEREUMLiquidityPoolDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOBlockRange :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOProtocol :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOLiquidityToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOInputTokens :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTORewardTokens :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOFees :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOIsSingleSided :: Maybe Bool
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOCreatedTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOCreatedBlockNumber :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOTick :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOTotalLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOTotalLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOActiveLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOActiveLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOUncollectedProtocolSideTokenAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOUncollectedProtocolSideValuesUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOUncollectedSupplySideTokenAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOUncollectedSupplySideValuesUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOCumulativeSupplySideRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOCumulativeProtocolSideRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOCumulativeTotalRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOCumulativeVolumeByTokenAmount :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOCumulativeVolumeByTokenUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOCumulativeVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOInputTokenBalances :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOInputTokenBalancesUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOInputTokenWeights :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOStakedOutputTokenAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTORewardTokenEmissionsAmount :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTORewardTokenEmissionsUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOCumulativeDepositCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOCumulativeWithdrawCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOCumulativeSwapCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOPositionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOOpenPositionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOClosedPositionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOLastSnapshotDayId :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOLastSnapshotHourId :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOLastUpdateTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOLastUpdateBlockNumber :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDTOEvaluatedAsk :: Maybe Double
  
instance Arbitrary UNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTO

genUNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTO :: Int -> Gen UNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTO
genUNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTO n =
  UNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOBlock :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTODay :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOProtocol :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOTick :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOTotalLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOTotalLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOActiveLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOActiveLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOUncollectedProtocolSideTokenAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOUncollectedProtocolSideValuesUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOUncollectedSupplySideTokenAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOUncollectedSupplySideValuesUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOCumulativeSupplySideRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTODailySupplySideRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOCumulativeProtocolSideRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTODailyProtocolSideRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOCumulativeTotalRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTODailyTotalRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOCumulativeVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTODailyVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOCumulativeVolumeByTokenAmount :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTODailyVolumeByTokenAmount :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOCumulativeVolumeByTokenUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTODailyVolumeByTokenUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOInputTokenBalances :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOInputTokenBalancesUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOInputTokenWeights :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOStakedOutputTokenAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTORewardTokenEmissionsAmount :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTORewardTokenEmissionsUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOCumulativeDepositCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTODailyDepositCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOCumulativeWithdrawCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTODailyWithdrawCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOCumulativeSwapCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTODailySwapCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOPositionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOOpenPositionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOClosedPositionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTOTimestamp :: Maybe Text
  
instance Arbitrary UNISWAPV3ETHEREUMLiquidityPoolFeeDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMLiquidityPoolFeeDTO

genUNISWAPV3ETHEREUMLiquidityPoolFeeDTO :: Int -> Gen UNISWAPV3ETHEREUMLiquidityPoolFeeDTO
genUNISWAPV3ETHEREUMLiquidityPoolFeeDTO n =
  UNISWAPV3ETHEREUMLiquidityPoolFeeDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolFeeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolFeeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolFeeDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolFeeDTOBlockRange :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolFeeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolFeeDTOFeePercentage :: Maybe Text
  
instance Arbitrary UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO

genUNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO :: Int -> Gen UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO
genUNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO n =
  UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOHour :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOProtocol :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOTick :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOTotalLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOTotalLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOActiveLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOActiveLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOUncollectedProtocolSideTokenAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOUncollectedProtocolSideValuesUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOUncollectedSupplySideTokenAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOUncollectedSupplySideValuesUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOCumulativeSupplySideRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOHourlySupplySideRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOCumulativeProtocolSideRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOHourlyProtocolSideRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOCumulativeTotalRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOHourlyTotalRevenueUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOCumulativeVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOHourlyVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOCumulativeVolumeByTokenAmount :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOHourlyVolumeByTokenAmount :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOCumulativeVolumeByTokenUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOHourlyVolumeByTokenUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOInputTokenBalances :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOInputTokenBalancesUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOInputTokenWeights :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOStakedOutputTokenAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTORewardTokenEmissionsAmount :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTORewardTokenEmissionsUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOCumulativeDepositCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOHourlyDepositCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOCumulativeWithdrawCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOHourlyWithdrawCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOCumulativeSwapCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOHourlySwapCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOPositionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOOpenPositionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOClosedPositionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTOTimestamp :: Maybe Text
  
instance Arbitrary UNISWAPV3ETHEREUMPositionDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMPositionDTO

genUNISWAPV3ETHEREUMPositionDTO :: Int -> Gen UNISWAPV3ETHEREUMPositionDTO
genUNISWAPV3ETHEREUMPositionDTO n =
  UNISWAPV3ETHEREUMPositionDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOAccount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOHashOpened :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOHashClosed :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOBlockNumberOpened :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOTimestampOpened :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOBlockNumberClosed :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOTimestampClosed :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOTickLower :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOTickUpper :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOLiquidityToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOLiquidityTokenType :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOCumulativeDepositTokenAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOCumulativeDepositUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOCumulativeWithdrawTokenAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOCumulativeWithdrawUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOCumulativeRewardUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTODepositCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionDTOWithdrawCount :: Maybe Int
  
instance Arbitrary UNISWAPV3ETHEREUMPositionSnapshotDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMPositionSnapshotDTO

genUNISWAPV3ETHEREUMPositionSnapshotDTO :: Int -> Gen UNISWAPV3ETHEREUMPositionSnapshotDTO
genUNISWAPV3ETHEREUMPositionSnapshotDTO n =
  UNISWAPV3ETHEREUMPositionSnapshotDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTOHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTOLogIndex :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTONonce :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTOPosition :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTOLiquidityTokenType :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTOLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTOCumulativeDepositTokenAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTOCumulativeDepositUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTOCumulativeWithdrawTokenAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTOCumulativeWithdrawUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTOCumulativeRewardTokenAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTOCumulativeRewardUsd :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTODepositCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTOWithdrawCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMPositionSnapshotDTOTimestamp :: Maybe Text
  
instance Arbitrary UNISWAPV3ETHEREUMRewardTokenDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMRewardTokenDTO

genUNISWAPV3ETHEREUMRewardTokenDTO :: Int -> Gen UNISWAPV3ETHEREUMRewardTokenDTO
genUNISWAPV3ETHEREUMRewardTokenDTO n =
  UNISWAPV3ETHEREUMRewardTokenDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMRewardTokenDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMRewardTokenDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMRewardTokenDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMRewardTokenDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMRewardTokenDTOToken :: Maybe Text
  
instance Arbitrary UNISWAPV3ETHEREUMSwapDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMSwapDTO

genUNISWAPV3ETHEREUMSwapDTO :: Int -> Gen UNISWAPV3ETHEREUMSwapDTO
genUNISWAPV3ETHEREUMSwapDTO n =
  UNISWAPV3ETHEREUMSwapDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOBlock :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTONonce :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOLogIndex :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOGasLimit :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOGasUsed :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOGasPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOProtocol :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOAccount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOTick :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOTokenIn :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOAmountIn :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOAmountInUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOTokenOut :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOAmountOut :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOAmountOutUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOReserveAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOPoolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOTransactionId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOEvaluatedPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOEvaluatedAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMSwapDTOEvaluatedAggressor :: Maybe TransactionsETradeAggressiveSide
  
instance Arbitrary UNISWAPV3ETHEREUMTickDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMTickDTO

genUNISWAPV3ETHEREUMTickDTO :: Int -> Gen UNISWAPV3ETHEREUMTickDTO
genUNISWAPV3ETHEREUMTickDTO n =
  UNISWAPV3ETHEREUMTickDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTOIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTOCreatedTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTOCreatedBlockNumber :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTOPrices :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTOLiquidityGross :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTOLiquidityGrossUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTOLiquidityNet :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTOLiquidityNetUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTOLastSnapshotDayId :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTOLastSnapshotHourId :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTOLastUpdateTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDTOLastUpdateBlockNumber :: Maybe Text
  
instance Arbitrary UNISWAPV3ETHEREUMTickDailySnapshotDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMTickDailySnapshotDTO

genUNISWAPV3ETHEREUMTickDailySnapshotDTO :: Int -> Gen UNISWAPV3ETHEREUMTickDailySnapshotDTO
genUNISWAPV3ETHEREUMTickDailySnapshotDTO n =
  UNISWAPV3ETHEREUMTickDailySnapshotDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDailySnapshotDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDailySnapshotDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDailySnapshotDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDailySnapshotDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDailySnapshotDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDailySnapshotDTODayId :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDailySnapshotDTOTick :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDailySnapshotDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDailySnapshotDTOLiquidityGross :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDailySnapshotDTOLiquidityGrossUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDailySnapshotDTOLiquidityNet :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDailySnapshotDTOLiquidityNetUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickDailySnapshotDTOTimestamp :: Maybe Text
  
instance Arbitrary UNISWAPV3ETHEREUMTickHourlySnapshotDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMTickHourlySnapshotDTO

genUNISWAPV3ETHEREUMTickHourlySnapshotDTO :: Int -> Gen UNISWAPV3ETHEREUMTickHourlySnapshotDTO
genUNISWAPV3ETHEREUMTickHourlySnapshotDTO n =
  UNISWAPV3ETHEREUMTickHourlySnapshotDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickHourlySnapshotDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickHourlySnapshotDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickHourlySnapshotDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickHourlySnapshotDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickHourlySnapshotDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickHourlySnapshotDTOHourId :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickHourlySnapshotDTOTick :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickHourlySnapshotDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickHourlySnapshotDTOLiquidityGross :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickHourlySnapshotDTOLiquidityGrossUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickHourlySnapshotDTOLiquidityNet :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickHourlySnapshotDTOLiquidityNetUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTickHourlySnapshotDTOTimestamp :: Maybe Text
  
instance Arbitrary UNISWAPV3ETHEREUMTokenDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMTokenDTO

genUNISWAPV3ETHEREUMTokenDTO :: Int -> Gen UNISWAPV3ETHEREUMTokenDTO
genUNISWAPV3ETHEREUMTokenDTO n =
  UNISWAPV3ETHEREUMTokenDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenDTOBlockRange :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenDTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenDTODecimals :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenDTOLastPriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenDTOLastPriceBlockNumber :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenDTOLastPricePool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenDTOTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenDTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenDTOLargePriceChangeBuffer :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenDTOLargeTvlImpactBuffer :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenDTOTokenSymbol :: Maybe Text
  
instance Arbitrary UNISWAPV3ETHEREUMTokenWhiteListDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMTokenWhiteListDTO

genUNISWAPV3ETHEREUMTokenWhiteListDTO :: Int -> Gen UNISWAPV3ETHEREUMTokenWhiteListDTO
genUNISWAPV3ETHEREUMTokenWhiteListDTO n =
  UNISWAPV3ETHEREUMTokenWhiteListDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenWhiteListDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenWhiteListDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenWhiteListDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenWhiteListDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenWhiteListDTOWhitelistPools :: Maybe [Text]
  
instance Arbitrary UNISWAPV3ETHEREUMTokenWhiteListSymbolDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMTokenWhiteListSymbolDTO

genUNISWAPV3ETHEREUMTokenWhiteListSymbolDTO :: Int -> Gen UNISWAPV3ETHEREUMTokenWhiteListSymbolDTO
genUNISWAPV3ETHEREUMTokenWhiteListSymbolDTO n =
  UNISWAPV3ETHEREUMTokenWhiteListSymbolDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenWhiteListSymbolDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenWhiteListSymbolDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenWhiteListSymbolDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenWhiteListSymbolDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMTokenWhiteListSymbolDTOAddress :: Maybe Text
  
instance Arbitrary UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO

genUNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO :: Int -> Gen UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO
genUNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO n =
  UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTODay :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTOProtocol :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTODailyActiveUsers :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTOCumulativeUniqueUsers :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTODailyTransactionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTOTotalPoolCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTODailyDepositCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTODailyWithdrawCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTODailySwapCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTOTimestamp :: Maybe Text
  
instance Arbitrary UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO

genUNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO :: Int -> Gen UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO
genUNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO n =
  UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTOHour :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTOProtocol :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTOHourlyActiveUsers :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTOCumulativeUniqueUsers :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTOHourlyTransactionCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTOHourlyDepositCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTOHourlyWithdrawCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTOHourlySwapCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTOTimestamp :: Maybe Text
  
instance Arbitrary UNISWAPV3ETHEREUMWithdrawDTO where
  arbitrary = sized genUNISWAPV3ETHEREUMWithdrawDTO

genUNISWAPV3ETHEREUMWithdrawDTO :: Int -> Gen UNISWAPV3ETHEREUMWithdrawDTO
genUNISWAPV3ETHEREUMWithdrawDTO n =
  UNISWAPV3ETHEREUMWithdrawDTO
    <$> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTONonce :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOLogIndex :: Maybe Int
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOGasLimit :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOGasUsed :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOGasPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOProtocol :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOAccount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOPosition :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOTickLower :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOTickUpper :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOInputTokens :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOInputTokenAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOReserveAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uNISWAPV3ETHEREUMWithdrawDTOAmountUsd :: Maybe Text
  
instance Arbitrary UniswapV2BundleDTO where
  arbitrary = sized genUniswapV2BundleDTO

genUniswapV2BundleDTO :: Int -> Gen UniswapV2BundleDTO
genUniswapV2BundleDTO n =
  UniswapV2BundleDTO
    <$> arbitraryReducedMaybe n -- uniswapV2BundleDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2BundleDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2BundleDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2BundleDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BundleDTOEthPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BundleDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2BundleDTOBlockRange :: Maybe Text
  
instance Arbitrary UniswapV2BurnDTO where
  arbitrary = sized genUniswapV2BurnDTO

genUniswapV2BurnDTO :: Int -> Gen UniswapV2BurnDTO
genUniswapV2BurnDTO n =
  UniswapV2BurnDTO
    <$> arbitraryReducedMaybe n -- uniswapV2BurnDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2BurnDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2BurnDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2BurnDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnDTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnDTOAmount0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnDTOAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnDTOTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnDTOLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnDTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnDTONeedsComplete :: Maybe Bool
    <*> arbitraryReducedMaybe n -- uniswapV2BurnDTOFeeTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnDTOFeeLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV2LiquidityPositionDTO where
  arbitrary = sized genUniswapV2LiquidityPositionDTO

genUniswapV2LiquidityPositionDTO :: Int -> Gen UniswapV2LiquidityPositionDTO
genUniswapV2LiquidityPositionDTO n =
  UniswapV2LiquidityPositionDTO
    <$> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionDTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionDTOLiquidityTokenBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV2LiquidityPositionSnapshotDTO where
  arbitrary = sized genUniswapV2LiquidityPositionSnapshotDTO

genUniswapV2LiquidityPositionSnapshotDTO :: Int -> Gen UniswapV2LiquidityPositionSnapshotDTO
genUniswapV2LiquidityPositionSnapshotDTO n =
  UniswapV2LiquidityPositionSnapshotDTO
    <$> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTOLiquidityPosition :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTOTimestamp :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTOBlock :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTOToken0PriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTOToken1PriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTOLiquidityTokenTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTOLiquidityTokenBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotDTOBlockRange :: Maybe Text
  
instance Arbitrary UniswapV2MintDTO where
  arbitrary = sized genUniswapV2MintDTO

genUniswapV2MintDTO :: Int -> Gen UniswapV2MintDTO
genUniswapV2MintDTO n =
  UniswapV2MintDTO
    <$> arbitraryReducedMaybe n -- uniswapV2MintDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2MintDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2MintDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2MintDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintDTOTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintDTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintDTOAmount0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintDTOAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintDTOLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintDTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintDTOFeeTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintDTOFeeLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2MintDTOBlockRange :: Maybe Text
  
instance Arbitrary UniswapV2PairDTO where
  arbitrary = sized genUniswapV2PairDTO

genUniswapV2PairDTO :: Int -> Gen UniswapV2PairDTO
genUniswapV2PairDTO n =
  UniswapV2PairDTO
    <$> arbitraryReducedMaybe n -- uniswapV2PairDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOReserveEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOTrackedReserveEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOToken0Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOToken1Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOTxCount :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOCreatedAtTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOLiquidityProviderCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDTOEvaluatedAsk :: Maybe Double
  
instance Arbitrary UniswapV2PairDayDataDTO where
  arbitrary = sized genUniswapV2PairDayDataDTO

genUniswapV2PairDayDataDTO :: Int -> Gen UniswapV2PairDayDataDTO
genUniswapV2PairDayDataDTO n =
  UniswapV2PairDayDataDTO
    <$> arbitraryReducedMaybe n -- uniswapV2PairDayDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataDTOPairAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataDTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataDTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataDTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataDTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataDTOTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataDTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataDTODailyVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataDTODailyVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataDTODailyVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataDTODailyTxns :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV2PairHourDataDTO where
  arbitrary = sized genUniswapV2PairHourDataDTO

genUniswapV2PairHourDataDTO :: Int -> Gen UniswapV2PairHourDataDTO
genUniswapV2PairHourDataDTO n =
  UniswapV2PairHourDataDTO
    <$> arbitraryReducedMaybe n -- uniswapV2PairHourDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataDTOHourStartUnix :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataDTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataDTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataDTOTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataDTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataDTOHourlyVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataDTOHourlyVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataDTOHourlyVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataDTOHourlyTxns :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV2SwapDTO where
  arbitrary = sized genUniswapV2SwapDTO

genUniswapV2SwapDTO :: Int -> Gen UniswapV2SwapDTO
genUniswapV2SwapDTO n =
  UniswapV2SwapDTO
    <$> arbitraryReducedMaybe n -- uniswapV2SwapDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOFrom :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOAmount0In :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOAmount1In :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOAmount0Out :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOAmount1Out :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOLogIndex :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOEvaluatedPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOEvaluatedAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOEvaluatedAggressor :: Maybe TransactionsETradeAggressiveSide
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOPoolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapDTOTransactionId :: Maybe Text
  
instance Arbitrary UniswapV2TokenDTO where
  arbitrary = sized genUniswapV2TokenDTO

genUniswapV2TokenDTO :: Int -> Gen UniswapV2TokenDTO
genUniswapV2TokenDTO n =
  UniswapV2TokenDTO
    <$> arbitraryReducedMaybe n -- uniswapV2TokenDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDTODecimals :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDTOTotalSupply :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDTOTradeVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDTOTradeVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDTOTxCount :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDTOTotalLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDTODerivedEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDTOTokenSymbol :: Maybe Text
  
instance Arbitrary UniswapV2TokenDayDataDTO where
  arbitrary = sized genUniswapV2TokenDayDataDTO

genUniswapV2TokenDayDataDTO :: Int -> Gen UniswapV2TokenDayDataDTO
genUniswapV2TokenDayDataDTO n =
  UniswapV2TokenDayDataDTO
    <$> arbitraryReducedMaybe n -- uniswapV2TokenDayDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataDTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataDTODailyVolumeToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataDTODailyVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataDTODailyVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataDTODailyTxns :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataDTOTotalLiquidityToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataDTOTotalLiquidityEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataDTOTotalLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataDTOPriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV2TransactionDTO where
  arbitrary = sized genUniswapV2TransactionDTO

genUniswapV2TransactionDTO :: Int -> Gen UniswapV2TransactionDTO
genUniswapV2TransactionDTO n =
  UniswapV2TransactionDTO
    <$> arbitraryReducedMaybe n -- uniswapV2TransactionDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2TransactionDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2TransactionDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2TransactionDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TransactionDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TransactionDTOMints :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uniswapV2TransactionDTOBurns :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uniswapV2TransactionDTOSwaps :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uniswapV2TransactionDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV2UniswapDayDataDTO where
  arbitrary = sized genUniswapV2UniswapDayDataDTO

genUniswapV2UniswapDayDataDTO :: Int -> Gen UniswapV2UniswapDayDataDTO
genUniswapV2UniswapDayDataDTO n =
  UniswapV2UniswapDayDataDTO
    <$> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataDTODailyVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataDTODailyVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataDTODailyVolumeUntracked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataDTOTotalVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataDTOTotalLiquidityEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataDTOTotalVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataDTOTotalLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV2UniswapFactoryDTO where
  arbitrary = sized genUniswapV2UniswapFactoryDTO

genUniswapV2UniswapFactoryDTO :: Int -> Gen UniswapV2UniswapFactoryDTO
genUniswapV2UniswapFactoryDTO n =
  UniswapV2UniswapFactoryDTO
    <$> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryDTOPairCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryDTOTotalVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryDTOTotalVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryDTOTotalLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryDTOTotalLiquidityEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV2UserDTO where
  arbitrary = sized genUniswapV2UserDTO

genUniswapV2UserDTO :: Int -> Gen UniswapV2UserDTO
genUniswapV2UserDTO n =
  UniswapV2UserDTO
    <$> arbitraryReducedMaybe n -- uniswapV2UserDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2UserDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2UserDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2UserDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UserDTOUsdSwapped :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UserDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3BundleDTO where
  arbitrary = sized genUniswapV3BundleDTO

genUniswapV3BundleDTO :: Int -> Gen UniswapV3BundleDTO
genUniswapV3BundleDTO n =
  UniswapV3BundleDTO
    <$> arbitraryReducedMaybe n -- uniswapV3BundleDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3BundleDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3BundleDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3BundleDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BundleDTOEthPriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BundleDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3BurnDTO where
  arbitrary = sized genUniswapV3BurnDTO

genUniswapV3BurnDTO :: Int -> Gen UniswapV3BurnDTO
genUniswapV3BurnDTO n =
  UniswapV3BurnDTO
    <$> arbitraryReducedMaybe n -- uniswapV3BurnDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTOOrigin :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTOAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTOAmount0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTOAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTOTickLower :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTOTickUpper :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTOLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3FactoryDTO where
  arbitrary = sized genUniswapV3FactoryDTO

genUniswapV3FactoryDTO :: Int -> Gen UniswapV3FactoryDTO
genUniswapV3FactoryDTO n =
  UniswapV3FactoryDTO
    <$> arbitraryReducedMaybe n -- uniswapV3FactoryDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryDTOPoolCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryDTOTotalVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryDTOTotalVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryDTOTotalFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryDTOTotalFeesEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryDTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryDTOTotalValueLockedEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryDTOTotalValueLockedUsdUntracked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryDTOTotalValueLockedEthUntracked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryDTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3MintDTO where
  arbitrary = sized genUniswapV3MintDTO

genUniswapV3MintDTO :: Int -> Gen UniswapV3MintDTO
genUniswapV3MintDTO n =
  UniswapV3MintDTO
    <$> arbitraryReducedMaybe n -- uniswapV3MintDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOOrigin :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOAmount0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOTickLower :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOTickUpper :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3PoolDTO where
  arbitrary = sized genUniswapV3PoolDTO

genUniswapV3PoolDTO :: Int -> Gen UniswapV3PoolDTO
genUniswapV3PoolDTO n =
  UniswapV3PoolDTO
    <$> arbitraryReducedMaybe n -- uniswapV3PoolDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOCreatedAtTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOFeeTier :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOLiquidity :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOSqrtPrice :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOFeeGrowthGlobal0x128 :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOFeeGrowthGlobal1x128 :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOToken0Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOToken1Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOTick :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOObservationIndex :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOTxCount :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOCollectedFeesToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOCollectedFeesToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOCollectedFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOTotalValueLockedToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOTotalValueLockedToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOTotalValueLockedEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOTotalValueLockedUsdUntracked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOLiquidityProviderCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDTOEvaluatedAsk :: Maybe Double
  
instance Arbitrary UniswapV3PoolDayDataDTO where
  arbitrary = sized genUniswapV3PoolDayDataDTO

genUniswapV3PoolDayDataDTO :: Int -> Gen UniswapV3PoolDayDataDTO
genUniswapV3PoolDayDataDTO n =
  UniswapV3PoolDayDataDTO
    <$> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOSqrtPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOToken0Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOToken1Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOTick :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOFeeGrowthGlobal0x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOFeeGrowthGlobal1x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOTvlUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOOpen :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOHigh :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOLow :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOClose :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3PoolHourDataDTO where
  arbitrary = sized genUniswapV3PoolHourDataDTO

genUniswapV3PoolHourDataDTO :: Int -> Gen UniswapV3PoolHourDataDTO
genUniswapV3PoolHourDataDTO n =
  UniswapV3PoolHourDataDTO
    <$> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOPeriodStartUnix :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOSqrtPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOToken0Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOToken1Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOTick :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOFeeGrowthGlobal0x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOFeeGrowthGlobal1x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOTvlUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOOpen :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOHigh :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOLow :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOClose :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3PositionDTO where
  arbitrary = sized genUniswapV3PositionDTO

genUniswapV3PositionDTO :: Int -> Gen UniswapV3PositionDTO
genUniswapV3PositionDTO n =
  UniswapV3PositionDTO
    <$> arbitraryReducedMaybe n -- uniswapV3PositionDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTOTickLower :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTOTickUpper :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTODepositedToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTODepositedToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTOWithdrawnToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTOWithdrawnToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTOCollectedFeesToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTOCollectedFeesToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTOFeeGrowthInside0LastX128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTOFeeGrowthInside1LastX128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3PositionSnapshotDTO where
  arbitrary = sized genUniswapV3PositionSnapshotDTO

genUniswapV3PositionSnapshotDTO :: Int -> Gen UniswapV3PositionSnapshotDTO
genUniswapV3PositionSnapshotDTO n =
  UniswapV3PositionSnapshotDTO
    <$> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTOPosition :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTODepositedToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTODepositedToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTOWithdrawnToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTOWithdrawnToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTOCollectedFeesToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTOCollectedFeesToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTOFeeGrowthInside0LastX128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTOFeeGrowthInside1LastX128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3SwapDTO where
  arbitrary = sized genUniswapV3SwapDTO

genUniswapV3SwapDTO :: Int -> Gen UniswapV3SwapDTO
genUniswapV3SwapDTO n =
  UniswapV3SwapDTO
    <$> arbitraryReducedMaybe n -- uniswapV3SwapDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTORecipient :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOOrigin :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOAmount0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOSqrtPriceX96 :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOTick :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOLogIndex :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOEvaluatedPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOEvaluatedAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOEvaluatedAggressor :: Maybe TransactionsETradeAggressiveSide
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOPoolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapDTOTransactionId :: Maybe Text
  
instance Arbitrary UniswapV3TickDTO where
  arbitrary = sized genUniswapV3TickDTO

genUniswapV3TickDTO :: Int -> Gen UniswapV3TickDTO
genUniswapV3TickDTO n =
  UniswapV3TickDTO
    <$> arbitraryReducedMaybe n -- uniswapV3TickDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOPoolAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOTickIdx :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOLiquidityGross :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOLiquidityNet :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOPrice0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOPrice1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOCollectedFeesToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOCollectedFeesToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOCollectedFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOCreatedAtTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOLiquidityProviderCount :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOFeeGrowthOutside0x128 :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3TickDTOFeeGrowthOutside1x128 :: Maybe NumericsBigInteger
  
instance Arbitrary UniswapV3TickDayDataDTO where
  arbitrary = sized genUniswapV3TickDayDataDTO

genUniswapV3TickDayDataDTO :: Int -> Gen UniswapV3TickDayDataDTO
genUniswapV3TickDayDataDTO n =
  UniswapV3TickDayDataDTO
    <$> arbitraryReducedMaybe n -- uniswapV3TickDayDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataDTOTick :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataDTOLiquidityGross :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataDTOLiquidityNet :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataDTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataDTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataDTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataDTOFeeGrowthOutside0x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataDTOFeeGrowthOutside1x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3TokenDTO where
  arbitrary = sized genUniswapV3TokenDTO

genUniswapV3TokenDTO :: Int -> Gen UniswapV3TokenDTO
genUniswapV3TokenDTO n =
  UniswapV3TokenDTO
    <$> arbitraryReducedMaybe n -- uniswapV3TokenDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTODecimals :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTOTotalSupply :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTOTxCount :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTOPoolCount :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTOTotalValueLocked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTOTotalValueLockedUsdUntracked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTODerivedEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTOWhitelistPools :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uniswapV3TokenDTOTokenSymbol :: Maybe Text
  
instance Arbitrary UniswapV3TokenHourDataDTO where
  arbitrary = sized genUniswapV3TokenHourDataDTO

genUniswapV3TokenHourDataDTO :: Int -> Gen UniswapV3TokenHourDataDTO
genUniswapV3TokenHourDataDTO n =
  UniswapV3TokenHourDataDTO
    <$> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTOPeriodStartUnix :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTOTotalValueLocked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTOPriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTOOpen :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTOHigh :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTOLow :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTOClose :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3TokenV3DayDataDTO where
  arbitrary = sized genUniswapV3TokenV3DayDataDTO

genUniswapV3TokenV3DayDataDTO :: Int -> Gen UniswapV3TokenV3DayDataDTO
genUniswapV3TokenV3DayDataDTO n =
  UniswapV3TokenV3DayDataDTO
    <$> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOTotalValueLocked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOPriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOOpen :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOHigh :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOLow :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOClose :: Maybe Text
  
instance Arbitrary UniswapV3TransactionDTO where
  arbitrary = sized genUniswapV3TransactionDTO

genUniswapV3TransactionDTO :: Int -> Gen UniswapV3TransactionDTO
genUniswapV3TransactionDTO n =
  UniswapV3TransactionDTO
    <$> arbitraryReducedMaybe n -- uniswapV3TransactionDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TransactionDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TransactionDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TransactionDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TransactionDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TransactionDTOGasUsed :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TransactionDTOGasPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TransactionDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3UniswapDayDataDTO where
  arbitrary = sized genUniswapV3UniswapDayDataDTO

genUniswapV3UniswapDayDataDTO :: Int -> Gen UniswapV3UniswapDayDataDTO
genUniswapV3UniswapDayDataDTO n =
  UniswapV3UniswapDayDataDTO
    <$> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataDTOVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataDTOVolumeUsdUntracked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataDTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataDTOTxCount :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataDTOTvlUsd :: Maybe Text
  



instance Arbitrary TransactionsETradeAggressiveSide where
  arbitrary = arbitraryBoundedEnum

