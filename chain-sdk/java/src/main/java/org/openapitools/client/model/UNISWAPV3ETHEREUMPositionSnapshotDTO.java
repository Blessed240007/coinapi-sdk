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
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-08-09T07:36:44.300898Z[Etc/UTC]")
public class UNISWAPV3ETHEREUMPositionSnapshotDTO {
  public static final String SERIALIZED_NAME_ENTRY_TIME = "entry_time";
  @SerializedName(SERIALIZED_NAME_ENTRY_TIME)
  private OffsetDateTime entryTime;

  public static final String SERIALIZED_NAME_RECV_TIME = "recv_time";
  @SerializedName(SERIALIZED_NAME_RECV_TIME)
  private OffsetDateTime recvTime;

  public static final String SERIALIZED_NAME_BLOCK_NUMBER = "block_number";
  @SerializedName(SERIALIZED_NAME_BLOCK_NUMBER)
  private Long blockNumber;

  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private String id;

  public static final String SERIALIZED_NAME_HASH = "hash";
  @SerializedName(SERIALIZED_NAME_HASH)
  private String hash;

  public static final String SERIALIZED_NAME_LOG_INDEX = "log_index";
  @SerializedName(SERIALIZED_NAME_LOG_INDEX)
  private Integer logIndex;

  public static final String SERIALIZED_NAME_NONCE = "nonce";
  @SerializedName(SERIALIZED_NAME_NONCE)
  private String nonce;

  public static final String SERIALIZED_NAME_POSITION = "position";
  @SerializedName(SERIALIZED_NAME_POSITION)
  private String position;

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

  public static final String SERIALIZED_NAME_CUMULATIVE_REWARD_TOKEN_AMOUNTS = "cumulative_reward_token_amounts";
  @SerializedName(SERIALIZED_NAME_CUMULATIVE_REWARD_TOKEN_AMOUNTS)
  private List<String> cumulativeRewardTokenAmounts;

  public static final String SERIALIZED_NAME_CUMULATIVE_REWARD_USD = "cumulative_reward_usd";
  @SerializedName(SERIALIZED_NAME_CUMULATIVE_REWARD_USD)
  private List<String> cumulativeRewardUsd;

  public static final String SERIALIZED_NAME_DEPOSIT_COUNT = "deposit_count";
  @SerializedName(SERIALIZED_NAME_DEPOSIT_COUNT)
  private Integer depositCount;

  public static final String SERIALIZED_NAME_WITHDRAW_COUNT = "withdraw_count";
  @SerializedName(SERIALIZED_NAME_WITHDRAW_COUNT)
  private Integer withdrawCount;

  public static final String SERIALIZED_NAME_TIMESTAMP = "timestamp";
  @SerializedName(SERIALIZED_NAME_TIMESTAMP)
  private String timestamp;

  public UNISWAPV3ETHEREUMPositionSnapshotDTO() {
  }

