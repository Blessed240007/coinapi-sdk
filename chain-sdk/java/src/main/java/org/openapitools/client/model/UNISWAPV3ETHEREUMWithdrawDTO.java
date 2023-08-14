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
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-08-14T12:36:15.351008Z[Etc/UTC]")
public class UNISWAPV3ETHEREUMWithdrawDTO {
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

  public static final String SERIALIZED_NAME_NONCE = "nonce";
  @SerializedName(SERIALIZED_NAME_NONCE)
  private String nonce;

  public static final String SERIALIZED_NAME_LOG_INDEX = "log_index";
  @SerializedName(SERIALIZED_NAME_LOG_INDEX)
  private Integer logIndex;

  public static final String SERIALIZED_NAME_GAS_LIMIT = "gas_limit";
  @SerializedName(SERIALIZED_NAME_GAS_LIMIT)
  private String gasLimit;

  public static final String SERIALIZED_NAME_GAS_USED = "gas_used";
  @SerializedName(SERIALIZED_NAME_GAS_USED)
  private String gasUsed;

  public static final String SERIALIZED_NAME_GAS_PRICE = "gas_price";
  @SerializedName(SERIALIZED_NAME_GAS_PRICE)
  private String gasPrice;

  public static final String SERIALIZED_NAME_PROTOCOL = "protocol";
  @SerializedName(SERIALIZED_NAME_PROTOCOL)
  private String protocol;

  public static final String SERIALIZED_NAME_ACCOUNT = "account";
  @SerializedName(SERIALIZED_NAME_ACCOUNT)
  private String account;

  public static final String SERIALIZED_NAME_POSITION = "position";
  @SerializedName(SERIALIZED_NAME_POSITION)
  private String position;

  public static final String SERIALIZED_NAME_TICK_LOWER = "tick_lower";
  @SerializedName(SERIALIZED_NAME_TICK_LOWER)
  private String tickLower;

  public static final String SERIALIZED_NAME_TICK_UPPER = "tick_upper";
  @SerializedName(SERIALIZED_NAME_TICK_UPPER)
  private String tickUpper;

  public static final String SERIALIZED_NAME_POOL = "pool";
  @SerializedName(SERIALIZED_NAME_POOL)
  private String pool;

  public static final String SERIALIZED_NAME_TIMESTAMP = "timestamp";
  @SerializedName(SERIALIZED_NAME_TIMESTAMP)
  private String timestamp;

  public static final String SERIALIZED_NAME_LIQUIDITY = "liquidity";
  @SerializedName(SERIALIZED_NAME_LIQUIDITY)
  private String liquidity;

  public static final String SERIALIZED_NAME_INPUT_TOKENS = "input_tokens";
  @SerializedName(SERIALIZED_NAME_INPUT_TOKENS)
  private List<String> inputTokens;

  public static final String SERIALIZED_NAME_INPUT_TOKEN_AMOUNTS = "input_token_amounts";
  @SerializedName(SERIALIZED_NAME_INPUT_TOKEN_AMOUNTS)
  private List<String> inputTokenAmounts;

  public static final String SERIALIZED_NAME_RESERVE_AMOUNTS = "reserve_amounts";
  @SerializedName(SERIALIZED_NAME_RESERVE_AMOUNTS)
  private List<String> reserveAmounts;

  public static final String SERIALIZED_NAME_AMOUNT_USD = "amount_usd";
  @SerializedName(SERIALIZED_NAME_AMOUNT_USD)
  private String amountUsd;

  public UNISWAPV3ETHEREUMWithdrawDTO() {
  }

