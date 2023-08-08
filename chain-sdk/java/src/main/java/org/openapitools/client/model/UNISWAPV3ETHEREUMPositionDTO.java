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


package org.openapitools.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.openapitools.client.JSON;

/**
 * 
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-08-08T11:51:10.984532Z[Etc/UTC]")
public class UNISWAPV3ETHEREUMPositionDTO {
  public static final String SERIALIZED_NAME_ENTRY_TIME = "entry_time";
  @SerializedName(SERIALIZED_NAME_ENTRY_TIME)
  private OffsetDateTime entryTime;

  public static final String SERIALIZED_NAME_RECV_TIME = "recv_time";
  @SerializedName(SERIALIZED_NAME_RECV_TIME)
  private OffsetDateTime recvTime;

  public static final String SERIALIZED_NAME_BLOCK_NUMBER = "block_number";
  @SerializedName(SERIALIZED_NAME_BLOCK_NUMBER)
  private Long blockNumber;

  public static final String SERIALIZED_NAME_VID = "vid";
  @SerializedName(SERIALIZED_NAME_VID)
  private Long vid;

  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private String id;

  public static final String SERIALIZED_NAME_ACCOUNT = "account";
  @SerializedName(SERIALIZED_NAME_ACCOUNT)
  private String account;

  public static final String SERIALIZED_NAME_POOL = "pool";
  @SerializedName(SERIALIZED_NAME_POOL)
  private String pool;

  public static final String SERIALIZED_NAME_HASH_OPENED = "hash_opened";
  @SerializedName(SERIALIZED_NAME_HASH_OPENED)
  private String hashOpened;

  public static final String SERIALIZED_NAME_HASH_CLOSED = "hash_closed";
  @SerializedName(SERIALIZED_NAME_HASH_CLOSED)
  private String hashClosed;

  public static final String SERIALIZED_NAME_BLOCK_NUMBER_OPENED = "block_number_opened";
  @SerializedName(SERIALIZED_NAME_BLOCK_NUMBER_OPENED)
  private String blockNumberOpened;

  public static final String SERIALIZED_NAME_TIMESTAMP_OPENED = "timestamp_opened";
  @SerializedName(SERIALIZED_NAME_TIMESTAMP_OPENED)
  private String timestampOpened;

  public static final String SERIALIZED_NAME_BLOCK_NUMBER_CLOSED = "block_number_closed";
  @SerializedName(SERIALIZED_NAME_BLOCK_NUMBER_CLOSED)
  private String blockNumberClosed;

  public static final String SERIALIZED_NAME_TIMESTAMP_CLOSED = "timestamp_closed";
  @SerializedName(SERIALIZED_NAME_TIMESTAMP_CLOSED)
  private String timestampClosed;

  public static final String SERIALIZED_NAME_TICK_LOWER = "tick_lower";
  @SerializedName(SERIALIZED_NAME_TICK_LOWER)
  private String tickLower;

  public static final String SERIALIZED_NAME_TICK_UPPER = "tick_upper";
  @SerializedName(SERIALIZED_NAME_TICK_UPPER)
  private String tickUpper;

  public static final String SERIALIZED_NAME_LIQUIDITY_TOKEN = "liquidity_token";
  @SerializedName(SERIALIZED_NAME_LIQUIDITY_TOKEN)
  private String liquidityToken;

  public static final String SERIALIZED_NAME_LIQUIDITY_TOKEN_TYPE = "liquidity_token_type";
  @SerializedName(SERIALIZED_NAME_LIQUIDITY_TOKEN_TYPE)
  private String liquidityTokenType;

  public static final String SERIALIZED_NAME_LIQUIDITY = "liquidity";
  @SerializedName(SERIALIZED_NAME_LIQUIDITY)
  private String liquidity;

  public static final String SERIALIZED_NAME_LIQUIDITY_USD = "liquidity_usd";
  @SerializedName(SERIALIZED_NAME_LIQUIDITY_USD)
  private String liquidityUsd;

  public static final String SERIALIZED_NAME_CUMULATIVE_DEPOSIT_TOKEN_AMOUNTS = "cumulative_deposit_token_amounts";
  @SerializedName(SERIALIZED_NAME_CUMULATIVE_DEPOSIT_TOKEN_AMOUNTS)
  private List<String> cumulativeDepositTokenAmounts;

  public static final String SERIALIZED_NAME_CUMULATIVE_DEPOSIT_USD = "cumulative_deposit_usd";
  @SerializedName(SERIALIZED_NAME_CUMULATIVE_DEPOSIT_USD)
  private String cumulativeDepositUsd;

  public static final String SERIALIZED_NAME_CUMULATIVE_WITHDRAW_TOKEN_AMOUNTS = "cumulative_withdraw_token_amounts";
  @SerializedName(SERIALIZED_NAME_CUMULATIVE_WITHDRAW_TOKEN_AMOUNTS)
  private List<String> cumulativeWithdrawTokenAmounts;

  public static final String SERIALIZED_NAME_CUMULATIVE_WITHDRAW_USD = "cumulative_withdraw_usd";
  @SerializedName(SERIALIZED_NAME_CUMULATIVE_WITHDRAW_USD)
  private String cumulativeWithdrawUsd;

  public static final String SERIALIZED_NAME_CUMULATIVE_REWARD_USD = "cumulative_reward_usd";
  @SerializedName(SERIALIZED_NAME_CUMULATIVE_REWARD_USD)
  private List<String> cumulativeRewardUsd;

  public static final String SERIALIZED_NAME_DEPOSIT_COUNT = "deposit_count";
  @SerializedName(SERIALIZED_NAME_DEPOSIT_COUNT)
  private Integer depositCount;

  public static final String SERIALIZED_NAME_WITHDRAW_COUNT = "withdraw_count";
  @SerializedName(SERIALIZED_NAME_WITHDRAW_COUNT)
  private Integer withdrawCount;

  public UNISWAPV3ETHEREUMPositionDTO() {
  }

  public UNISWAPV3ETHEREUMPositionDTO entryTime(OffsetDateTime entryTime) {
    
    this.entryTime = entryTime;
    return this;
  }

   /**
   * Get entryTime
   * @return entryTime
  **/
  @javax.annotation.Nullable
  public OffsetDateTime getEntryTime() {
    return entryTime;
  }


  public void setEntryTime(OffsetDateTime entryTime) {
    this.entryTime = entryTime;
  }


  public UNISWAPV3ETHEREUMPositionDTO recvTime(OffsetDateTime recvTime) {
    
    this.recvTime = recvTime;
    return this;
  }

   /**
   * Get recvTime
   * @return recvTime
  **/
  @javax.annotation.Nullable
  public OffsetDateTime getRecvTime() {
    return recvTime;
  }


  public void setRecvTime(OffsetDateTime recvTime) {
    this.recvTime = recvTime;
  }


  public UNISWAPV3ETHEREUMPositionDTO blockNumber(Long blockNumber) {
    
    this.blockNumber = blockNumber;
    return this;
  }

   /**
   * Number of block in which entity was recorded.
   * @return blockNumber
  **/
  @javax.annotation.Nullable
  public Long getBlockNumber() {
    return blockNumber;
  }


  public void setBlockNumber(Long blockNumber) {
    this.blockNumber = blockNumber;
  }


  public UNISWAPV3ETHEREUMPositionDTO vid(Long vid) {
    
    this.vid = vid;
    return this;
  }

   /**
   * 
   * @return vid
  **/
  @javax.annotation.Nullable
  public Long getVid() {
    return vid;
  }


  public void setVid(Long vid) {
    this.vid = vid;
  }


  public UNISWAPV3ETHEREUMPositionDTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * (account address)-(market address)-(count)
   * @return id
  **/
  @javax.annotation.Nullable
  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public UNISWAPV3ETHEREUMPositionDTO account(String account) {
    
    this.account = account;
    return this;
  }

   /**
   * Account that owns this position
   * @return account
  **/
  @javax.annotation.Nullable
  public String getAccount() {
    return account;
  }


  public void setAccount(String account) {
    this.account = account;
  }


  public UNISWAPV3ETHEREUMPositionDTO pool(String pool) {
    
    this.pool = pool;
    return this;
  }

   /**
   * The liquidity pool in which this position was opened
   * @return pool
  **/
  @javax.annotation.Nullable
  public String getPool() {
    return pool;
  }


  public void setPool(String pool) {
    this.pool = pool;
  }


  public UNISWAPV3ETHEREUMPositionDTO hashOpened(String hashOpened) {
    
    this.hashOpened = hashOpened;
    return this;
  }

   /**
   * The hash of the transaction that opened this position
   * @return hashOpened
  **/
  @javax.annotation.Nullable
  public String getHashOpened() {
    return hashOpened;
  }


  public void setHashOpened(String hashOpened) {
    this.hashOpened = hashOpened;
  }


  public UNISWAPV3ETHEREUMPositionDTO hashClosed(String hashClosed) {
    
    this.hashClosed = hashClosed;
    return this;
  }

   /**
   * The hash of the transaction that closed this position
   * @return hashClosed
  **/
  @javax.annotation.Nullable
  public String getHashClosed() {
    return hashClosed;
  }


  public void setHashClosed(String hashClosed) {
    this.hashClosed = hashClosed;
  }


  public UNISWAPV3ETHEREUMPositionDTO blockNumberOpened(String blockNumberOpened) {
    
    this.blockNumberOpened = blockNumberOpened;
    return this;
  }

   /**
   * Block number of when the position was opened
   * @return blockNumberOpened
  **/
  @javax.annotation.Nullable
  public String getBlockNumberOpened() {
    return blockNumberOpened;
  }


  public void setBlockNumberOpened(String blockNumberOpened) {
    this.blockNumberOpened = blockNumberOpened;
  }


  public UNISWAPV3ETHEREUMPositionDTO timestampOpened(String timestampOpened) {
    
    this.timestampOpened = timestampOpened;
    return this;
  }

   /**
   * Timestamp when the position was opened
   * @return timestampOpened
  **/
  @javax.annotation.Nullable
  public String getTimestampOpened() {
    return timestampOpened;
  }


  public void setTimestampOpened(String timestampOpened) {
    this.timestampOpened = timestampOpened;
  }


  public UNISWAPV3ETHEREUMPositionDTO blockNumberClosed(String blockNumberClosed) {
    
    this.blockNumberClosed = blockNumberClosed;
    return this;
  }

   /**
   * Block number of when the position was closed (0 if still open)
   * @return blockNumberClosed
  **/
  @javax.annotation.Nullable
  public String getBlockNumberClosed() {
    return blockNumberClosed;
  }


  public void setBlockNumberClosed(String blockNumberClosed) {
    this.blockNumberClosed = blockNumberClosed;
  }


  public UNISWAPV3ETHEREUMPositionDTO timestampClosed(String timestampClosed) {
    
    this.timestampClosed = timestampClosed;
    return this;
  }

   /**
   * Timestamp when the position was closed (0 if still open)
   * @return timestampClosed
  **/
  @javax.annotation.Nullable
  public String getTimestampClosed() {
    return timestampClosed;
  }


  public void setTimestampClosed(String timestampClosed) {
    this.timestampClosed = timestampClosed;
  }


  public UNISWAPV3ETHEREUMPositionDTO tickLower(String tickLower) {
    
    this.tickLower = tickLower;
    return this;
  }

   /**
   * lower tick of the position
   * @return tickLower
  **/
  @javax.annotation.Nullable
  public String getTickLower() {
    return tickLower;
  }


  public void setTickLower(String tickLower) {
    this.tickLower = tickLower;
  }


  public UNISWAPV3ETHEREUMPositionDTO tickUpper(String tickUpper) {
    
    this.tickUpper = tickUpper;
    return this;
  }

   /**
   * upper tick of the position
   * @return tickUpper
  **/
  @javax.annotation.Nullable
  public String getTickUpper() {
    return tickUpper;
  }


  public void setTickUpper(String tickUpper) {
    this.tickUpper = tickUpper;
  }


  public UNISWAPV3ETHEREUMPositionDTO liquidityToken(String liquidityToken) {
    
    this.liquidityToken = liquidityToken;
    return this;
  }

   /**
   * Token that is to represent ownership of liquidity
   * @return liquidityToken
  **/
  @javax.annotation.Nullable
  public String getLiquidityToken() {
    return liquidityToken;
  }


  public void setLiquidityToken(String liquidityToken) {
    this.liquidityToken = liquidityToken;
  }


  public UNISWAPV3ETHEREUMPositionDTO liquidityTokenType(String liquidityTokenType) {
    
    this.liquidityTokenType = liquidityTokenType;
    return this;
  }

   /**
   * Type of token used to track liquidity
   * @return liquidityTokenType
  **/
  @javax.annotation.Nullable
  public String getLiquidityTokenType() {
    return liquidityTokenType;
  }


  public void setLiquidityTokenType(String liquidityTokenType) {
    this.liquidityTokenType = liquidityTokenType;
  }


  public UNISWAPV3ETHEREUMPositionDTO liquidity(String liquidity) {
    
    this.liquidity = liquidity;
    return this;
  }

   /**
   * total position liquidity
   * @return liquidity
  **/
  @javax.annotation.Nullable
  public String getLiquidity() {
    return liquidity;
  }


  public void setLiquidity(String liquidity) {
    this.liquidity = liquidity;
  }


  public UNISWAPV3ETHEREUMPositionDTO liquidityUsd(String liquidityUsd) {
    
    this.liquidityUsd = liquidityUsd;
    return this;
  }

   /**
   * total position liquidity in USD
   * @return liquidityUsd
  **/
  @javax.annotation.Nullable
  public String getLiquidityUsd() {
    return liquidityUsd;
  }


  public void setLiquidityUsd(String liquidityUsd) {
    this.liquidityUsd = liquidityUsd;
  }


  public UNISWAPV3ETHEREUMPositionDTO cumulativeDepositTokenAmounts(List<String> cumulativeDepositTokenAmounts) {
    
    this.cumulativeDepositTokenAmounts = cumulativeDepositTokenAmounts;
    return this;
  }

  public UNISWAPV3ETHEREUMPositionDTO addCumulativeDepositTokenAmountsItem(String cumulativeDepositTokenAmountsItem) {
    if (this.cumulativeDepositTokenAmounts == null) {
      this.cumulativeDepositTokenAmounts = new ArrayList<>();
    }
    this.cumulativeDepositTokenAmounts.add(cumulativeDepositTokenAmountsItem);
    return this;
  }

   /**
   * amount of tokens ever deposited to position
   * @return cumulativeDepositTokenAmounts
  **/
  @javax.annotation.Nullable
  public List<String> getCumulativeDepositTokenAmounts() {
    return cumulativeDepositTokenAmounts;
  }


  public void setCumulativeDepositTokenAmounts(List<String> cumulativeDepositTokenAmounts) {
    this.cumulativeDepositTokenAmounts = cumulativeDepositTokenAmounts;
  }


  public UNISWAPV3ETHEREUMPositionDTO cumulativeDepositUsd(String cumulativeDepositUsd) {
    
    this.cumulativeDepositUsd = cumulativeDepositUsd;
    return this;
  }

   /**
   * amount of tokens in USD deposited to position
   * @return cumulativeDepositUsd
  **/
  @javax.annotation.Nullable
  public String getCumulativeDepositUsd() {
    return cumulativeDepositUsd;
  }


  public void setCumulativeDepositUsd(String cumulativeDepositUsd) {
    this.cumulativeDepositUsd = cumulativeDepositUsd;
  }


  public UNISWAPV3ETHEREUMPositionDTO cumulativeWithdrawTokenAmounts(List<String> cumulativeWithdrawTokenAmounts) {
    
    this.cumulativeWithdrawTokenAmounts = cumulativeWithdrawTokenAmounts;
    return this;
  }

  public UNISWAPV3ETHEREUMPositionDTO addCumulativeWithdrawTokenAmountsItem(String cumulativeWithdrawTokenAmountsItem) {
    if (this.cumulativeWithdrawTokenAmounts == null) {
      this.cumulativeWithdrawTokenAmounts = new ArrayList<>();
    }
    this.cumulativeWithdrawTokenAmounts.add(cumulativeWithdrawTokenAmountsItem);
    return this;
  }

   /**
   * amount of tokens ever withdrawn from position (without fees)
   * @return cumulativeWithdrawTokenAmounts
  **/
  @javax.annotation.Nullable
  public List<String> getCumulativeWithdrawTokenAmounts() {
    return cumulativeWithdrawTokenAmounts;
  }


  public void setCumulativeWithdrawTokenAmounts(List<String> cumulativeWithdrawTokenAmounts) {
    this.cumulativeWithdrawTokenAmounts = cumulativeWithdrawTokenAmounts;
  }


  public UNISWAPV3ETHEREUMPositionDTO cumulativeWithdrawUsd(String cumulativeWithdrawUsd) {
    
    this.cumulativeWithdrawUsd = cumulativeWithdrawUsd;
    return this;
  }

   /**
   * amount of tokens in USD withdrawn from position (without fees)
   * @return cumulativeWithdrawUsd
  **/
  @javax.annotation.Nullable
  public String getCumulativeWithdrawUsd() {
    return cumulativeWithdrawUsd;
  }


  public void setCumulativeWithdrawUsd(String cumulativeWithdrawUsd) {
    this.cumulativeWithdrawUsd = cumulativeWithdrawUsd;
  }


  public UNISWAPV3ETHEREUMPositionDTO cumulativeRewardUsd(List<String> cumulativeRewardUsd) {
    
    this.cumulativeRewardUsd = cumulativeRewardUsd;
    return this;
  }

  public UNISWAPV3ETHEREUMPositionDTO addCumulativeRewardUsdItem(String cumulativeRewardUsdItem) {
    if (this.cumulativeRewardUsd == null) {
      this.cumulativeRewardUsd = new ArrayList<>();
    }
    this.cumulativeRewardUsd.add(cumulativeRewardUsdItem);
    return this;
  }

   /**
   * Total reward token accumulated under this position, in USD
   * @return cumulativeRewardUsd
  **/
  @javax.annotation.Nullable
  public List<String> getCumulativeRewardUsd() {
    return cumulativeRewardUsd;
  }


  public void setCumulativeRewardUsd(List<String> cumulativeRewardUsd) {
    this.cumulativeRewardUsd = cumulativeRewardUsd;
  }


  public UNISWAPV3ETHEREUMPositionDTO depositCount(Integer depositCount) {
    
    this.depositCount = depositCount;
    return this;
  }

   /**
   * Number of deposits related to this position
   * @return depositCount
  **/
  @javax.annotation.Nullable
  public Integer getDepositCount() {
    return depositCount;
  }


  public void setDepositCount(Integer depositCount) {
    this.depositCount = depositCount;
  }


  public UNISWAPV3ETHEREUMPositionDTO withdrawCount(Integer withdrawCount) {
    
    this.withdrawCount = withdrawCount;
    return this;
  }

   /**
   * Number of withdrawals related to this position
   * @return withdrawCount
  **/
  @javax.annotation.Nullable
  public Integer getWithdrawCount() {
    return withdrawCount;
  }


  public void setWithdrawCount(Integer withdrawCount) {
    this.withdrawCount = withdrawCount;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UNISWAPV3ETHEREUMPositionDTO unISWAPV3ETHEREUMPositionDTO = (UNISWAPV3ETHEREUMPositionDTO) o;
    return Objects.equals(this.entryTime, unISWAPV3ETHEREUMPositionDTO.entryTime) &&
        Objects.equals(this.recvTime, unISWAPV3ETHEREUMPositionDTO.recvTime) &&
        Objects.equals(this.blockNumber, unISWAPV3ETHEREUMPositionDTO.blockNumber) &&
        Objects.equals(this.vid, unISWAPV3ETHEREUMPositionDTO.vid) &&
        Objects.equals(this.id, unISWAPV3ETHEREUMPositionDTO.id) &&
        Objects.equals(this.account, unISWAPV3ETHEREUMPositionDTO.account) &&
        Objects.equals(this.pool, unISWAPV3ETHEREUMPositionDTO.pool) &&
        Objects.equals(this.hashOpened, unISWAPV3ETHEREUMPositionDTO.hashOpened) &&
        Objects.equals(this.hashClosed, unISWAPV3ETHEREUMPositionDTO.hashClosed) &&
        Objects.equals(this.blockNumberOpened, unISWAPV3ETHEREUMPositionDTO.blockNumberOpened) &&
        Objects.equals(this.timestampOpened, unISWAPV3ETHEREUMPositionDTO.timestampOpened) &&
        Objects.equals(this.blockNumberClosed, unISWAPV3ETHEREUMPositionDTO.blockNumberClosed) &&
        Objects.equals(this.timestampClosed, unISWAPV3ETHEREUMPositionDTO.timestampClosed) &&
        Objects.equals(this.tickLower, unISWAPV3ETHEREUMPositionDTO.tickLower) &&
        Objects.equals(this.tickUpper, unISWAPV3ETHEREUMPositionDTO.tickUpper) &&
        Objects.equals(this.liquidityToken, unISWAPV3ETHEREUMPositionDTO.liquidityToken) &&
        Objects.equals(this.liquidityTokenType, unISWAPV3ETHEREUMPositionDTO.liquidityTokenType) &&
        Objects.equals(this.liquidity, unISWAPV3ETHEREUMPositionDTO.liquidity) &&
        Objects.equals(this.liquidityUsd, unISWAPV3ETHEREUMPositionDTO.liquidityUsd) &&
        Objects.equals(this.cumulativeDepositTokenAmounts, unISWAPV3ETHEREUMPositionDTO.cumulativeDepositTokenAmounts) &&
        Objects.equals(this.cumulativeDepositUsd, unISWAPV3ETHEREUMPositionDTO.cumulativeDepositUsd) &&
        Objects.equals(this.cumulativeWithdrawTokenAmounts, unISWAPV3ETHEREUMPositionDTO.cumulativeWithdrawTokenAmounts) &&
        Objects.equals(this.cumulativeWithdrawUsd, unISWAPV3ETHEREUMPositionDTO.cumulativeWithdrawUsd) &&
        Objects.equals(this.cumulativeRewardUsd, unISWAPV3ETHEREUMPositionDTO.cumulativeRewardUsd) &&
        Objects.equals(this.depositCount, unISWAPV3ETHEREUMPositionDTO.depositCount) &&
        Objects.equals(this.withdrawCount, unISWAPV3ETHEREUMPositionDTO.withdrawCount);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, vid, id, account, pool, hashOpened, hashClosed, blockNumberOpened, timestampOpened, blockNumberClosed, timestampClosed, tickLower, tickUpper, liquidityToken, liquidityTokenType, liquidity, liquidityUsd, cumulativeDepositTokenAmounts, cumulativeDepositUsd, cumulativeWithdrawTokenAmounts, cumulativeWithdrawUsd, cumulativeRewardUsd, depositCount, withdrawCount);
  }

  private static <T> int hashCodeNullable(JsonNullable<T> a) {
    if (a == null) {
      return 1;
    }
    return a.isPresent() ? Arrays.deepHashCode(new Object[]{a.get()}) : 31;
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UNISWAPV3ETHEREUMPositionDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    vid: ").append(toIndentedString(vid)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    account: ").append(toIndentedString(account)).append("\n");
    sb.append("    pool: ").append(toIndentedString(pool)).append("\n");
    sb.append("    hashOpened: ").append(toIndentedString(hashOpened)).append("\n");
    sb.append("    hashClosed: ").append(toIndentedString(hashClosed)).append("\n");
    sb.append("    blockNumberOpened: ").append(toIndentedString(blockNumberOpened)).append("\n");
    sb.append("    timestampOpened: ").append(toIndentedString(timestampOpened)).append("\n");
    sb.append("    blockNumberClosed: ").append(toIndentedString(blockNumberClosed)).append("\n");
    sb.append("    timestampClosed: ").append(toIndentedString(timestampClosed)).append("\n");
    sb.append("    tickLower: ").append(toIndentedString(tickLower)).append("\n");
    sb.append("    tickUpper: ").append(toIndentedString(tickUpper)).append("\n");
    sb.append("    liquidityToken: ").append(toIndentedString(liquidityToken)).append("\n");
    sb.append("    liquidityTokenType: ").append(toIndentedString(liquidityTokenType)).append("\n");
    sb.append("    liquidity: ").append(toIndentedString(liquidity)).append("\n");
    sb.append("    liquidityUsd: ").append(toIndentedString(liquidityUsd)).append("\n");
    sb.append("    cumulativeDepositTokenAmounts: ").append(toIndentedString(cumulativeDepositTokenAmounts)).append("\n");
    sb.append("    cumulativeDepositUsd: ").append(toIndentedString(cumulativeDepositUsd)).append("\n");
    sb.append("    cumulativeWithdrawTokenAmounts: ").append(toIndentedString(cumulativeWithdrawTokenAmounts)).append("\n");
    sb.append("    cumulativeWithdrawUsd: ").append(toIndentedString(cumulativeWithdrawUsd)).append("\n");
    sb.append("    cumulativeRewardUsd: ").append(toIndentedString(cumulativeRewardUsd)).append("\n");
    sb.append("    depositCount: ").append(toIndentedString(depositCount)).append("\n");
    sb.append("    withdrawCount: ").append(toIndentedString(withdrawCount)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("entry_time");
    openapiFields.add("recv_time");
    openapiFields.add("block_number");
    openapiFields.add("vid");
    openapiFields.add("id");
    openapiFields.add("account");
    openapiFields.add("pool");
    openapiFields.add("hash_opened");
    openapiFields.add("hash_closed");
    openapiFields.add("block_number_opened");
    openapiFields.add("timestamp_opened");
    openapiFields.add("block_number_closed");
    openapiFields.add("timestamp_closed");
    openapiFields.add("tick_lower");
    openapiFields.add("tick_upper");
    openapiFields.add("liquidity_token");
    openapiFields.add("liquidity_token_type");
    openapiFields.add("liquidity");
    openapiFields.add("liquidity_usd");
    openapiFields.add("cumulative_deposit_token_amounts");
    openapiFields.add("cumulative_deposit_usd");
    openapiFields.add("cumulative_withdraw_token_amounts");
    openapiFields.add("cumulative_withdraw_usd");
    openapiFields.add("cumulative_reward_usd");
    openapiFields.add("deposit_count");
    openapiFields.add("withdraw_count");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to UNISWAPV3ETHEREUMPositionDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!UNISWAPV3ETHEREUMPositionDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in UNISWAPV3ETHEREUMPositionDTO is not found in the empty JSON string", UNISWAPV3ETHEREUMPositionDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!UNISWAPV3ETHEREUMPositionDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `UNISWAPV3ETHEREUMPositionDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("account") != null && !jsonObj.get("account").isJsonNull()) && !jsonObj.get("account").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `account` to be a primitive type in the JSON string but got `%s`", jsonObj.get("account").toString()));
      }
      if ((jsonObj.get("pool") != null && !jsonObj.get("pool").isJsonNull()) && !jsonObj.get("pool").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `pool` to be a primitive type in the JSON string but got `%s`", jsonObj.get("pool").toString()));
      }
      if ((jsonObj.get("hash_opened") != null && !jsonObj.get("hash_opened").isJsonNull()) && !jsonObj.get("hash_opened").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `hash_opened` to be a primitive type in the JSON string but got `%s`", jsonObj.get("hash_opened").toString()));
      }
      if ((jsonObj.get("hash_closed") != null && !jsonObj.get("hash_closed").isJsonNull()) && !jsonObj.get("hash_closed").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `hash_closed` to be a primitive type in the JSON string but got `%s`", jsonObj.get("hash_closed").toString()));
      }
      if ((jsonObj.get("block_number_opened") != null && !jsonObj.get("block_number_opened").isJsonNull()) && !jsonObj.get("block_number_opened").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `block_number_opened` to be a primitive type in the JSON string but got `%s`", jsonObj.get("block_number_opened").toString()));
      }
      if ((jsonObj.get("timestamp_opened") != null && !jsonObj.get("timestamp_opened").isJsonNull()) && !jsonObj.get("timestamp_opened").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `timestamp_opened` to be a primitive type in the JSON string but got `%s`", jsonObj.get("timestamp_opened").toString()));
      }
      if ((jsonObj.get("block_number_closed") != null && !jsonObj.get("block_number_closed").isJsonNull()) && !jsonObj.get("block_number_closed").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `block_number_closed` to be a primitive type in the JSON string but got `%s`", jsonObj.get("block_number_closed").toString()));
      }
      if ((jsonObj.get("timestamp_closed") != null && !jsonObj.get("timestamp_closed").isJsonNull()) && !jsonObj.get("timestamp_closed").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `timestamp_closed` to be a primitive type in the JSON string but got `%s`", jsonObj.get("timestamp_closed").toString()));
      }
      if ((jsonObj.get("tick_lower") != null && !jsonObj.get("tick_lower").isJsonNull()) && !jsonObj.get("tick_lower").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `tick_lower` to be a primitive type in the JSON string but got `%s`", jsonObj.get("tick_lower").toString()));
      }
      if ((jsonObj.get("tick_upper") != null && !jsonObj.get("tick_upper").isJsonNull()) && !jsonObj.get("tick_upper").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `tick_upper` to be a primitive type in the JSON string but got `%s`", jsonObj.get("tick_upper").toString()));
      }
      if ((jsonObj.get("liquidity_token") != null && !jsonObj.get("liquidity_token").isJsonNull()) && !jsonObj.get("liquidity_token").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `liquidity_token` to be a primitive type in the JSON string but got `%s`", jsonObj.get("liquidity_token").toString()));
      }
      if ((jsonObj.get("liquidity_token_type") != null && !jsonObj.get("liquidity_token_type").isJsonNull()) && !jsonObj.get("liquidity_token_type").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `liquidity_token_type` to be a primitive type in the JSON string but got `%s`", jsonObj.get("liquidity_token_type").toString()));
      }
      if ((jsonObj.get("liquidity") != null && !jsonObj.get("liquidity").isJsonNull()) && !jsonObj.get("liquidity").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `liquidity` to be a primitive type in the JSON string but got `%s`", jsonObj.get("liquidity").toString()));
      }
      if ((jsonObj.get("liquidity_usd") != null && !jsonObj.get("liquidity_usd").isJsonNull()) && !jsonObj.get("liquidity_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `liquidity_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("liquidity_usd").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("cumulative_deposit_token_amounts") != null && !jsonObj.get("cumulative_deposit_token_amounts").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `cumulative_deposit_token_amounts` to be an array in the JSON string but got `%s`", jsonObj.get("cumulative_deposit_token_amounts").toString()));
      }
      if ((jsonObj.get("cumulative_deposit_usd") != null && !jsonObj.get("cumulative_deposit_usd").isJsonNull()) && !jsonObj.get("cumulative_deposit_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `cumulative_deposit_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("cumulative_deposit_usd").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("cumulative_withdraw_token_amounts") != null && !jsonObj.get("cumulative_withdraw_token_amounts").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `cumulative_withdraw_token_amounts` to be an array in the JSON string but got `%s`", jsonObj.get("cumulative_withdraw_token_amounts").toString()));
      }
      if ((jsonObj.get("cumulative_withdraw_usd") != null && !jsonObj.get("cumulative_withdraw_usd").isJsonNull()) && !jsonObj.get("cumulative_withdraw_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `cumulative_withdraw_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("cumulative_withdraw_usd").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("cumulative_reward_usd") != null && !jsonObj.get("cumulative_reward_usd").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `cumulative_reward_usd` to be an array in the JSON string but got `%s`", jsonObj.get("cumulative_reward_usd").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!UNISWAPV3ETHEREUMPositionDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'UNISWAPV3ETHEREUMPositionDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<UNISWAPV3ETHEREUMPositionDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(UNISWAPV3ETHEREUMPositionDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<UNISWAPV3ETHEREUMPositionDTO>() {
           @Override
           public void write(JsonWriter out, UNISWAPV3ETHEREUMPositionDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public UNISWAPV3ETHEREUMPositionDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of UNISWAPV3ETHEREUMPositionDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of UNISWAPV3ETHEREUMPositionDTO
  * @throws IOException if the JSON string is invalid with respect to UNISWAPV3ETHEREUMPositionDTO
  */
  public static UNISWAPV3ETHEREUMPositionDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, UNISWAPV3ETHEREUMPositionDTO.class);
  }

 /**
  * Convert an instance of UNISWAPV3ETHEREUMPositionDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

