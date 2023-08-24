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
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-08-24T12:57:58.978232Z[Etc/UTC]")
public class CURVEFINANCEETHEREUMDepositDTO {
  public static final String SERIALIZED_NAME_ENTRY_TIME = "entry_time";
  @SerializedName(SERIALIZED_NAME_ENTRY_TIME)
  private OffsetDateTime entryTime;

  public static final String SERIALIZED_NAME_RECV_TIME = "recv_time";
  @SerializedName(SERIALIZED_NAME_RECV_TIME)
  private OffsetDateTime recvTime;

  public static final String SERIALIZED_NAME_BLOCK_NUMBER = "block_number";
  @SerializedName(SERIALIZED_NAME_BLOCK_NUMBER)
  private Long blockNumber;

  public static final String SERIALIZED_NAME_BLOCK_RANGE = "block_range";
  @SerializedName(SERIALIZED_NAME_BLOCK_RANGE)
  private String blockRange;

  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private String id;

  public static final String SERIALIZED_NAME_HASH = "hash";
  @SerializedName(SERIALIZED_NAME_HASH)
  private String hash;

  public static final String SERIALIZED_NAME_LOG_INDEX = "log_index";
  @SerializedName(SERIALIZED_NAME_LOG_INDEX)
  private Integer logIndex;

  public static final String SERIALIZED_NAME_PROTOCOL = "protocol";
  @SerializedName(SERIALIZED_NAME_PROTOCOL)
  private String protocol;

  public static final String SERIALIZED_NAME_TO = "to";
  @SerializedName(SERIALIZED_NAME_TO)
  private String to;

  public static final String SERIALIZED_NAME_FROM = "from";
  @SerializedName(SERIALIZED_NAME_FROM)
  private String from;

  public static final String SERIALIZED_NAME_TIMESTAMP = "timestamp";
  @SerializedName(SERIALIZED_NAME_TIMESTAMP)
  private String timestamp;

  public static final String SERIALIZED_NAME_INPUT_TOKENS = "input_tokens";
  @SerializedName(SERIALIZED_NAME_INPUT_TOKENS)
  private List<String> inputTokens;

  public static final String SERIALIZED_NAME_OUTPUT_TOKEN = "output_token";
  @SerializedName(SERIALIZED_NAME_OUTPUT_TOKEN)
  private String outputToken;

  public static final String SERIALIZED_NAME_INPUT_TOKEN_AMOUNTS = "input_token_amounts";
  @SerializedName(SERIALIZED_NAME_INPUT_TOKEN_AMOUNTS)
  private List<String> inputTokenAmounts;

  public static final String SERIALIZED_NAME_OUTPUT_TOKEN_AMOUNT = "output_token_amount";
  @SerializedName(SERIALIZED_NAME_OUTPUT_TOKEN_AMOUNT)
  private String outputTokenAmount;

  public static final String SERIALIZED_NAME_AMOUNT_USD = "amount_usd";
  @SerializedName(SERIALIZED_NAME_AMOUNT_USD)
  private String amountUsd;

  public static final String SERIALIZED_NAME_POOL = "pool";
  @SerializedName(SERIALIZED_NAME_POOL)
  private String pool;

  public CURVEFINANCEETHEREUMDepositDTO() {
  }

