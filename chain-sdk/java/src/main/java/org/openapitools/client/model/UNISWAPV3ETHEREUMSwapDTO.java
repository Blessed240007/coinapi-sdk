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
import org.openapitools.client.model.TransactionsETradeAggressiveSide;
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
 * Trade (swap) event occurred in a pool.
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-08-08T12:51:03.637217Z[Etc/UTC]")
public class UNISWAPV3ETHEREUMSwapDTO {
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

  public static final String SERIALIZED_NAME_POOL = "pool";
  @SerializedName(SERIALIZED_NAME_POOL)
  private String pool;

  public static final String SERIALIZED_NAME_TIMESTAMP = "timestamp";
  @SerializedName(SERIALIZED_NAME_TIMESTAMP)
  private String timestamp;

  public static final String SERIALIZED_NAME_TICK = "tick";
  @SerializedName(SERIALIZED_NAME_TICK)
  private String tick;

  public static final String SERIALIZED_NAME_TOKEN_IN = "token_in";
  @SerializedName(SERIALIZED_NAME_TOKEN_IN)
  private String tokenIn;

  public static final String SERIALIZED_NAME_AMOUNT_IN = "amount_in";
  @SerializedName(SERIALIZED_NAME_AMOUNT_IN)
  private String amountIn;

  public static final String SERIALIZED_NAME_AMOUNT_IN_USD = "amount_in_usd";
  @SerializedName(SERIALIZED_NAME_AMOUNT_IN_USD)
  private String amountInUsd;

  public static final String SERIALIZED_NAME_TOKEN_OUT = "token_out";
  @SerializedName(SERIALIZED_NAME_TOKEN_OUT)
  private String tokenOut;

  public static final String SERIALIZED_NAME_AMOUNT_OUT = "amount_out";
  @SerializedName(SERIALIZED_NAME_AMOUNT_OUT)
  private String amountOut;

  public static final String SERIALIZED_NAME_AMOUNT_OUT_USD = "amount_out_usd";
  @SerializedName(SERIALIZED_NAME_AMOUNT_OUT_USD)
  private String amountOutUsd;

  public static final String SERIALIZED_NAME_RESERVE_AMOUNTS = "reserve_amounts";
  @SerializedName(SERIALIZED_NAME_RESERVE_AMOUNTS)
  private List<String> reserveAmounts;

  public static final String SERIALIZED_NAME_POOL_ID = "pool_id";
  @SerializedName(SERIALIZED_NAME_POOL_ID)
  private String poolId;

  public static final String SERIALIZED_NAME_TRANSACTION_ID = "transaction_id";
  @SerializedName(SERIALIZED_NAME_TRANSACTION_ID)
  private String transactionId;

  public static final String SERIALIZED_NAME_EVALUATED_PRICE = "evaluated_price";
  @SerializedName(SERIALIZED_NAME_EVALUATED_PRICE)
  private Double evaluatedPrice;

  public static final String SERIALIZED_NAME_EVALUATED_AMOUNT = "evaluated_amount";
  @SerializedName(SERIALIZED_NAME_EVALUATED_AMOUNT)
  private Double evaluatedAmount;

  public static final String SERIALIZED_NAME_EVALUATED_AGGRESSOR = "evaluated_aggressor";
  @SerializedName(SERIALIZED_NAME_EVALUATED_AGGRESSOR)
  private TransactionsETradeAggressiveSide evaluatedAggressor;

  public UNISWAPV3ETHEREUMSwapDTO() {
  }

  
  public UNISWAPV3ETHEREUMSwapDTO(
     String poolId, 
     String transactionId, 
     Double evaluatedPrice, 
     Double evaluatedAmount
  ) {
    this();
    this.poolId = poolId;
    this.transactionId = transactionId;
    this.evaluatedPrice = evaluatedPrice;
    this.evaluatedAmount = evaluatedAmount;
  }