  public UNISWAPV3ETHEREUMWithdrawDTO entryTime(OffsetDateTime entryTime) {
    
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


  public UNISWAPV3ETHEREUMWithdrawDTO recvTime(OffsetDateTime recvTime) {
    
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


  public UNISWAPV3ETHEREUMWithdrawDTO blockNumber(Long blockNumber) {
    
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


  public UNISWAPV3ETHEREUMWithdrawDTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * (transaction hash)-(log index)
   * @return id
  **/
  @javax.annotation.Nullable
  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public UNISWAPV3ETHEREUMWithdrawDTO hash(String hash) {
    
    this.hash = hash;
    return this;
  }

   /**
   * Transaction hash of the transaction that emitted this event
   * @return hash
  **/
  @javax.annotation.Nullable
  public String getHash() {
    return hash;
  }


  public void setHash(String hash) {
    this.hash = hash;
  }


  public UNISWAPV3ETHEREUMWithdrawDTO nonce(String nonce) {
    
    this.nonce = nonce;
    return this;
  }

   /**
   * Nonce of the transaction that emitted this event
   * @return nonce
  **/
  @javax.annotation.Nullable
  public String getNonce() {
    return nonce;
  }


  public void setNonce(String nonce) {
    this.nonce = nonce;
  }


  public UNISWAPV3ETHEREUMWithdrawDTO logIndex(Integer logIndex) {
    
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


  public UNISWAPV3ETHEREUMWithdrawDTO gasLimit(String gasLimit) {
    
    this.gasLimit = gasLimit;
    return this;
  }

   /**
   * Gas limit of the transaction that emitted this event
   * @return gasLimit
  **/
  @javax.annotation.Nullable
  public String getGasLimit() {
    return gasLimit;
  }


  public void setGasLimit(String gasLimit) {
    this.gasLimit = gasLimit;
  }


  public UNISWAPV3ETHEREUMWithdrawDTO gasUsed(String gasUsed) {
    
    this.gasUsed = gasUsed;
    return this;
  }

   /**
   * Gas used in this transaction. (Optional because not every chain will support this)
   * @return gasUsed
  **/
  @javax.annotation.Nullable
  public String getGasUsed() {
    return gasUsed;
  }


  public void setGasUsed(String gasUsed) {
    this.gasUsed = gasUsed;
  }


  public UNISWAPV3ETHEREUMWithdrawDTO gasPrice(String gasPrice) {
    
    this.gasPrice = gasPrice;
    return this;
  }

   /**
   * Gas price of the transaction that emitted this event
   * @return gasPrice
  **/
  @javax.annotation.Nullable
  public String getGasPrice() {
    return gasPrice;
  }


  public void setGasPrice(String gasPrice) {
    this.gasPrice = gasPrice;
  }


  public UNISWAPV3ETHEREUMWithdrawDTO protocol(String protocol) {
    
    this.protocol = protocol;
    return this;
  }

   /**
   * The protocol this transaction belongs to
   * @return protocol
  **/
  @javax.annotation.Nullable
  public String getProtocol() {
    return protocol;
  }


  public void setProtocol(String protocol) {
    this.protocol = protocol;
  }


  public UNISWAPV3ETHEREUMWithdrawDTO account(String account) {
    
    this.account = account;
    return this;
  }

   /**
   * Account that emitted this event
   * @return account
  **/
  @javax.annotation.Nullable
  public String getAccount() {
    return account;
  }


  public void setAccount(String account) {
    this.account = account;
  }


  public UNISWAPV3ETHEREUMWithdrawDTO position(String position) {
    
    this.position = position;
    return this;
  }

   /**
   * The user position changed by this event
   * @return position
  **/
  @javax.annotation.Nullable
  public String getPosition() {
    return position;
  }


  public void setPosition(String position) {
    this.position = position;
  }


  public UNISWAPV3ETHEREUMWithdrawDTO tickLower(String tickLower) {
    
    this.tickLower = tickLower;
    return this;
  }

   /**
   * lower tick of position
   * @return tickLower
  **/
  @javax.annotation.Nullable
  public String getTickLower() {
    return tickLower;
  }


  public void setTickLower(String tickLower) {
    this.tickLower = tickLower;
  }


  public UNISWAPV3ETHEREUMWithdrawDTO tickUpper(String tickUpper) {
    
    this.tickUpper = tickUpper;
    return this;
  }

   /**
   * upper tick of position
   * @return tickUpper
  **/
  @javax.annotation.Nullable
  public String getTickUpper() {
    return tickUpper;
  }


  public void setTickUpper(String tickUpper) {
    this.tickUpper = tickUpper;
  }


  public UNISWAPV3ETHEREUMWithdrawDTO pool(String pool) {
    
    this.pool = pool;
    return this;
  }

   /**
   * The pool involving this event
   * @return pool
  **/
  @javax.annotation.Nullable
  public String getPool() {
    return pool;
  }


  public void setPool(String pool) {
    this.pool = pool;
  }


  public UNISWAPV3ETHEREUMWithdrawDTO timestamp(String timestamp) {
    
    this.timestamp = timestamp;
    return this;
  }

   /**
   * Timestamp of this event
   * @return timestamp
  **/
  @javax.annotation.Nullable
  public String getTimestamp() {
    return timestamp;
  }


  public void setTimestamp(String timestamp) {
    this.timestamp = timestamp;
  }


  public UNISWAPV3ETHEREUMWithdrawDTO liquidity(String liquidity) {
    
    this.liquidity = liquidity;
    return this;
  }

   /**
   * Amount of liquidity burned
   * @return liquidity
  **/
  @javax.annotation.Nullable
  public String getLiquidity() {
    return liquidity;
  }


  public void setLiquidity(String liquidity) {
    this.liquidity = liquidity;
  }


  public UNISWAPV3ETHEREUMWithdrawDTO inputTokens(List<String> inputTokens) {
    
    this.inputTokens = inputTokens;
    return this;
  }

  public UNISWAPV3ETHEREUMWithdrawDTO addInputTokensItem(String inputTokensItem) {
    if (this.inputTokens == null) {
      this.inputTokens = new ArrayList<>();
    }
    this.inputTokens.add(inputTokensItem);
    return this;
  }

   /**
   * Input tokens of the pool (not input tokens of the event/transaction). E.g. WETH and USDC from a WETH-USDC pool
   * @return inputTokens
  **/
  @javax.annotation.Nullable
  public List<String> getInputTokens() {
    return inputTokens;
  }


  public void setInputTokens(List<String> inputTokens) {
    this.inputTokens = inputTokens;
  }


  public UNISWAPV3ETHEREUMWithdrawDTO inputTokenAmounts(List<String> inputTokenAmounts) {
    
    this.inputTokenAmounts = inputTokenAmounts;
    return this;
  }

  public UNISWAPV3ETHEREUMWithdrawDTO addInputTokenAmountsItem(String inputTokenAmountsItem) {
    if (this.inputTokenAmounts == null) {
      this.inputTokenAmounts = new ArrayList<>();
    }
    this.inputTokenAmounts.add(inputTokenAmountsItem);
    return this;
  }

   /**
   * Amount of input tokens in the token&#39;s native unit
   * @return inputTokenAmounts
  **/
  @javax.annotation.Nullable
  public List<String> getInputTokenAmounts() {
    return inputTokenAmounts;
  }


  public void setInputTokenAmounts(List<String> inputTokenAmounts) {
    this.inputTokenAmounts = inputTokenAmounts;
  }


  public UNISWAPV3ETHEREUMWithdrawDTO reserveAmounts(List<String> reserveAmounts) {
    
    this.reserveAmounts = reserveAmounts;
    return this;
  }

  public UNISWAPV3ETHEREUMWithdrawDTO addReserveAmountsItem(String reserveAmountsItem) {
    if (this.reserveAmounts == null) {
      this.reserveAmounts = new ArrayList<>();
    }
    this.reserveAmounts.add(reserveAmountsItem);
    return this;
  }

   /**
   * Amount of input tokens in the liquidity pool
   * @return reserveAmounts
  **/
  @javax.annotation.Nullable
  public List<String> getReserveAmounts() {
    return reserveAmounts;
  }


  public void setReserveAmounts(List<String> reserveAmounts) {
    this.reserveAmounts = reserveAmounts;
  }


  public UNISWAPV3ETHEREUMWithdrawDTO amountUsd(String amountUsd) {
    
    this.amountUsd = amountUsd;
    return this;
  }

   /**
   * USD-normalized value of the transaction of the underlying (e.g. sum of tokens withdrawn from a pool)
   * @return amountUsd
  **/
  @javax.annotation.Nullable
  public String getAmountUsd() {
    return amountUsd;
  }


  public void setAmountUsd(String amountUsd) {
    this.amountUsd = amountUsd;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UNISWAPV3ETHEREUMWithdrawDTO unISWAPV3ETHEREUMWithdrawDTO = (UNISWAPV3ETHEREUMWithdrawDTO) o;
    return Objects.equals(this.entryTime, unISWAPV3ETHEREUMWithdrawDTO.entryTime) &&
        Objects.equals(this.recvTime, unISWAPV3ETHEREUMWithdrawDTO.recvTime) &&
        Objects.equals(this.blockNumber, unISWAPV3ETHEREUMWithdrawDTO.blockNumber) &&
        Objects.equals(this.id, unISWAPV3ETHEREUMWithdrawDTO.id) &&
        Objects.equals(this.hash, unISWAPV3ETHEREUMWithdrawDTO.hash) &&
        Objects.equals(this.nonce, unISWAPV3ETHEREUMWithdrawDTO.nonce) &&
        Objects.equals(this.logIndex, unISWAPV3ETHEREUMWithdrawDTO.logIndex) &&
        Objects.equals(this.gasLimit, unISWAPV3ETHEREUMWithdrawDTO.gasLimit) &&
        Objects.equals(this.gasUsed, unISWAPV3ETHEREUMWithdrawDTO.gasUsed) &&
        Objects.equals(this.gasPrice, unISWAPV3ETHEREUMWithdrawDTO.gasPrice) &&
        Objects.equals(this.protocol, unISWAPV3ETHEREUMWithdrawDTO.protocol) &&
        Objects.equals(this.account, unISWAPV3ETHEREUMWithdrawDTO.account) &&
        Objects.equals(this.position, unISWAPV3ETHEREUMWithdrawDTO.position) &&
        Objects.equals(this.tickLower, unISWAPV3ETHEREUMWithdrawDTO.tickLower) &&
        Objects.equals(this.tickUpper, unISWAPV3ETHEREUMWithdrawDTO.tickUpper) &&
        Objects.equals(this.pool, unISWAPV3ETHEREUMWithdrawDTO.pool) &&
        Objects.equals(this.timestamp, unISWAPV3ETHEREUMWithdrawDTO.timestamp) &&
        Objects.equals(this.liquidity, unISWAPV3ETHEREUMWithdrawDTO.liquidity) &&
        Objects.equals(this.inputTokens, unISWAPV3ETHEREUMWithdrawDTO.inputTokens) &&
        Objects.equals(this.inputTokenAmounts, unISWAPV3ETHEREUMWithdrawDTO.inputTokenAmounts) &&
        Objects.equals(this.reserveAmounts, unISWAPV3ETHEREUMWithdrawDTO.reserveAmounts) &&
        Objects.equals(this.amountUsd, unISWAPV3ETHEREUMWithdrawDTO.amountUsd);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, id, hash, nonce, logIndex, gasLimit, gasUsed, gasPrice, protocol, account, position, tickLower, tickUpper, pool, timestamp, liquidity, inputTokens, inputTokenAmounts, reserveAmounts, amountUsd);
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
    sb.append("class UNISWAPV3ETHEREUMWithdrawDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    hash: ").append(toIndentedString(hash)).append("\n");
    sb.append("    nonce: ").append(toIndentedString(nonce)).append("\n");
    sb.append("    logIndex: ").append(toIndentedString(logIndex)).append("\n");
    sb.append("    gasLimit: ").append(toIndentedString(gasLimit)).append("\n");
    sb.append("    gasUsed: ").append(toIndentedString(gasUsed)).append("\n");
    sb.append("    gasPrice: ").append(toIndentedString(gasPrice)).append("\n");
    sb.append("    protocol: ").append(toIndentedString(protocol)).append("\n");
    sb.append("    account: ").append(toIndentedString(account)).append("\n");
    sb.append("    position: ").append(toIndentedString(position)).append("\n");
    sb.append("    tickLower: ").append(toIndentedString(tickLower)).append("\n");
    sb.append("    tickUpper: ").append(toIndentedString(tickUpper)).append("\n");
    sb.append("    pool: ").append(toIndentedString(pool)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    liquidity: ").append(toIndentedString(liquidity)).append("\n");
    sb.append("    inputTokens: ").append(toIndentedString(inputTokens)).append("\n");
    sb.append("    inputTokenAmounts: ").append(toIndentedString(inputTokenAmounts)).append("\n");
    sb.append("    reserveAmounts: ").append(toIndentedString(reserveAmounts)).append("\n");
    sb.append("    amountUsd: ").append(toIndentedString(amountUsd)).append("\n");
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
    openapiFields.add("nonce");
    openapiFields.add("log_index");
    openapiFields.add("gas_limit");
    openapiFields.add("gas_used");
    openapiFields.add("gas_price");
    openapiFields.add("protocol");
    openapiFields.add("account");
    openapiFields.add("position");
    openapiFields.add("tick_lower");
    openapiFields.add("tick_upper");
    openapiFields.add("pool");
    openapiFields.add("timestamp");
    openapiFields.add("liquidity");
    openapiFields.add("input_tokens");
    openapiFields.add("input_token_amounts");
    openapiFields.add("reserve_amounts");
    openapiFields.add("amount_usd");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to UNISWAPV3ETHEREUMWithdrawDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!UNISWAPV3ETHEREUMWithdrawDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in UNISWAPV3ETHEREUMWithdrawDTO is not found in the empty JSON string", UNISWAPV3ETHEREUMWithdrawDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!UNISWAPV3ETHEREUMWithdrawDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `UNISWAPV3ETHEREUMWithdrawDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
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
      if ((jsonObj.get("gas_limit") != null && !jsonObj.get("gas_limit").isJsonNull()) && !jsonObj.get("gas_limit").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `gas_limit` to be a primitive type in the JSON string but got `%s`", jsonObj.get("gas_limit").toString()));
      }
      if ((jsonObj.get("gas_used") != null && !jsonObj.get("gas_used").isJsonNull()) && !jsonObj.get("gas_used").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `gas_used` to be a primitive type in the JSON string but got `%s`", jsonObj.get("gas_used").toString()));
      }
      if ((jsonObj.get("gas_price") != null && !jsonObj.get("gas_price").isJsonNull()) && !jsonObj.get("gas_price").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `gas_price` to be a primitive type in the JSON string but got `%s`", jsonObj.get("gas_price").toString()));
      }
      if ((jsonObj.get("protocol") != null && !jsonObj.get("protocol").isJsonNull()) && !jsonObj.get("protocol").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `protocol` to be a primitive type in the JSON string but got `%s`", jsonObj.get("protocol").toString()));
      }
      if ((jsonObj.get("account") != null && !jsonObj.get("account").isJsonNull()) && !jsonObj.get("account").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `account` to be a primitive type in the JSON string but got `%s`", jsonObj.get("account").toString()));
      }
      if ((jsonObj.get("position") != null && !jsonObj.get("position").isJsonNull()) && !jsonObj.get("position").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `position` to be a primitive type in the JSON string but got `%s`", jsonObj.get("position").toString()));
      }
      if ((jsonObj.get("tick_lower") != null && !jsonObj.get("tick_lower").isJsonNull()) && !jsonObj.get("tick_lower").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `tick_lower` to be a primitive type in the JSON string but got `%s`", jsonObj.get("tick_lower").toString()));
      }
      if ((jsonObj.get("tick_upper") != null && !jsonObj.get("tick_upper").isJsonNull()) && !jsonObj.get("tick_upper").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `tick_upper` to be a primitive type in the JSON string but got `%s`", jsonObj.get("tick_upper").toString()));
      }
      if ((jsonObj.get("pool") != null && !jsonObj.get("pool").isJsonNull()) && !jsonObj.get("pool").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `pool` to be a primitive type in the JSON string but got `%s`", jsonObj.get("pool").toString()));
      }
      if ((jsonObj.get("timestamp") != null && !jsonObj.get("timestamp").isJsonNull()) && !jsonObj.get("timestamp").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `timestamp` to be a primitive type in the JSON string but got `%s`", jsonObj.get("timestamp").toString()));
      }
      if ((jsonObj.get("liquidity") != null && !jsonObj.get("liquidity").isJsonNull()) && !jsonObj.get("liquidity").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `liquidity` to be a primitive type in the JSON string but got `%s`", jsonObj.get("liquidity").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("input_tokens") != null && !jsonObj.get("input_tokens").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `input_tokens` to be an array in the JSON string but got `%s`", jsonObj.get("input_tokens").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("input_token_amounts") != null && !jsonObj.get("input_token_amounts").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `input_token_amounts` to be an array in the JSON string but got `%s`", jsonObj.get("input_token_amounts").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("reserve_amounts") != null && !jsonObj.get("reserve_amounts").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `reserve_amounts` to be an array in the JSON string but got `%s`", jsonObj.get("reserve_amounts").toString()));
      }
      if ((jsonObj.get("amount_usd") != null && !jsonObj.get("amount_usd").isJsonNull()) && !jsonObj.get("amount_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `amount_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("amount_usd").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!UNISWAPV3ETHEREUMWithdrawDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'UNISWAPV3ETHEREUMWithdrawDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<UNISWAPV3ETHEREUMWithdrawDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(UNISWAPV3ETHEREUMWithdrawDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<UNISWAPV3ETHEREUMWithdrawDTO>() {
           @Override
           public void write(JsonWriter out, UNISWAPV3ETHEREUMWithdrawDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public UNISWAPV3ETHEREUMWithdrawDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of UNISWAPV3ETHEREUMWithdrawDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of UNISWAPV3ETHEREUMWithdrawDTO
  * @throws IOException if the JSON string is invalid with respect to UNISWAPV3ETHEREUMWithdrawDTO
  */
  public static UNISWAPV3ETHEREUMWithdrawDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, UNISWAPV3ETHEREUMWithdrawDTO.class);
  }

 /**
  * Convert an instance of UNISWAPV3ETHEREUMWithdrawDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