  public CURVEFINANCEETHEREUMDepositDTO entryTime(OffsetDateTime entryTime) {
    
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


  public CURVEFINANCEETHEREUMDepositDTO recvTime(OffsetDateTime recvTime) {
    
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


  public CURVEFINANCEETHEREUMDepositDTO blockNumber(Long blockNumber) {
    
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


  public CURVEFINANCEETHEREUMDepositDTO blockRange(String blockRange) {
    
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


  public CURVEFINANCEETHEREUMDepositDTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * deposit-(Transaction hash)-(log index)
   * @return id
  **/
  @javax.annotation.Nullable
  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public CURVEFINANCEETHEREUMDepositDTO hash(String hash) {
    
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


  public CURVEFINANCEETHEREUMDepositDTO logIndex(Integer logIndex) {
    
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


  public CURVEFINANCEETHEREUMDepositDTO protocol(String protocol) {
    
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


  public CURVEFINANCEETHEREUMDepositDTO to(String to) {
    
    this.to = to;
    return this;
  }

   /**
   * Address that received the tokens
   * @return to
  **/
  @javax.annotation.Nullable
  public String getTo() {
    return to;
  }


  public void setTo(String to) {
    this.to = to;
  }


  public CURVEFINANCEETHEREUMDepositDTO from(String from) {
    
    this.from = from;
    return this;
  }

   /**
   * Address that sent the tokens
   * @return from
  **/
  @javax.annotation.Nullable
  public String getFrom() {
    return from;
  }


  public void setFrom(String from) {
    this.from = from;
  }


  public CURVEFINANCEETHEREUMDepositDTO timestamp(String timestamp) {
    
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


  public CURVEFINANCEETHEREUMDepositDTO inputTokens(List<String> inputTokens) {
    
    this.inputTokens = inputTokens;
    return this;
  }

  public CURVEFINANCEETHEREUMDepositDTO addInputTokensItem(String inputTokensItem) {
    if (this.inputTokens == null) {
      this.inputTokens = new ArrayList<>();
    }
    this.inputTokens.add(inputTokensItem);
    return this;
  }

   /**
   * Input tokens of the pool. E.g. WETH and USDC to a WETH-USDC pool
   * @return inputTokens
  **/
  @javax.annotation.Nullable
  public List<String> getInputTokens() {
    return inputTokens;
  }


  public void setInputTokens(List<String> inputTokens) {
    this.inputTokens = inputTokens;
  }


  public CURVEFINANCEETHEREUMDepositDTO outputToken(String outputToken) {
    
    this.outputToken = outputToken;
    return this;
  }

   /**
   * Output token of the pool. E.g. the UNI-LP token
   * @return outputToken
  **/
  @javax.annotation.Nullable
  public String getOutputToken() {
    return outputToken;
  }


  public void setOutputToken(String outputToken) {
    this.outputToken = outputToken;
  }


  public CURVEFINANCEETHEREUMDepositDTO inputTokenAmounts(List<String> inputTokenAmounts) {
    
    this.inputTokenAmounts = inputTokenAmounts;
    return this;
  }

  public CURVEFINANCEETHEREUMDepositDTO addInputTokenAmountsItem(String inputTokenAmountsItem) {
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


  public CURVEFINANCEETHEREUMDepositDTO outputTokenAmount(String outputTokenAmount) {
    
    this.outputTokenAmount = outputTokenAmount;
    return this;
  }

   /**
   * Amount of output tokens in the token&#39;s native unit
   * @return outputTokenAmount
  **/
  @javax.annotation.Nullable
  public String getOutputTokenAmount() {
    return outputTokenAmount;
  }


  public void setOutputTokenAmount(String outputTokenAmount) {
    this.outputTokenAmount = outputTokenAmount;
  }


  public CURVEFINANCEETHEREUMDepositDTO amountUsd(String amountUsd) {
    
    this.amountUsd = amountUsd;
    return this;
  }

   /**
   * USD-normalized value of the transaction of the underlying (e.g. sum of tokens deposited into a pool)
   * @return amountUsd
  **/
  @javax.annotation.Nullable
  public String getAmountUsd() {
    return amountUsd;
  }


  public void setAmountUsd(String amountUsd) {
    this.amountUsd = amountUsd;
  }


  public CURVEFINANCEETHEREUMDepositDTO pool(String pool) {
    
    this.pool = pool;
    return this;
  }

   /**
   * The pool involving this transaction
   * @return pool
  **/
  @javax.annotation.Nullable
  public String getPool() {
    return pool;
  }


  public void setPool(String pool) {
    this.pool = pool;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CURVEFINANCEETHEREUMDepositDTO cuRVEFINANCEETHEREUMDepositDTO = (CURVEFINANCEETHEREUMDepositDTO) o;
    return Objects.equals(this.entryTime, cuRVEFINANCEETHEREUMDepositDTO.entryTime) &&
        Objects.equals(this.recvTime, cuRVEFINANCEETHEREUMDepositDTO.recvTime) &&
        Objects.equals(this.blockNumber, cuRVEFINANCEETHEREUMDepositDTO.blockNumber) &&
        Objects.equals(this.blockRange, cuRVEFINANCEETHEREUMDepositDTO.blockRange) &&
        Objects.equals(this.id, cuRVEFINANCEETHEREUMDepositDTO.id) &&
        Objects.equals(this.hash, cuRVEFINANCEETHEREUMDepositDTO.hash) &&
        Objects.equals(this.logIndex, cuRVEFINANCEETHEREUMDepositDTO.logIndex) &&
        Objects.equals(this.protocol, cuRVEFINANCEETHEREUMDepositDTO.protocol) &&
        Objects.equals(this.to, cuRVEFINANCEETHEREUMDepositDTO.to) &&
        Objects.equals(this.from, cuRVEFINANCEETHEREUMDepositDTO.from) &&
        Objects.equals(this.timestamp, cuRVEFINANCEETHEREUMDepositDTO.timestamp) &&
        Objects.equals(this.inputTokens, cuRVEFINANCEETHEREUMDepositDTO.inputTokens) &&
        Objects.equals(this.outputToken, cuRVEFINANCEETHEREUMDepositDTO.outputToken) &&
        Objects.equals(this.inputTokenAmounts, cuRVEFINANCEETHEREUMDepositDTO.inputTokenAmounts) &&
        Objects.equals(this.outputTokenAmount, cuRVEFINANCEETHEREUMDepositDTO.outputTokenAmount) &&
        Objects.equals(this.amountUsd, cuRVEFINANCEETHEREUMDepositDTO.amountUsd) &&
        Objects.equals(this.pool, cuRVEFINANCEETHEREUMDepositDTO.pool);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, blockRange, id, hash, logIndex, protocol, to, from, timestamp, inputTokens, outputToken, inputTokenAmounts, outputTokenAmount, amountUsd, pool);
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
    sb.append("class CURVEFINANCEETHEREUMDepositDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    blockRange: ").append(toIndentedString(blockRange)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    hash: ").append(toIndentedString(hash)).append("\n");
    sb.append("    logIndex: ").append(toIndentedString(logIndex)).append("\n");
    sb.append("    protocol: ").append(toIndentedString(protocol)).append("\n");
    sb.append("    to: ").append(toIndentedString(to)).append("\n");
    sb.append("    from: ").append(toIndentedString(from)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    inputTokens: ").append(toIndentedString(inputTokens)).append("\n");
    sb.append("    outputToken: ").append(toIndentedString(outputToken)).append("\n");
    sb.append("    inputTokenAmounts: ").append(toIndentedString(inputTokenAmounts)).append("\n");
    sb.append("    outputTokenAmount: ").append(toIndentedString(outputTokenAmount)).append("\n");
    sb.append("    amountUsd: ").append(toIndentedString(amountUsd)).append("\n");
    sb.append("    pool: ").append(toIndentedString(pool)).append("\n");
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
    openapiFields.add("block_range");
    openapiFields.add("id");
    openapiFields.add("hash");
    openapiFields.add("log_index");
    openapiFields.add("protocol");
    openapiFields.add("to");
    openapiFields.add("from");
    openapiFields.add("timestamp");
    openapiFields.add("input_tokens");
    openapiFields.add("output_token");
    openapiFields.add("input_token_amounts");
    openapiFields.add("output_token_amount");
    openapiFields.add("amount_usd");
    openapiFields.add("pool");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to CURVEFINANCEETHEREUMDepositDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!CURVEFINANCEETHEREUMDepositDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in CURVEFINANCEETHEREUMDepositDTO is not found in the empty JSON string", CURVEFINANCEETHEREUMDepositDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!CURVEFINANCEETHEREUMDepositDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `CURVEFINANCEETHEREUMDepositDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("block_range") != null && !jsonObj.get("block_range").isJsonNull()) && !jsonObj.get("block_range").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `block_range` to be a primitive type in the JSON string but got `%s`", jsonObj.get("block_range").toString()));
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("hash") != null && !jsonObj.get("hash").isJsonNull()) && !jsonObj.get("hash").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `hash` to be a primitive type in the JSON string but got `%s`", jsonObj.get("hash").toString()));
      }
      if ((jsonObj.get("protocol") != null && !jsonObj.get("protocol").isJsonNull()) && !jsonObj.get("protocol").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `protocol` to be a primitive type in the JSON string but got `%s`", jsonObj.get("protocol").toString()));
      }
      if ((jsonObj.get("to") != null && !jsonObj.get("to").isJsonNull()) && !jsonObj.get("to").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `to` to be a primitive type in the JSON string but got `%s`", jsonObj.get("to").toString()));
      }
      if ((jsonObj.get("from") != null && !jsonObj.get("from").isJsonNull()) && !jsonObj.get("from").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `from` to be a primitive type in the JSON string but got `%s`", jsonObj.get("from").toString()));
      }
      if ((jsonObj.get("timestamp") != null && !jsonObj.get("timestamp").isJsonNull()) && !jsonObj.get("timestamp").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `timestamp` to be a primitive type in the JSON string but got `%s`", jsonObj.get("timestamp").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("input_tokens") != null && !jsonObj.get("input_tokens").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `input_tokens` to be an array in the JSON string but got `%s`", jsonObj.get("input_tokens").toString()));
      }
      if ((jsonObj.get("output_token") != null && !jsonObj.get("output_token").isJsonNull()) && !jsonObj.get("output_token").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `output_token` to be a primitive type in the JSON string but got `%s`", jsonObj.get("output_token").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("input_token_amounts") != null && !jsonObj.get("input_token_amounts").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `input_token_amounts` to be an array in the JSON string but got `%s`", jsonObj.get("input_token_amounts").toString()));
      }
      if ((jsonObj.get("output_token_amount") != null && !jsonObj.get("output_token_amount").isJsonNull()) && !jsonObj.get("output_token_amount").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `output_token_amount` to be a primitive type in the JSON string but got `%s`", jsonObj.get("output_token_amount").toString()));
      }
      if ((jsonObj.get("amount_usd") != null && !jsonObj.get("amount_usd").isJsonNull()) && !jsonObj.get("amount_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `amount_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("amount_usd").toString()));
      }
      if ((jsonObj.get("pool") != null && !jsonObj.get("pool").isJsonNull()) && !jsonObj.get("pool").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `pool` to be a primitive type in the JSON string but got `%s`", jsonObj.get("pool").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!CURVEFINANCEETHEREUMDepositDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'CURVEFINANCEETHEREUMDepositDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<CURVEFINANCEETHEREUMDepositDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(CURVEFINANCEETHEREUMDepositDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<CURVEFINANCEETHEREUMDepositDTO>() {
           @Override
           public void write(JsonWriter out, CURVEFINANCEETHEREUMDepositDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public CURVEFINANCEETHEREUMDepositDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of CURVEFINANCEETHEREUMDepositDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of CURVEFINANCEETHEREUMDepositDTO
  * @throws IOException if the JSON string is invalid with respect to CURVEFINANCEETHEREUMDepositDTO
  */
  public static CURVEFINANCEETHEREUMDepositDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, CURVEFINANCEETHEREUMDepositDTO.class);
  }

 /**
  * Convert an instance of CURVEFINANCEETHEREUMDepositDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

