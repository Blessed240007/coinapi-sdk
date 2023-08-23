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
 * Entity represents a user action in the protocol involving the addition of funds to a liquidity pool.
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-08-23T15:18:53.663612Z[Etc/UTC]")
public class PANCAKESWAPV3ETHEREUMDepositDTO {
  public static final String SERIALIZED_NAME_ENTRY_TIME = "entry_time";
  @SerializedName(SERIALIZED_NAME_ENTRY_TIME)
  private OffsetDateTime entryTime;

  public static final String SERIALIZED_NAME_RECV_TIME = "recv_time";
  @SerializedName(SERIALIZED_NAME_RECV_TIME)
  private OffsetDateTime recvTime;

  public static final String SERIALIZED_NAME_BLOCK_NUMBER = "block_number";
  @SerializedName(SERIALIZED_NAME_BLOCK_NUMBER)
  private Long blockNumber;

  public static final String SERIALIZED_NAME_BLOCK = "block_";
  @SerializedName(SERIALIZED_NAME_BLOCK)
  private Integer block;

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

  public static final String SERIALIZED_NAME_POOL = "pool";
  @SerializedName(SERIALIZED_NAME_POOL)
  private String pool;

  public static final String SERIALIZED_NAME_TICK_LOWER = "tick_lower";
  @SerializedName(SERIALIZED_NAME_TICK_LOWER)
  private String tickLower;

  public static final String SERIALIZED_NAME_TICK_UPPER = "tick_upper";
  @SerializedName(SERIALIZED_NAME_TICK_UPPER)
  private String tickUpper;

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

  public static final String SERIALIZED_NAME_BLOCK_RANGE = "block_range";
  @SerializedName(SERIALIZED_NAME_BLOCK_RANGE)
  private String blockRange;

  public PANCAKESWAPV3ETHEREUMDepositDTO() {
  }