  public UNISWAPV3ETHEREUMSwapDTO entryTime(OffsetDateTime entryTime) {
    
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


  public UNISWAPV3ETHEREUMSwapDTO recvTime(OffsetDateTime recvTime) {
    
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


  public UNISWAPV3ETHEREUMSwapDTO blockNumber(Long blockNumber) {
    
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


  public UNISWAPV3ETHEREUMSwapDTO block(Integer block) {
    
    this.block = block;
    return this;
  }

   /**
   * Block number in which the swap operation was recorded.
   * @return block
  **/
  @javax.annotation.Nullable
  public Integer getBlock() {
    return block;
  }


  public void setBlock(Integer block) {
    this.block = block;
  }


  public UNISWAPV3ETHEREUMSwapDTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Unique string identifier of the swap operation, format: (transaction hash)-(log index).
   * @return id
  **/
  @javax.annotation.Nullable
  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public UNISWAPV3ETHEREUMSwapDTO hash(String hash) {
    
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


  public UNISWAPV3ETHEREUMSwapDTO nonce(String nonce) {
    
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


  public UNISWAPV3ETHEREUMSwapDTO logIndex(Integer logIndex) {
    
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


  public UNISWAPV3ETHEREUMSwapDTO gasLimit(String gasLimit) {
    
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


  public UNISWAPV3ETHEREUMSwapDTO gasUsed(String gasUsed) {
    
    this.gasUsed = gasUsed;
    return this;
  }

   /**
   * Gas used in this transaction.
   * @return gasUsed
  **/
  @javax.annotation.Nullable
  public String getGasUsed() {
    return gasUsed;
  }


  public void setGasUsed(String gasUsed) {
    this.gasUsed = gasUsed;
  }


  public UNISWAPV3ETHEREUMSwapDTO gasPrice(String gasPrice) {
    
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


  public UNISWAPV3ETHEREUMSwapDTO protocol(String protocol) {
    
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


  public UNISWAPV3ETHEREUMSwapDTO account(String account) {
    
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


  public UNISWAPV3ETHEREUMSwapDTO pool(String pool) {
    
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


  public UNISWAPV3ETHEREUMSwapDTO timestamp(String timestamp) {
    
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


  public UNISWAPV3ETHEREUMSwapDTO tick(String tick) {
    
    this.tick = tick;
    return this;
  }

   /**
   * Tick of the swap operation.
   * @return tick
  **/
  @javax.annotation.Nullable
  public String getTick() {
    return tick;
  }


  public void setTick(String tick) {
    this.tick = tick;
  }


  public UNISWAPV3ETHEREUMSwapDTO tokenIn(String tokenIn) {
    
    this.tokenIn = tokenIn;
    return this;
  }

   /**
   * Token deposited into pool.
   * @return tokenIn
  **/
  @javax.annotation.Nullable
  public String getTokenIn() {
    return tokenIn;
  }


  public void setTokenIn(String tokenIn) {
    this.tokenIn = tokenIn;
  }


  public UNISWAPV3ETHEREUMSwapDTO amountIn(String amountIn) {
    
    this.amountIn = amountIn;
    return this;
  }

   /**
   * Amount of token deposited into pool in native units.
   * @return amountIn
  **/
  @javax.annotation.Nullable
  public String getAmountIn() {
    return amountIn;
  }


  public void setAmountIn(String amountIn) {
    this.amountIn = amountIn;
  }


  public UNISWAPV3ETHEREUMSwapDTO amountInUsd(String amountInUsd) {
    
    this.amountInUsd = amountInUsd;
    return this;
  }

   /**
   * Amount of token deposited into pool in USD.
   * @return amountInUsd
  **/
  @javax.annotation.Nullable
  public String getAmountInUsd() {
    return amountInUsd;
  }


  public void setAmountInUsd(String amountInUsd) {
    this.amountInUsd = amountInUsd;
  }


  public UNISWAPV3ETHEREUMSwapDTO tokenOut(String tokenOut) {
    
    this.tokenOut = tokenOut;
    return this;
  }

   /**
   * Token withdrawn from pool.
   * @return tokenOut
  **/
  @javax.annotation.Nullable
  public String getTokenOut() {
    return tokenOut;
  }


  public void setTokenOut(String tokenOut) {
    this.tokenOut = tokenOut;
  }


  public UNISWAPV3ETHEREUMSwapDTO amountOut(String amountOut) {
    
    this.amountOut = amountOut;
    return this;
  }

   /**
   * Amount of token withdrawn from pool in native units.
   * @return amountOut
  **/
  @javax.annotation.Nullable
  public String getAmountOut() {
    return amountOut;
  }


  public void setAmountOut(String amountOut) {
    this.amountOut = amountOut;
  }


  public UNISWAPV3ETHEREUMSwapDTO amountOutUsd(String amountOutUsd) {
    
    this.amountOutUsd = amountOutUsd;
    return this;
  }

   /**
   * Amount of token withdrawn from pool in USD.
   * @return amountOutUsd
  **/
  @javax.annotation.Nullable
  public String getAmountOutUsd() {
    return amountOutUsd;
  }


  public void setAmountOutUsd(String amountOutUsd) {
    this.amountOutUsd = amountOutUsd;
  }


  public UNISWAPV3ETHEREUMSwapDTO reserveAmounts(List<String> reserveAmounts) {
    
    this.reserveAmounts = reserveAmounts;
    return this;
  }

  public UNISWAPV3ETHEREUMSwapDTO addReserveAmountsItem(String reserveAmountsItem) {
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


   /**
   * Get poolId
   * @return poolId
  **/
  @javax.annotation.Nullable
  public String getPoolId() {
    return poolId;
  }




   /**
   * Get transactionId
   * @return transactionId
  **/
  @javax.annotation.Nullable
  public String getTransactionId() {
    return transactionId;
  }




   /**
   * Get evaluatedPrice
   * @return evaluatedPrice
  **/
  @javax.annotation.Nullable
  public Double getEvaluatedPrice() {
    return evaluatedPrice;
  }




   /**
   * Get evaluatedAmount
   * @return evaluatedAmount
  **/
  @javax.annotation.Nullable
  public Double getEvaluatedAmount() {
    return evaluatedAmount;
  }




  public UNISWAPV3ETHEREUMSwapDTO evaluatedAggressor(TransactionsETradeAggressiveSide evaluatedAggressor) {
    
    this.evaluatedAggressor = evaluatedAggressor;
    return this;
  }

   /**
   * Get evaluatedAggressor
   * @return evaluatedAggressor
  **/
  @javax.annotation.Nullable
  public TransactionsETradeAggressiveSide getEvaluatedAggressor() {
    return evaluatedAggressor;
  }


  public void setEvaluatedAggressor(TransactionsETradeAggressiveSide evaluatedAggressor) {
    this.evaluatedAggressor = evaluatedAggressor;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UNISWAPV3ETHEREUMSwapDTO unISWAPV3ETHEREUMSwapDTO = (UNISWAPV3ETHEREUMSwapDTO) o;
    return Objects.equals(this.entryTime, unISWAPV3ETHEREUMSwapDTO.entryTime) &&
        Objects.equals(this.recvTime, unISWAPV3ETHEREUMSwapDTO.recvTime) &&
        Objects.equals(this.blockNumber, unISWAPV3ETHEREUMSwapDTO.blockNumber) &&
        Objects.equals(this.block, unISWAPV3ETHEREUMSwapDTO.block) &&
        Objects.equals(this.id, unISWAPV3ETHEREUMSwapDTO.id) &&
        Objects.equals(this.hash, unISWAPV3ETHEREUMSwapDTO.hash) &&
        Objects.equals(this.nonce, unISWAPV3ETHEREUMSwapDTO.nonce) &&
        Objects.equals(this.logIndex, unISWAPV3ETHEREUMSwapDTO.logIndex) &&
        Objects.equals(this.gasLimit, unISWAPV3ETHEREUMSwapDTO.gasLimit) &&
        Objects.equals(this.gasUsed, unISWAPV3ETHEREUMSwapDTO.gasUsed) &&
        Objects.equals(this.gasPrice, unISWAPV3ETHEREUMSwapDTO.gasPrice) &&
        Objects.equals(this.protocol, unISWAPV3ETHEREUMSwapDTO.protocol) &&
        Objects.equals(this.account, unISWAPV3ETHEREUMSwapDTO.account) &&
        Objects.equals(this.pool, unISWAPV3ETHEREUMSwapDTO.pool) &&
        Objects.equals(this.timestamp, unISWAPV3ETHEREUMSwapDTO.timestamp) &&
        Objects.equals(this.tick, unISWAPV3ETHEREUMSwapDTO.tick) &&
        Objects.equals(this.tokenIn, unISWAPV3ETHEREUMSwapDTO.tokenIn) &&
        Objects.equals(this.amountIn, unISWAPV3ETHEREUMSwapDTO.amountIn) &&
        Objects.equals(this.amountInUsd, unISWAPV3ETHEREUMSwapDTO.amountInUsd) &&
        Objects.equals(this.tokenOut, unISWAPV3ETHEREUMSwapDTO.tokenOut) &&
        Objects.equals(this.amountOut, unISWAPV3ETHEREUMSwapDTO.amountOut) &&
        Objects.equals(this.amountOutUsd, unISWAPV3ETHEREUMSwapDTO.amountOutUsd) &&
        Objects.equals(this.reserveAmounts, unISWAPV3ETHEREUMSwapDTO.reserveAmounts) &&
        Objects.equals(this.poolId, unISWAPV3ETHEREUMSwapDTO.poolId) &&
        Objects.equals(this.transactionId, unISWAPV3ETHEREUMSwapDTO.transactionId) &&
        Objects.equals(this.evaluatedPrice, unISWAPV3ETHEREUMSwapDTO.evaluatedPrice) &&
        Objects.equals(this.evaluatedAmount, unISWAPV3ETHEREUMSwapDTO.evaluatedAmount) &&
        Objects.equals(this.evaluatedAggressor, unISWAPV3ETHEREUMSwapDTO.evaluatedAggressor);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, block, id, hash, nonce, logIndex, gasLimit, gasUsed, gasPrice, protocol, account, pool, timestamp, tick, tokenIn, amountIn, amountInUsd, tokenOut, amountOut, amountOutUsd, reserveAmounts, poolId, transactionId, evaluatedPrice, evaluatedAmount, evaluatedAggressor);
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
    sb.append("class UNISWAPV3ETHEREUMSwapDTO {\n");
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
    sb.append("    pool: ").append(toIndentedString(pool)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    tick: ").append(toIndentedString(tick)).append("\n");
    sb.append("    tokenIn: ").append(toIndentedString(tokenIn)).append("\n");
    sb.append("    amountIn: ").append(toIndentedString(amountIn)).append("\n");
    sb.append("    amountInUsd: ").append(toIndentedString(amountInUsd)).append("\n");
    sb.append("    tokenOut: ").append(toIndentedString(tokenOut)).append("\n");
    sb.append("    amountOut: ").append(toIndentedString(amountOut)).append("\n");
    sb.append("    amountOutUsd: ").append(toIndentedString(amountOutUsd)).append("\n");
    sb.append("    reserveAmounts: ").append(toIndentedString(reserveAmounts)).append("\n");
    sb.append("    poolId: ").append(toIndentedString(poolId)).append("\n");
    sb.append("    transactionId: ").append(toIndentedString(transactionId)).append("\n");
    sb.append("    evaluatedPrice: ").append(toIndentedString(evaluatedPrice)).append("\n");
    sb.append("    evaluatedAmount: ").append(toIndentedString(evaluatedAmount)).append("\n");
    sb.append("    evaluatedAggressor: ").append(toIndentedString(evaluatedAggressor)).append("\n");
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
    openapiFields.add("pool");
    openapiFields.add("timestamp");
    openapiFields.add("tick");
    openapiFields.add("token_in");
    openapiFields.add("amount_in");
    openapiFields.add("amount_in_usd");
    openapiFields.add("token_out");
    openapiFields.add("amount_out");
    openapiFields.add("amount_out_usd");
    openapiFields.add("reserve_amounts");
    openapiFields.add("pool_id");
    openapiFields.add("transaction_id");
    openapiFields.add("evaluated_price");
    openapiFields.add("evaluated_amount");
    openapiFields.add("evaluated_aggressor");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to UNISWAPV3ETHEREUMSwapDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!UNISWAPV3ETHEREUMSwapDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in UNISWAPV3ETHEREUMSwapDTO is not found in the empty JSON string", UNISWAPV3ETHEREUMSwapDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!UNISWAPV3ETHEREUMSwapDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `UNISWAPV3ETHEREUMSwapDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
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
      if ((jsonObj.get("pool") != null && !jsonObj.get("pool").isJsonNull()) && !jsonObj.get("pool").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `pool` to be a primitive type in the JSON string but got `%s`", jsonObj.get("pool").toString()));
      }
      if ((jsonObj.get("timestamp") != null && !jsonObj.get("timestamp").isJsonNull()) && !jsonObj.get("timestamp").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `timestamp` to be a primitive type in the JSON string but got `%s`", jsonObj.get("timestamp").toString()));
      }
      if ((jsonObj.get("tick") != null && !jsonObj.get("tick").isJsonNull()) && !jsonObj.get("tick").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `tick` to be a primitive type in the JSON string but got `%s`", jsonObj.get("tick").toString()));
      }
      if ((jsonObj.get("token_in") != null && !jsonObj.get("token_in").isJsonNull()) && !jsonObj.get("token_in").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `token_in` to be a primitive type in the JSON string but got `%s`", jsonObj.get("token_in").toString()));
      }
      if ((jsonObj.get("amount_in") != null && !jsonObj.get("amount_in").isJsonNull()) && !jsonObj.get("amount_in").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `amount_in` to be a primitive type in the JSON string but got `%s`", jsonObj.get("amount_in").toString()));
      }
      if ((jsonObj.get("amount_in_usd") != null && !jsonObj.get("amount_in_usd").isJsonNull()) && !jsonObj.get("amount_in_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `amount_in_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("amount_in_usd").toString()));
      }
      if ((jsonObj.get("token_out") != null && !jsonObj.get("token_out").isJsonNull()) && !jsonObj.get("token_out").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `token_out` to be a primitive type in the JSON string but got `%s`", jsonObj.get("token_out").toString()));
      }
      if ((jsonObj.get("amount_out") != null && !jsonObj.get("amount_out").isJsonNull()) && !jsonObj.get("amount_out").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `amount_out` to be a primitive type in the JSON string but got `%s`", jsonObj.get("amount_out").toString()));
      }
      if ((jsonObj.get("amount_out_usd") != null && !jsonObj.get("amount_out_usd").isJsonNull()) && !jsonObj.get("amount_out_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `amount_out_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("amount_out_usd").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("reserve_amounts") != null && !jsonObj.get("reserve_amounts").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `reserve_amounts` to be an array in the JSON string but got `%s`", jsonObj.get("reserve_amounts").toString()));
      }
      if ((jsonObj.get("pool_id") != null && !jsonObj.get("pool_id").isJsonNull()) && !jsonObj.get("pool_id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `pool_id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("pool_id").toString()));
      }
      if ((jsonObj.get("transaction_id") != null && !jsonObj.get("transaction_id").isJsonNull()) && !jsonObj.get("transaction_id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `transaction_id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("transaction_id").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!UNISWAPV3ETHEREUMSwapDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'UNISWAPV3ETHEREUMSwapDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<UNISWAPV3ETHEREUMSwapDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(UNISWAPV3ETHEREUMSwapDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<UNISWAPV3ETHEREUMSwapDTO>() {
           @Override
           public void write(JsonWriter out, UNISWAPV3ETHEREUMSwapDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public UNISWAPV3ETHEREUMSwapDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of UNISWAPV3ETHEREUMSwapDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of UNISWAPV3ETHEREUMSwapDTO
  * @throws IOException if the JSON string is invalid with respect to UNISWAPV3ETHEREUMSwapDTO
  */
  public static UNISWAPV3ETHEREUMSwapDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, UNISWAPV3ETHEREUMSwapDTO.class);
  }

 /**
  * Convert an instance of UNISWAPV3ETHEREUMSwapDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