  public UNISWAPV3ETHEREUMPositionSnapshotDTO entryTime(OffsetDateTime entryTime) {
    
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


  public UNISWAPV3ETHEREUMPositionSnapshotDTO recvTime(OffsetDateTime recvTime) {
    
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


  public UNISWAPV3ETHEREUMPositionSnapshotDTO blockNumber(Long blockNumber) {
    
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


  public UNISWAPV3ETHEREUMPositionSnapshotDTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   *  (position id )-( transaction hash )-( log index ) 
   * @return id
  **/
  @javax.annotation.Nullable
  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public UNISWAPV3ETHEREUMPositionSnapshotDTO hash(String hash) {
    
    this.hash = hash;
    return this;
  }

   /**
   * Transaction hash of the transaction that triggered this snapshot
   * @return hash
  **/
  @javax.annotation.Nullable
  public String getHash() {
    return hash;
  }


  public void setHash(String hash) {
    this.hash = hash;
  }


  public UNISWAPV3ETHEREUMPositionSnapshotDTO logIndex(Integer logIndex) {
    
    this.logIndex = logIndex;
    return this;
  }

   /**
   * Event log index. For transactions that don&#39;t emit event, create arbitrary index starting from 0
   * @return logIndex
  **/
  @javax.annotation.Nullable
  public Integer getLogIndex() {
    return logIndex;
  }


  public void setLogIndex(Integer logIndex) {
    this.logIndex = logIndex;
  }


  public UNISWAPV3ETHEREUMPositionSnapshotDTO nonce(String nonce) {
    
    this.nonce = nonce;
    return this;
  }

   /**
   * Nonce of the transaction that triggered this snapshot
   * @return nonce
  **/
  @javax.annotation.Nullable
  public String getNonce() {
    return nonce;
  }


  public void setNonce(String nonce) {
    this.nonce = nonce;
  }


  public UNISWAPV3ETHEREUMPositionSnapshotDTO position(String position) {
    
    this.position = position;
    return this;
  }

   /**
   * Position of this snapshot
   * @return position
  **/
  @javax.annotation.Nullable
  public String getPosition() {
    return position;
  }


  public void setPosition(String position) {
    this.position = position;
  }


  public UNISWAPV3ETHEREUMPositionSnapshotDTO liquidityTokenType(String liquidityTokenType) {
    
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


  public UNISWAPV3ETHEREUMPositionSnapshotDTO liquidity(String liquidity) {
    
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


  public UNISWAPV3ETHEREUMPositionSnapshotDTO liquidityUsd(String liquidityUsd) {
    
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


  public UNISWAPV3ETHEREUMPositionSnapshotDTO cumulativeDepositTokenAmounts(List<String> cumulativeDepositTokenAmounts) {
    
    this.cumulativeDepositTokenAmounts = cumulativeDepositTokenAmounts;
    return this;
  }

  public UNISWAPV3ETHEREUMPositionSnapshotDTO addCumulativeDepositTokenAmountsItem(String cumulativeDepositTokenAmountsItem) {
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


  public UNISWAPV3ETHEREUMPositionSnapshotDTO cumulativeDepositUsd(String cumulativeDepositUsd) {
    
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


  public UNISWAPV3ETHEREUMPositionSnapshotDTO cumulativeWithdrawTokenAmounts(List<String> cumulativeWithdrawTokenAmounts) {
    
    this.cumulativeWithdrawTokenAmounts = cumulativeWithdrawTokenAmounts;
    return this;
  }

  public UNISWAPV3ETHEREUMPositionSnapshotDTO addCumulativeWithdrawTokenAmountsItem(String cumulativeWithdrawTokenAmountsItem) {
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


  public UNISWAPV3ETHEREUMPositionSnapshotDTO cumulativeWithdrawUsd(String cumulativeWithdrawUsd) {
    
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


  public UNISWAPV3ETHEREUMPositionSnapshotDTO cumulativeRewardTokenAmounts(List<String> cumulativeRewardTokenAmounts) {
    
    this.cumulativeRewardTokenAmounts = cumulativeRewardTokenAmounts;
    return this;
  }

  public UNISWAPV3ETHEREUMPositionSnapshotDTO addCumulativeRewardTokenAmountsItem(String cumulativeRewardTokenAmountsItem) {
    if (this.cumulativeRewardTokenAmounts == null) {
      this.cumulativeRewardTokenAmounts = new ArrayList<>();
    }
    this.cumulativeRewardTokenAmounts.add(cumulativeRewardTokenAmountsItem);
    return this;
  }

   /**
   * Total reward token accumulated under this position, in native amounts
   * @return cumulativeRewardTokenAmounts
  **/
  @javax.annotation.Nullable
  public List<String> getCumulativeRewardTokenAmounts() {
    return cumulativeRewardTokenAmounts;
  }


  public void setCumulativeRewardTokenAmounts(List<String> cumulativeRewardTokenAmounts) {
    this.cumulativeRewardTokenAmounts = cumulativeRewardTokenAmounts;
  }


  public UNISWAPV3ETHEREUMPositionSnapshotDTO cumulativeRewardUsd(List<String> cumulativeRewardUsd) {
    
    this.cumulativeRewardUsd = cumulativeRewardUsd;
    return this;
  }

  public UNISWAPV3ETHEREUMPositionSnapshotDTO addCumulativeRewardUsdItem(String cumulativeRewardUsdItem) {
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


  public UNISWAPV3ETHEREUMPositionSnapshotDTO depositCount(Integer depositCount) {
    
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


  public UNISWAPV3ETHEREUMPositionSnapshotDTO withdrawCount(Integer withdrawCount) {
    
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


  public UNISWAPV3ETHEREUMPositionSnapshotDTO timestamp(String timestamp) {
    
    this.timestamp = timestamp;
    return this;
  }

   /**
   * Timestamp of this snapshot
   * @return timestamp
  **/
  @javax.annotation.Nullable
  public String getTimestamp() {
    return timestamp;
  }


  public void setTimestamp(String timestamp) {
    this.timestamp = timestamp;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UNISWAPV3ETHEREUMPositionSnapshotDTO unISWAPV3ETHEREUMPositionSnapshotDTO = (UNISWAPV3ETHEREUMPositionSnapshotDTO) o;
    return Objects.equals(this.entryTime, unISWAPV3ETHEREUMPositionSnapshotDTO.entryTime) &&
        Objects.equals(this.recvTime, unISWAPV3ETHEREUMPositionSnapshotDTO.recvTime) &&
        Objects.equals(this.blockNumber, unISWAPV3ETHEREUMPositionSnapshotDTO.blockNumber) &&
        Objects.equals(this.id, unISWAPV3ETHEREUMPositionSnapshotDTO.id) &&
        Objects.equals(this.hash, unISWAPV3ETHEREUMPositionSnapshotDTO.hash) &&
        Objects.equals(this.logIndex, unISWAPV3ETHEREUMPositionSnapshotDTO.logIndex) &&
        Objects.equals(this.nonce, unISWAPV3ETHEREUMPositionSnapshotDTO.nonce) &&
        Objects.equals(this.position, unISWAPV3ETHEREUMPositionSnapshotDTO.position) &&
        Objects.equals(this.liquidityTokenType, unISWAPV3ETHEREUMPositionSnapshotDTO.liquidityTokenType) &&
        Objects.equals(this.liquidity, unISWAPV3ETHEREUMPositionSnapshotDTO.liquidity) &&
        Objects.equals(this.liquidityUsd, unISWAPV3ETHEREUMPositionSnapshotDTO.liquidityUsd) &&
        Objects.equals(this.cumulativeDepositTokenAmounts, unISWAPV3ETHEREUMPositionSnapshotDTO.cumulativeDepositTokenAmounts) &&
        Objects.equals(this.cumulativeDepositUsd, unISWAPV3ETHEREUMPositionSnapshotDTO.cumulativeDepositUsd) &&
        Objects.equals(this.cumulativeWithdrawTokenAmounts, unISWAPV3ETHEREUMPositionSnapshotDTO.cumulativeWithdrawTokenAmounts) &&
        Objects.equals(this.cumulativeWithdrawUsd, unISWAPV3ETHEREUMPositionSnapshotDTO.cumulativeWithdrawUsd) &&
        Objects.equals(this.cumulativeRewardTokenAmounts, unISWAPV3ETHEREUMPositionSnapshotDTO.cumulativeRewardTokenAmounts) &&
        Objects.equals(this.cumulativeRewardUsd, unISWAPV3ETHEREUMPositionSnapshotDTO.cumulativeRewardUsd) &&
        Objects.equals(this.depositCount, unISWAPV3ETHEREUMPositionSnapshotDTO.depositCount) &&
        Objects.equals(this.withdrawCount, unISWAPV3ETHEREUMPositionSnapshotDTO.withdrawCount) &&
        Objects.equals(this.timestamp, unISWAPV3ETHEREUMPositionSnapshotDTO.timestamp);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, id, hash, logIndex, nonce, position, liquidityTokenType, liquidity, liquidityUsd, cumulativeDepositTokenAmounts, cumulativeDepositUsd, cumulativeWithdrawTokenAmounts, cumulativeWithdrawUsd, cumulativeRewardTokenAmounts, cumulativeRewardUsd, depositCount, withdrawCount, timestamp);
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
    sb.append("class UNISWAPV3ETHEREUMPositionSnapshotDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    hash: ").append(toIndentedString(hash)).append("\n");
    sb.append("    logIndex: ").append(toIndentedString(logIndex)).append("\n");
    sb.append("    nonce: ").append(toIndentedString(nonce)).append("\n");
    sb.append("    position: ").append(toIndentedString(position)).append("\n");
    sb.append("    liquidityTokenType: ").append(toIndentedString(liquidityTokenType)).append("\n");
    sb.append("    liquidity: ").append(toIndentedString(liquidity)).append("\n");
    sb.append("    liquidityUsd: ").append(toIndentedString(liquidityUsd)).append("\n");
    sb.append("    cumulativeDepositTokenAmounts: ").append(toIndentedString(cumulativeDepositTokenAmounts)).append("\n");
    sb.append("    cumulativeDepositUsd: ").append(toIndentedString(cumulativeDepositUsd)).append("\n");
    sb.append("    cumulativeWithdrawTokenAmounts: ").append(toIndentedString(cumulativeWithdrawTokenAmounts)).append("\n");
    sb.append("    cumulativeWithdrawUsd: ").append(toIndentedString(cumulativeWithdrawUsd)).append("\n");
    sb.append("    cumulativeRewardTokenAmounts: ").append(toIndentedString(cumulativeRewardTokenAmounts)).append("\n");
    sb.append("    cumulativeRewardUsd: ").append(toIndentedString(cumulativeRewardUsd)).append("\n");
    sb.append("    depositCount: ").append(toIndentedString(depositCount)).append("\n");
    sb.append("    withdrawCount: ").append(toIndentedString(withdrawCount)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
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
    openapiFields.add("id");
    openapiFields.add("hash");
    openapiFields.add("log_index");
    openapiFields.add("nonce");
    openapiFields.add("position");
    openapiFields.add("liquidity_token_type");
    openapiFields.add("liquidity");
    openapiFields.add("liquidity_usd");
    openapiFields.add("cumulative_deposit_token_amounts");
    openapiFields.add("cumulative_deposit_usd");
    openapiFields.add("cumulative_withdraw_token_amounts");
    openapiFields.add("cumulative_withdraw_usd");
    openapiFields.add("cumulative_reward_token_amounts");
    openapiFields.add("cumulative_reward_usd");
    openapiFields.add("deposit_count");
    openapiFields.add("withdraw_count");
    openapiFields.add("timestamp");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to UNISWAPV3ETHEREUMPositionSnapshotDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!UNISWAPV3ETHEREUMPositionSnapshotDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in UNISWAPV3ETHEREUMPositionSnapshotDTO is not found in the empty JSON string", UNISWAPV3ETHEREUMPositionSnapshotDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!UNISWAPV3ETHEREUMPositionSnapshotDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `UNISWAPV3ETHEREUMPositionSnapshotDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("hash") != null && !jsonObj.get("hash").isJsonNull()) && !jsonObj.get("hash").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `hash` to be a primitive type in the JSON string but got `%s`", jsonObj.get("hash").toString()));
      }
      if ((jsonObj.get("nonce") != null && !jsonObj.get("nonce").isJsonNull()) && !jsonObj.get("nonce").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `nonce` to be a primitive type in the JSON string but got `%s`", jsonObj.get("nonce").toString()));
      }
      if ((jsonObj.get("position") != null && !jsonObj.get("position").isJsonNull()) && !jsonObj.get("position").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `position` to be a primitive type in the JSON string but got `%s`", jsonObj.get("position").toString()));
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
      if (jsonObj.get("cumulative_reward_token_amounts") != null && !jsonObj.get("cumulative_reward_token_amounts").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `cumulative_reward_token_amounts` to be an array in the JSON string but got `%s`", jsonObj.get("cumulative_reward_token_amounts").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("cumulative_reward_usd") != null && !jsonObj.get("cumulative_reward_usd").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `cumulative_reward_usd` to be an array in the JSON string but got `%s`", jsonObj.get("cumulative_reward_usd").toString()));
      }
      if ((jsonObj.get("timestamp") != null && !jsonObj.get("timestamp").isJsonNull()) && !jsonObj.get("timestamp").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `timestamp` to be a primitive type in the JSON string but got `%s`", jsonObj.get("timestamp").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!UNISWAPV3ETHEREUMPositionSnapshotDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'UNISWAPV3ETHEREUMPositionSnapshotDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<UNISWAPV3ETHEREUMPositionSnapshotDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(UNISWAPV3ETHEREUMPositionSnapshotDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<UNISWAPV3ETHEREUMPositionSnapshotDTO>() {
           @Override
           public void write(JsonWriter out, UNISWAPV3ETHEREUMPositionSnapshotDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public UNISWAPV3ETHEREUMPositionSnapshotDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of UNISWAPV3ETHEREUMPositionSnapshotDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of UNISWAPV3ETHEREUMPositionSnapshotDTO
  * @throws IOException if the JSON string is invalid with respect to UNISWAPV3ETHEREUMPositionSnapshotDTO
  */
  public static UNISWAPV3ETHEREUMPositionSnapshotDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, UNISWAPV3ETHEREUMPositionSnapshotDTO.class);
  }

 /**
  * Convert an instance of UNISWAPV3ETHEREUMPositionSnapshotDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