  public PANCAKESWAPV3ETHEREUMDepositDTO entryTime(OffsetDateTime entryTime) {
    
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


  public PANCAKESWAPV3ETHEREUMDepositDTO recvTime(OffsetDateTime recvTime) {
    
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


  public PANCAKESWAPV3ETHEREUMDepositDTO blockNumber(Long blockNumber) {
    
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


  public PANCAKESWAPV3ETHEREUMDepositDTO block(Integer block) {
    
    this.block = block;
    return this;
  }

   /**
   * 
   * @return block
  **/
  @javax.annotation.Nullable
  public Integer getBlock() {
    return block;
  }


  public void setBlock(Integer block) {
    this.block = block;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Identifier, format: (transaction hash)-(log index)
   * @return id
  **/
  @javax.annotation.Nullable
  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO hash(String hash) {
    
    this.hash = hash;
    return this;
  }

   /**
   * Transaction hash of the transaction that emitted this event.
   * @return hash
  **/
  @javax.annotation.Nullable
  public String getHash() {
    return hash;
  }


  public void setHash(String hash) {
    this.hash = hash;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO nonce(String nonce) {
    
    this.nonce = nonce;
    return this;
  }

   /**
   * Nonce of the transaction that emitted this event.
   * @return nonce
  **/
  @javax.annotation.Nullable
  public String getNonce() {
    return nonce;
  }


  public void setNonce(String nonce) {
    this.nonce = nonce;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO logIndex(Integer logIndex) {
    
    this.logIndex = logIndex;
    return this;
  }

   /**
   * Event log index. For transactions that don&#39;t emit event, create arbitrary index starting from 0.
   * @return logIndex
  **/
  @javax.annotation.Nullable
  public Integer getLogIndex() {
    return logIndex;
  }


  public void setLogIndex(Integer logIndex) {
    this.logIndex = logIndex;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO gasLimit(String gasLimit) {
    
    this.gasLimit = gasLimit;
    return this;
  }

   /**
   * Gas limit of the transaction that emitted this event.
   * @return gasLimit
  **/
  @javax.annotation.Nullable
  public String getGasLimit() {
    return gasLimit;
  }


  public void setGasLimit(String gasLimit) {
    this.gasLimit = gasLimit;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO gasUsed(String gasUsed) {
    
    this.gasUsed = gasUsed;
    return this;
  }

   /**
   * Gas used in this transaction. (Optional because not every chain will support this).
   * @return gasUsed
  **/
  @javax.annotation.Nullable
  public String getGasUsed() {
    return gasUsed;
  }


  public void setGasUsed(String gasUsed) {
    this.gasUsed = gasUsed;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO gasPrice(String gasPrice) {
    
    this.gasPrice = gasPrice;
    return this;
  }

   /**
   * Gas price of the transaction that emitted this event.
   * @return gasPrice
  **/
  @javax.annotation.Nullable
  public String getGasPrice() {
    return gasPrice;
  }


  public void setGasPrice(String gasPrice) {
    this.gasPrice = gasPrice;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO protocol(String protocol) {
    
    this.protocol = protocol;
    return this;
  }

   /**
   * The protocol this transaction belongs to.
   * @return protocol
  **/
  @javax.annotation.Nullable
  public String getProtocol() {
    return protocol;
  }


  public void setProtocol(String protocol) {
    this.protocol = protocol;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO account(String account) {
    
    this.account = account;
    return this;
  }

   /**
   * Account that emitted this event.
   * @return account
  **/
  @javax.annotation.Nullable
  public String getAccount() {
    return account;
  }


  public void setAccount(String account) {
    this.account = account;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO position(String position) {
    
    this.position = position;
    return this;
  }

   /**
   * The user position changed by this event.
   * @return position
  **/
  @javax.annotation.Nullable
  public String getPosition() {
    return position;
  }


  public void setPosition(String position) {
    this.position = position;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO pool(String pool) {
    
    this.pool = pool;
    return this;
  }

   /**
   * The pool involving this event.
   * @return pool
  **/
  @javax.annotation.Nullable
  public String getPool() {
    return pool;
  }


  public void setPool(String pool) {
    this.pool = pool;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO tickLower(String tickLower) {
    
    this.tickLower = tickLower;
    return this;
  }

   /**
   * Lower tick of position.
   * @return tickLower
  **/
  @javax.annotation.Nullable
  public String getTickLower() {
    return tickLower;
  }


  public void setTickLower(String tickLower) {
    this.tickLower = tickLower;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO tickUpper(String tickUpper) {
    
    this.tickUpper = tickUpper;
    return this;
  }

   /**
   * Upper tick of position.
   * @return tickUpper
  **/
  @javax.annotation.Nullable
  public String getTickUpper() {
    return tickUpper;
  }


  public void setTickUpper(String tickUpper) {
    this.tickUpper = tickUpper;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO timestamp(String timestamp) {
    
    this.timestamp = timestamp;
    return this;
  }

   /**
   * Timestamp of this event.
   * @return timestamp
  **/
  @javax.annotation.Nullable
  public String getTimestamp() {
    return timestamp;
  }


  public void setTimestamp(String timestamp) {
    this.timestamp = timestamp;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO liquidity(String liquidity) {
    
    this.liquidity = liquidity;
    return this;
  }

   /**
   * Amount of liquidity minted.
   * @return liquidity
  **/
  @javax.annotation.Nullable
  public String getLiquidity() {
    return liquidity;
  }


  public void setLiquidity(String liquidity) {
    this.liquidity = liquidity;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO inputTokens(List<String> inputTokens) {
    
    this.inputTokens = inputTokens;
    return this;
  }

  public PANCAKESWAPV3ETHEREUMDepositDTO addInputTokensItem(String inputTokensItem) {
    if (this.inputTokens == null) {
      this.inputTokens = new ArrayList<>();
    }
    this.inputTokens.add(inputTokensItem);
    return this;
  }

   /**
   * Input tokens of the pool. E.g. WETH and USDC to a WETH-USDC pool.
   * @return inputTokens
  **/
  @javax.annotation.Nullable
  public List<String> getInputTokens() {
    return inputTokens;
  }


  public void setInputTokens(List<String> inputTokens) {
    this.inputTokens = inputTokens;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO inputTokenAmounts(List<String> inputTokenAmounts) {
    
    this.inputTokenAmounts = inputTokenAmounts;
    return this;
  }

  public PANCAKESWAPV3ETHEREUMDepositDTO addInputTokenAmountsItem(String inputTokenAmountsItem) {
    if (this.inputTokenAmounts == null) {
      this.inputTokenAmounts = new ArrayList<>();
    }
    this.inputTokenAmounts.add(inputTokenAmountsItem);
    return this;
  }

   /**
   * Amount of input tokens in the token&#39;s native unit.
   * @return inputTokenAmounts
  **/
  @javax.annotation.Nullable
  public List<String> getInputTokenAmounts() {
    return inputTokenAmounts;
  }


  public void setInputTokenAmounts(List<String> inputTokenAmounts) {
    this.inputTokenAmounts = inputTokenAmounts;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO reserveAmounts(List<String> reserveAmounts) {
    
    this.reserveAmounts = reserveAmounts;
    return this;
  }

  public PANCAKESWAPV3ETHEREUMDepositDTO addReserveAmountsItem(String reserveAmountsItem) {
    if (this.reserveAmounts == null) {
      this.reserveAmounts = new ArrayList<>();
    }
    this.reserveAmounts.add(reserveAmountsItem);
    return this;
  }

   /**
   * Amount of input tokens in the liquidity pool.
   * @return reserveAmounts
  **/
  @javax.annotation.Nullable
  public List<String> getReserveAmounts() {
    return reserveAmounts;
  }


  public void setReserveAmounts(List<String> reserveAmounts) {
    this.reserveAmounts = reserveAmounts;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO amountUsd(String amountUsd) {
    
    this.amountUsd = amountUsd;
    return this;
  }

   /**
   * USD-normalized value of the transaction of the underlying (e.g. sum of tokens deposited into a pool).
   * @return amountUsd
  **/
  @javax.annotation.Nullable
  public String getAmountUsd() {
    return amountUsd;
  }


  public void setAmountUsd(String amountUsd) {
    this.amountUsd = amountUsd;
  }


  public PANCAKESWAPV3ETHEREUMDepositDTO blockRange(String blockRange) {
    
    this.blockRange = blockRange;
    return this;
  }

   /**
   * 
   * @return blockRange
  **/
  @javax.annotation.Nullable
  public String getBlockRange() {
    return blockRange;
  }


  public void setBlockRange(String blockRange) {
    this.blockRange = blockRange;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PANCAKESWAPV3ETHEREUMDepositDTO paNCAKESWAPV3ETHEREUMDepositDTO = (PANCAKESWAPV3ETHEREUMDepositDTO) o;
    return Objects.equals(this.entryTime, paNCAKESWAPV3ETHEREUMDepositDTO.entryTime) &&
        Objects.equals(this.recvTime, paNCAKESWAPV3ETHEREUMDepositDTO.recvTime) &&
        Objects.equals(this.blockNumber, paNCAKESWAPV3ETHEREUMDepositDTO.blockNumber) &&
        Objects.equals(this.block, paNCAKESWAPV3ETHEREUMDepositDTO.block) &&
        Objects.equals(this.id, paNCAKESWAPV3ETHEREUMDepositDTO.id) &&
        Objects.equals(this.hash, paNCAKESWAPV3ETHEREUMDepositDTO.hash) &&
        Objects.equals(this.nonce, paNCAKESWAPV3ETHEREUMDepositDTO.nonce) &&
        Objects.equals(this.logIndex, paNCAKESWAPV3ETHEREUMDepositDTO.logIndex) &&
        Objects.equals(this.gasLimit, paNCAKESWAPV3ETHEREUMDepositDTO.gasLimit) &&
        Objects.equals(this.gasUsed, paNCAKESWAPV3ETHEREUMDepositDTO.gasUsed) &&
        Objects.equals(this.gasPrice, paNCAKESWAPV3ETHEREUMDepositDTO.gasPrice) &&
        Objects.equals(this.protocol, paNCAKESWAPV3ETHEREUMDepositDTO.protocol) &&
        Objects.equals(this.account, paNCAKESWAPV3ETHEREUMDepositDTO.account) &&
        Objects.equals(this.position, paNCAKESWAPV3ETHEREUMDepositDTO.position) &&
        Objects.equals(this.pool, paNCAKESWAPV3ETHEREUMDepositDTO.pool) &&
        Objects.equals(this.tickLower, paNCAKESWAPV3ETHEREUMDepositDTO.tickLower) &&
        Objects.equals(this.tickUpper, paNCAKESWAPV3ETHEREUMDepositDTO.tickUpper) &&
        Objects.equals(this.timestamp, paNCAKESWAPV3ETHEREUMDepositDTO.timestamp) &&
        Objects.equals(this.liquidity, paNCAKESWAPV3ETHEREUMDepositDTO.liquidity) &&
        Objects.equals(this.inputTokens, paNCAKESWAPV3ETHEREUMDepositDTO.inputTokens) &&
        Objects.equals(this.inputTokenAmounts, paNCAKESWAPV3ETHEREUMDepositDTO.inputTokenAmounts) &&
        Objects.equals(this.reserveAmounts, paNCAKESWAPV3ETHEREUMDepositDTO.reserveAmounts) &&
        Objects.equals(this.amountUsd, paNCAKESWAPV3ETHEREUMDepositDTO.amountUsd) &&
        Objects.equals(this.blockRange, paNCAKESWAPV3ETHEREUMDepositDTO.blockRange);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, block, id, hash, nonce, logIndex, gasLimit, gasUsed, gasPrice, protocol, account, position, pool, tickLower, tickUpper, timestamp, liquidity, inputTokens, inputTokenAmounts, reserveAmounts, amountUsd, blockRange);
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
    sb.append("class PANCAKESWAPV3ETHEREUMDepositDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    block: ").append(toIndentedString(block)).append("\n");
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
    sb.append("    pool: ").append(toIndentedString(pool)).append("\n");
    sb.append("    tickLower: ").append(toIndentedString(tickLower)).append("\n");
    sb.append("    tickUpper: ").append(toIndentedString(tickUpper)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    liquidity: ").append(toIndentedString(liquidity)).append("\n");
    sb.append("    inputTokens: ").append(toIndentedString(inputTokens)).append("\n");
    sb.append("    inputTokenAmounts: ").append(toIndentedString(inputTokenAmounts)).append("\n");
    sb.append("    reserveAmounts: ").append(toIndentedString(reserveAmounts)).append("\n");
    sb.append("    amountUsd: ").append(toIndentedString(amountUsd)).append("\n");
    sb.append("    blockRange: ").append(toIndentedString(blockRange)).append("\n");
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
    openapiFields.add("block_");
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
    openapiFields.add("pool");
    openapiFields.add("tick_lower");
    openapiFields.add("tick_upper");
    openapiFields.add("timestamp");
    openapiFields.add("liquidity");
    openapiFields.add("input_tokens");
    openapiFields.add("input_token_amounts");
    openapiFields.add("reserve_amounts");
    openapiFields.add("amount_usd");
    openapiFields.add("block_range");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to PANCAKESWAPV3ETHEREUMDepositDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!PANCAKESWAPV3ETHEREUMDepositDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in PANCAKESWAPV3ETHEREUMDepositDTO is not found in the empty JSON string", PANCAKESWAPV3ETHEREUMDepositDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!PANCAKESWAPV3ETHEREUMDepositDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `PANCAKESWAPV3ETHEREUMDepositDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
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
      if ((jsonObj.get("pool") != null && !jsonObj.get("pool").isJsonNull()) && !jsonObj.get("pool").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `pool` to be a primitive type in the JSON string but got `%s`", jsonObj.get("pool").toString()));
      }
      if ((jsonObj.get("tick_lower") != null && !jsonObj.get("tick_lower").isJsonNull()) && !jsonObj.get("tick_lower").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `tick_lower` to be a primitive type in the JSON string but got `%s`", jsonObj.get("tick_lower").toString()));
      }
      if ((jsonObj.get("tick_upper") != null && !jsonObj.get("tick_upper").isJsonNull()) && !jsonObj.get("tick_upper").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `tick_upper` to be a primitive type in the JSON string but got `%s`", jsonObj.get("tick_upper").toString()));
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
      if ((jsonObj.get("block_range") != null && !jsonObj.get("block_range").isJsonNull()) && !jsonObj.get("block_range").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `block_range` to be a primitive type in the JSON string but got `%s`", jsonObj.get("block_range").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!PANCAKESWAPV3ETHEREUMDepositDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'PANCAKESWAPV3ETHEREUMDepositDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<PANCAKESWAPV3ETHEREUMDepositDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(PANCAKESWAPV3ETHEREUMDepositDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<PANCAKESWAPV3ETHEREUMDepositDTO>() {
           @Override
           public void write(JsonWriter out, PANCAKESWAPV3ETHEREUMDepositDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public PANCAKESWAPV3ETHEREUMDepositDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of PANCAKESWAPV3ETHEREUMDepositDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of PANCAKESWAPV3ETHEREUMDepositDTO
  * @throws IOException if the JSON string is invalid with respect to PANCAKESWAPV3ETHEREUMDepositDTO
  */
  public static PANCAKESWAPV3ETHEREUMDepositDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, PANCAKESWAPV3ETHEREUMDepositDTO.class);
  }

 /**
  * Convert an instance of PANCAKESWAPV3ETHEREUMDepositDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

