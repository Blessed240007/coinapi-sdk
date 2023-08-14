--  On Chain Dapps _ REST API
--   This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
--
--  The version of the OpenAPI document: v1
--  Contact: support@coinapi.io
--
--  NOTE: This package is auto generated by OpenAPI-Generator 6.6.0.
--  https://openapi-generator.tech
--  Do not edit the class manually.

pragma Warnings (Off, "*is not referenced");
with Swagger.Streams;
package body .Clients is
   pragma Style_Checks ("-mr");

   --  Bids (current)
   --  Gets bids.
   procedure C_RYPTOPUNKS_Bids__current
      (Client : in out Client_Type;
       Result : out .Models.CRYPTOPUNKSBidDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/cryptopunks/bids/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end C_RYPTOPUNKS_Bids__current;

   --  CollectionDailySnapshots (current)
   --  Gets collectionDailySnapshots.
   procedure C_RYPTOPUNKS_Collection_Daily_Snapshots__current
      (Client : in out Client_Type;
       Result : out .Models.CRYPTOPUNKSCollectionDailySnapshotDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/cryptopunks/collectionDailySnapshots/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end C_RYPTOPUNKS_Collection_Daily_Snapshots__current;

   --  Collections (current)
   --  Gets collections.
   procedure C_RYPTOPUNKS_Collections__current
      (Client : in out Client_Type;
       Result : out .Models.CRYPTOPUNKSCollectionDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/cryptopunks/collections/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end C_RYPTOPUNKS_Collections__current;

   --  DataSources (current)
   --  Gets dataSources.
   procedure C_RYPTOPUNKS_Data_Sources__current
      (Client : in out Client_Type;
       Result : out .Models.CRYPTOPUNKSDataSourcesDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/cryptopunks/dataSources/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end C_RYPTOPUNKS_Data_Sources__current;

   --  Items (current)
   --  Gets items.
   procedure C_RYPTOPUNKS_Items__current
      (Client : in out Client_Type;
       Result : out .Models.CRYPTOPUNKSItemDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/cryptopunks/items/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end C_RYPTOPUNKS_Items__current;

   --  MarketPlaces (current)
   --  Gets marketPlaces.
   procedure C_RYPTOPUNKS_Market_Places__current
      (Client : in out Client_Type;
       Result : out .Models.CRYPTOPUNKSMarketPlaceDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/cryptopunks/marketPlaces/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end C_RYPTOPUNKS_Market_Places__current;

   --  MarketplaceDailySnapshots (current)
   --  Gets marketplaceDailySnapshots.
   procedure C_RYPTOPUNKS_Marketplace_Daily_Snapshots__current
      (Client : in out Client_Type;
       Result : out .Models.CRYPTOPUNKSMarketplaceDailySnapshotDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/cryptopunks/marketplaceDailySnapshots/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end C_RYPTOPUNKS_Marketplace_Daily_Snapshots__current;

   --  Trades (current)
   --  Gets trades.
   procedure C_RYPTOPUNKS_Trades__current
      (Client : in out Client_Type;
       Result : out .Models.CRYPTOPUNKSTradeDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/cryptopunks/trades/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end C_RYPTOPUNKS_Trades__current;

   --  Users (current)
   --  Gets users.
   procedure C_RYPTOPUNKS_Users__current
      (Client : in out Client_Type;
       Result : out .Models.CRYPTOPUNKSUserDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/cryptopunks/users/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end C_RYPTOPUNKS_Users__current;

   --  LiquidityPools (current)
   --  Gets liquidityPools.
   procedure C_URVEFINANCEETHEREUM_Liquidity_Pools__current
      (Client : in out Client_Type;
       Result : out .Models.CURVEFINANCEETHEREUMLiquidityPoolDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/curve-finance-ethereum/liquidityPools/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end C_URVEFINANCEETHEREUM_Liquidity_Pools__current;

   --  Swaps (current)
   --  Gets swaps.
   procedure C_URVEFINANCEETHEREUM_Swaps__current
      (Client : in out Client_Type;
       Result : out .Models.CURVEFINANCEETHEREUMSwapDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/curve-finance-ethereum/swaps/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end C_URVEFINANCEETHEREUM_Swaps__current;

   --  Tokens (current)
   --  Gets tokens.
   procedure C_URVEFINANCEETHEREUM_Tokens__current
      (Client : in out Client_Type;
       Result : out .Models.CURVEFINANCEETHEREUMTokenDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/curve-finance-ethereum/tokens/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end C_URVEFINANCEETHEREUM_Tokens__current;

   --  List all chains.
   procedure Metadata_Chains_Get
      (Client : in out Client_Type) is
      URI   : Swagger.Clients.URI_Type;
   begin


      URI.Set_Path ("/metadata/chains");
      Client.Call (Swagger.Clients.GET, URI);
   end Metadata_Chains_Get;

   --  Gets dapp by name.
   procedure Metadata_Dapps_Dapp_Name_Get
      (Client : in out Client_Type;
       Dapp_Name : in Swagger.UString) is
      URI   : Swagger.Clients.URI_Type;
   begin


      URI.Set_Path ("/metadata/dapps/{dappName}");
      URI.Set_Path_Param ("dappName", Dapp_Name);
      Client.Call (Swagger.Clients.GET, URI);
   end Metadata_Dapps_Dapp_Name_Get;

   --  List all decentralized applications.
   procedure Metadata_Dapps_Get
      (Client : in out Client_Type) is
      URI   : Swagger.Clients.URI_Type;
   begin


      URI.Set_Path ("/metadata/dapps");
      Client.Call (Swagger.Clients.GET, URI);
   end Metadata_Dapps_Get;

   --  LiquidityPools (current)
   --  Gets liquidityPools.
   procedure P_ANCAKESWAPV3ETHEREUM_Liquidity_Pools__current
      (Client : in out Client_Type;
       Id : in Swagger.Nullable_UString;
       Result : out .Models.PANCAKESWAPV3ETHEREUMLiquidityPoolDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Add_Param ("id", Id);
      URI.Set_Path ("/v1/dapps/pancakeswap-v3-ethereum/liquidityPools/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end P_ANCAKESWAPV3ETHEREUM_Liquidity_Pools__current;

   --  Swaps (current)
   --  Gets swaps.
   procedure P_ANCAKESWAPV3ETHEREUM_Swaps__current
      (Client : in out Client_Type;
       Result : out .Models.PANCAKESWAPV3ETHEREUMSwapDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/pancakeswap-v3-ethereum/swaps/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end P_ANCAKESWAPV3ETHEREUM_Swaps__current;

   --  Tokens (current)
   --  Gets tokens.
   procedure P_ANCAKESWAPV3ETHEREUM_Tokens__current
      (Client : in out Client_Type;
       Id : in Swagger.Nullable_UString;
       Result : out .Models.PANCAKESWAPV3ETHEREUMTokenDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Add_Param ("id", Id);
      URI.Set_Path ("/v1/dapps/pancakeswap-v3-ethereum/tokens/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end P_ANCAKESWAPV3ETHEREUM_Tokens__current;

   --  LiquidityPools (current)
   --  Gets liquidityPools.
   procedure S_USHISWAPV3ETHEREUM_Liquidity_Pools__current
      (Client : in out Client_Type;
       Id : in Swagger.Nullable_UString;
       Result : out .Models.SUSHISWAPV3ETHEREUMLiquidityPoolDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Add_Param ("id", Id);
      URI.Set_Path ("/v1/dapps/sushiswap-v3-ethereum/liquidityPools/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end S_USHISWAPV3ETHEREUM_Liquidity_Pools__current;

   --  Swaps (current)
   --  Gets swaps.
   procedure S_USHISWAPV3ETHEREUM_Swaps__current
      (Client : in out Client_Type;
       Result : out .Models.SUSHISWAPV3ETHEREUMSwapDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/sushiswap-v3-ethereum/swaps/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end S_USHISWAPV3ETHEREUM_Swaps__current;

   --  Tokens (current)
   --  Gets tokens.
   procedure S_USHISWAPV3ETHEREUM_Tokens__current
      (Client : in out Client_Type;
       Id : in Swagger.Nullable_UString;
       Result : out .Models.SUSHISWAPV3ETHEREUMTokenDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Add_Param ("id", Id);
      URI.Set_Path ("/v1/dapps/sushiswap-v3-ethereum/tokens/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end S_USHISWAPV3ETHEREUM_Tokens__current;

   --  LiquidityPools (current)
   --  Gets liquidityPools.
   procedure U_NISWAPV2ETHEREUM_Liquidity_Pools__current
      (Client : in out Client_Type;
       Result : out .Models.UNISWAPV2ETHEREUMLiquidityPoolDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/uniswap-v2-ethereum/liquidityPools/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV2ETHEREUM_Liquidity_Pools__current;

   --  Swaps (current)
   --  Gets swaps.
   procedure U_NISWAPV2ETHEREUM_Swaps__current
      (Client : in out Client_Type;
       Result : out .Models.UNISWAPV2ETHEREUMSwapDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/uniswap-v2-ethereum/swaps/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV2ETHEREUM_Swaps__current;

   --  Tokens (current)
   --  Gets tokens.
   procedure U_NISWAPV2ETHEREUM_Tokens__current
      (Client : in out Client_Type;
       Result : out .Models.UNISWAPV2ETHEREUMTokenDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/uniswap-v2-ethereum/tokens/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV2ETHEREUM_Tokens__current;

   --  Accounts (current)
   --  Gets accounts.
   procedure U_NISWAPV3ETHEREUM_Accounts__current
      (Client : in out Client_Type;
       Result : out .Models.UNISWAPV3ETHEREUMAccountDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/accounts/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Accounts__current;

   --  ActiveAccounts (current)
   --  Gets activeAccounts.
   procedure U_NISWAPV3ETHEREUM_Active_Accounts__current
      (Client : in out Client_Type;
       Result : out .Models.UNISWAPV3ETHEREUMActiveAccountDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/activeAccounts/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Active_Accounts__current;

   --  Deposits (current)
   --  Gets deposits.
   procedure U_NISWAPV3ETHEREUM_Deposits__current
      (Client : in out Client_Type;
       Result : out .Models.UNISWAPV3ETHEREUMDepositDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/deposits/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Deposits__current;

   --  DexAmmProtocols (current)
   --  Gets dexAmmProtocols.
   procedure U_NISWAPV3ETHEREUM_Dex_Amm_Protocols__current
      (Client : in out Client_Type;
       Result : out .Models.UNISWAPV3ETHEREUMDexAmmProtocolDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/dexAmmProtocols/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Dex_Amm_Protocols__current;

   --  FinancialsDailySnapshots (current)
   --  Gets financialsDailySnapshots.
   procedure U_NISWAPV3ETHEREUM_Financials_Daily_Snapshots__current
      (Client : in out Client_Type;
       Result : out .Models.UNISWAPV3ETHEREUMFinancialsDailySnapshotDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/financialsDailySnapshots/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Financials_Daily_Snapshots__current;

   --  LiquidityPoolAmounts (current)
   --  Gets liquidityPoolAmounts.
   procedure U_NISWAPV3ETHEREUM_Liquidity_Pool_Amounts__current
      (Client : in out Client_Type;
       Id : in Swagger.Nullable_UString;
       Result : out .Models.UNISWAPV3ETHEREUMLiquidityPoolAmountDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Add_Param ("id", Id);
      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/liquidityPoolAmounts/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Liquidity_Pool_Amounts__current;

   --  LiquidityPoolDailySnapshots (current)
   --  Gets liquidityPoolDailySnapshots.
   procedure U_NISWAPV3ETHEREUM_Liquidity_Pool_Daily_Snapshots__current
      (Client : in out Client_Type;
       Pool : in Swagger.Nullable_UString;
       Result : out .Models.UNISWAPV3ETHEREUMLiquidityPoolDailySnapshotDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Add_Param ("pool", Pool);
      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/liquidityPoolDailySnapshots/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Liquidity_Pool_Daily_Snapshots__current;

   --  LiquidityPoolFees (current)
   --  Gets liquidityPoolFees.
   procedure U_NISWAPV3ETHEREUM_Liquidity_Pool_Fees__current
      (Client : in out Client_Type;
       Result : out .Models.UNISWAPV3ETHEREUMLiquidityPoolFeeDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/liquidityPoolFees/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Liquidity_Pool_Fees__current;

   --  LiquidityPoolHourlySnapshots (current)
   --  Gets liquidityPoolHourlySnapshots.
   procedure U_NISWAPV3ETHEREUM_Liquidity_Pool_Hourly_Snapshots__current
      (Client : in out Client_Type;
       Pool : in Swagger.Nullable_UString;
       Result : out .Models.UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Add_Param ("pool", Pool);
      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/liquidityPoolHourlySnapshots/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Liquidity_Pool_Hourly_Snapshots__current;

   --  LiquidityPools (current)
   --  Gets liquidityPools.
   procedure U_NISWAPV3ETHEREUM_Liquidity_Pools__current
      (Client : in out Client_Type;
       Id : in Swagger.Nullable_UString;
       Result : out .Models.UNISWAPV3ETHEREUMLiquidityPoolDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Add_Param ("id", Id);
      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/liquidityPools/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Liquidity_Pools__current;

   --  PositionSnapshots (current)
   --  Gets positionSnapshots.
   procedure U_NISWAPV3ETHEREUM_Position_Snapshots__current
      (Client : in out Client_Type;
       Result : out .Models.UNISWAPV3ETHEREUMPositionSnapshotDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/positionSnapshots/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Position_Snapshots__current;

   --  Positions (current)
   --  Gets positions.
   procedure U_NISWAPV3ETHEREUM_Positions__current
      (Client : in out Client_Type;
       Pool : in Swagger.Nullable_UString;
       Result : out .Models.UNISWAPV3ETHEREUMPositionDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Add_Param ("pool", Pool);
      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/positions/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Positions__current;

   --  RewardTokens (current)
   --  Gets rewardTokens.
   procedure U_NISWAPV3ETHEREUM_Reward_Tokens__current
      (Client : in out Client_Type;
       Result : out .Models.UNISWAPV3ETHEREUMRewardTokenDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/rewardTokens/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Reward_Tokens__current;

   --  Swaps (current)
   --  Gets swaps.
   procedure U_NISWAPV3ETHEREUM_Swaps__current
      (Client : in out Client_Type;
       Result : out .Models.UNISWAPV3ETHEREUMSwapDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/swaps/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Swaps__current;

   --  TickDailySnapshots (current)
   --  Gets tickDailySnapshots.
   procedure U_NISWAPV3ETHEREUM_Tick_Daily_Snapshots__current
      (Client : in out Client_Type;
       Pool : in Swagger.Nullable_UString;
       Result : out .Models.UNISWAPV3ETHEREUMTickDailySnapshotDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Add_Param ("pool", Pool);
      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/tickDailySnapshots/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Tick_Daily_Snapshots__current;

   --  TickHourlySnapshots (current)
   --  Gets tickHourlySnapshots.
   procedure U_NISWAPV3ETHEREUM_Tick_Hourly_Snapshots__current
      (Client : in out Client_Type;
       Pool : in Swagger.Nullable_UString;
       Result : out .Models.UNISWAPV3ETHEREUMTickHourlySnapshotDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Add_Param ("pool", Pool);
      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/tickHourlySnapshots/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Tick_Hourly_Snapshots__current;

   --  Ticks (current)
   --  Gets ticks.
   procedure U_NISWAPV3ETHEREUM_Ticks__current
      (Client : in out Client_Type;
       Pool : in Swagger.Nullable_UString;
       Result : out .Models.UNISWAPV3ETHEREUMTickDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Add_Param ("pool", Pool);
      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/ticks/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Ticks__current;

   --  TokenWhiteListSymbols (current)
   --  Gets tokenWhiteListSymbols.
   procedure U_NISWAPV3ETHEREUM_Token_White_List_Symbols__current
      (Client : in out Client_Type;
       Result : out .Models.UNISWAPV3ETHEREUMTokenWhiteListSymbolDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/tokenWhiteListSymbols/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Token_White_List_Symbols__current;

   --  TokenWhiteLists (current)
   --  Gets tokenWhiteLists.
   procedure U_NISWAPV3ETHEREUM_Token_White_Lists__current
      (Client : in out Client_Type;
       Result : out .Models.UNISWAPV3ETHEREUMTokenWhiteListDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/tokenWhiteLists/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Token_White_Lists__current;

   --  Tokens (current)
   --  Gets tokens.
   procedure U_NISWAPV3ETHEREUM_Tokens__current
      (Client : in out Client_Type;
       Id : in Swagger.Nullable_UString;
       Result : out .Models.UNISWAPV3ETHEREUMTokenDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Add_Param ("id", Id);
      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/tokens/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Tokens__current;

   --  UsageMetricsDailySnapshots (current)
   --  Gets usageMetricsDailySnapshots.
   procedure U_NISWAPV3ETHEREUM_Usage_Metrics_Daily_Snapshots__current
      (Client : in out Client_Type;
       Result : out .Models.UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/usageMetricsDailySnapshots/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Usage_Metrics_Daily_Snapshots__current;

   --  UsageMetricsHourlySnapshots (current)
   --  Gets usageMetricsHourlySnapshots.
   procedure U_NISWAPV3ETHEREUM_Usage_Metrics_Hourly_Snapshots__current
      (Client : in out Client_Type;
       Result : out .Models.UNISWAPV3ETHEREUMUsageMetricsHourlySnapshotDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/usageMetricsHourlySnapshots/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Usage_Metrics_Hourly_Snapshots__current;

   --  Withdraws (current)
   --  Gets withdraws.
   procedure U_NISWAPV3ETHEREUM_Withdraws__current
      (Client : in out Client_Type;
       Result : out .Models.UNISWAPV3ETHEREUMWithdrawDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON,
                          Swagger.Clients.APPLICATION_X-MSGPACK));

      URI.Set_Path ("/v1/dapps/uniswap-v3-ethereum/withdraws/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end U_NISWAPV3ETHEREUM_Withdraws__current;
end .Clients;
