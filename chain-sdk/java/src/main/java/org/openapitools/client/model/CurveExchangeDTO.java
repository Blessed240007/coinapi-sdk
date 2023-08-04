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
 * CurveExchangeDTO
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-08-04T12:28:52.928454Z[Etc/UTC]")
public class CurveExchangeDTO {
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

  public static final String SERIALIZED_NAME_POOL = "pool";
  @SerializedName(SERIALIZED_NAME_POOL)
  private String pool;

  public static final String SERIALIZED_NAME_BUYER = "buyer";
  @SerializedName(SERIALIZED_NAME_BUYER)
  private String buyer;

  public static final String SERIALIZED_NAME_RECEIVER = "receiver";
  @SerializedName(SERIALIZED_NAME_RECEIVER)
  private String receiver;

  public static final String SERIALIZED_NAME_TOKEN_SOLD = "token_sold";
  @SerializedName(SERIALIZED_NAME_TOKEN_SOLD)
  private String tokenSold;

  public static final String SERIALIZED_NAME_TOKEN_BOUGHT = "token_bought";
  @SerializedName(SERIALIZED_NAME_TOKEN_BOUGHT)
  private String tokenBought;

  public static final String SERIALIZED_NAME_AMOUNT_SOLD = "amount_sold";
  @SerializedName(SERIALIZED_NAME_AMOUNT_SOLD)
  private String amountSold;

  public static final String SERIALIZED_NAME_AMOUNT_BOUGHT = "amount_bought";
  @SerializedName(SERIALIZED_NAME_AMOUNT_BOUGHT)
  private String amountBought;

  public static final String SERIALIZED_NAME_BLOCK = "block";
  @SerializedName(SERIALIZED_NAME_BLOCK)
  private String block;

  public static final String SERIALIZED_NAME_TIMESTAMP = "timestamp";
  @SerializedName(SERIALIZED_NAME_TIMESTAMP)
  private String timestamp;

  public static final String SERIALIZED_NAME_TRANSACTION = "transaction";
  @SerializedName(SERIALIZED_NAME_TRANSACTION)
  private String transaction;

  public static final String SERIALIZED_NAME_VID = "vid";
  @SerializedName(SERIALIZED_NAME_VID)
  private Long vid;

  public static final String SERIALIZED_NAME_EVALUATED_PRICE = "evaluated_price";
  @SerializedName(SERIALIZED_NAME_EVALUATED_PRICE)
  private Double evaluatedPrice;

  public static final String SERIALIZED_NAME_EVALUATED_AMOUNT = "evaluated_amount";
  @SerializedName(SERIALIZED_NAME_EVALUATED_AMOUNT)
  private Double evaluatedAmount;

  public static final String SERIALIZED_NAME_EVALUATED_AGGRESSOR = "evaluated_aggressor";
  @SerializedName(SERIALIZED_NAME_EVALUATED_AGGRESSOR)
  private TransactionsETradeAggressiveSide evaluatedAggressor;

  public static final String SERIALIZED_NAME_POOL_ID = "pool_id";
  @SerializedName(SERIALIZED_NAME_POOL_ID)
  private String poolId;

  public static final String SERIALIZED_NAME_TRANSACTION_ID = "transaction_id";
  @SerializedName(SERIALIZED_NAME_TRANSACTION_ID)
  private String transactionId;

  public CurveExchangeDTO() {
  }

  
  public CurveExchangeDTO(
     Double evaluatedPrice, 
     Double evaluatedAmount, 
     String poolId, 
     String transactionId
  ) {
    this();
    this.evaluatedPrice = evaluatedPrice;
    this.evaluatedAmount = evaluatedAmount;
    this.poolId = poolId;
    this.transactionId = transactionId;
  }

  public CurveExchangeDTO entryTime(OffsetDateTime entryTime) {
    
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


  public CurveExchangeDTO recvTime(OffsetDateTime recvTime) {
    
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


  public CurveExchangeDTO blockNumber(Long blockNumber) {
    
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


  public CurveExchangeDTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * 
   * @return id
  **/
  @javax.annotation.Nullable
  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public CurveExchangeDTO pool(String pool) {
    
    this.pool = pool;
    return this;
  }

   /**
   * 
   * @return pool
  **/
  @javax.annotation.Nullable
  public String getPool() {
    return pool;
  }


  public void setPool(String pool) {
    this.pool = pool;
  }


  public CurveExchangeDTO buyer(String buyer) {
    
    this.buyer = buyer;
    return this;
  }

   /**
   * 
   * @return buyer
  **/
  @javax.annotation.Nullable
  public String getBuyer() {
    return buyer;
  }


  public void setBuyer(String buyer) {
    this.buyer = buyer;
  }


  public CurveExchangeDTO receiver(String receiver) {
    
    this.receiver = receiver;
    return this;
  }

   /**
   * 
   * @return receiver
  **/
  @javax.annotation.Nullable
  public String getReceiver() {
    return receiver;
  }


  public void setReceiver(String receiver) {
    this.receiver = receiver;
  }


  public CurveExchangeDTO tokenSold(String tokenSold) {
    
    this.tokenSold = tokenSold;
    return this;
  }

   /**
   * 
   * @return tokenSold
  **/
  @javax.annotation.Nullable
  public String getTokenSold() {
    return tokenSold;
  }


  public void setTokenSold(String tokenSold) {
    this.tokenSold = tokenSold;
  }


  public CurveExchangeDTO tokenBought(String tokenBought) {
    
    this.tokenBought = tokenBought;
    return this;
  }

   /**
   * 
   * @return tokenBought
  **/
  @javax.annotation.Nullable
  public String getTokenBought() {
    return tokenBought;
  }


  public void setTokenBought(String tokenBought) {
    this.tokenBought = tokenBought;
  }


  public CurveExchangeDTO amountSold(String amountSold) {
    
    this.amountSold = amountSold;
    return this;
  }

   /**
   * 
   * @return amountSold
  **/
  @javax.annotation.Nullable
  public String getAmountSold() {
    return amountSold;
  }


  public void setAmountSold(String amountSold) {
    this.amountSold = amountSold;
  }


  public CurveExchangeDTO amountBought(String amountBought) {
    
    this.amountBought = amountBought;
    return this;
  }

   /**
   * 
   * @return amountBought
  **/
  @javax.annotation.Nullable
  public String getAmountBought() {
    return amountBought;
  }


  public void setAmountBought(String amountBought) {
    this.amountBought = amountBought;
  }


  public CurveExchangeDTO block(String block) {
    
    this.block = block;
    return this;
  }

   /**
   * 
   * @return block
  **/
  @javax.annotation.Nullable
  public String getBlock() {
    return block;
  }


  public void setBlock(String block) {
    this.block = block;
  }


  public CurveExchangeDTO timestamp(String timestamp) {
    
    this.timestamp = timestamp;
    return this;
  }

   /**
   * 
   * @return timestamp
  **/
  @javax.annotation.Nullable
  public String getTimestamp() {
    return timestamp;
  }


  public void setTimestamp(String timestamp) {
    this.timestamp = timestamp;
  }


  public CurveExchangeDTO transaction(String transaction) {
    
    this.transaction = transaction;
    return this;
  }

   /**
   * 
   * @return transaction
  **/
  @javax.annotation.Nullable
  public String getTransaction() {
    return transaction;
  }


  public void setTransaction(String transaction) {
    this.transaction = transaction;
  }


  public CurveExchangeDTO vid(Long vid) {
    
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




  public CurveExchangeDTO evaluatedAggressor(TransactionsETradeAggressiveSide evaluatedAggressor) {
    
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





  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CurveExchangeDTO curveExchangeDTO = (CurveExchangeDTO) o;
    return Objects.equals(this.entryTime, curveExchangeDTO.entryTime) &&
        Objects.equals(this.recvTime, curveExchangeDTO.recvTime) &&
        Objects.equals(this.blockNumber, curveExchangeDTO.blockNumber) &&
        Objects.equals(this.id, curveExchangeDTO.id) &&
        Objects.equals(this.pool, curveExchangeDTO.pool) &&
        Objects.equals(this.buyer, curveExchangeDTO.buyer) &&
        Objects.equals(this.receiver, curveExchangeDTO.receiver) &&
        Objects.equals(this.tokenSold, curveExchangeDTO.tokenSold) &&
        Objects.equals(this.tokenBought, curveExchangeDTO.tokenBought) &&
        Objects.equals(this.amountSold, curveExchangeDTO.amountSold) &&
        Objects.equals(this.amountBought, curveExchangeDTO.amountBought) &&
        Objects.equals(this.block, curveExchangeDTO.block) &&
        Objects.equals(this.timestamp, curveExchangeDTO.timestamp) &&
        Objects.equals(this.transaction, curveExchangeDTO.transaction) &&
        Objects.equals(this.vid, curveExchangeDTO.vid) &&
        Objects.equals(this.evaluatedPrice, curveExchangeDTO.evaluatedPrice) &&
        Objects.equals(this.evaluatedAmount, curveExchangeDTO.evaluatedAmount) &&
        Objects.equals(this.evaluatedAggressor, curveExchangeDTO.evaluatedAggressor) &&
        Objects.equals(this.poolId, curveExchangeDTO.poolId) &&
        Objects.equals(this.transactionId, curveExchangeDTO.transactionId);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, id, pool, buyer, receiver, tokenSold, tokenBought, amountSold, amountBought, block, timestamp, transaction, vid, evaluatedPrice, evaluatedAmount, evaluatedAggressor, poolId, transactionId);
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
    sb.append("class CurveExchangeDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    pool: ").append(toIndentedString(pool)).append("\n");
    sb.append("    buyer: ").append(toIndentedString(buyer)).append("\n");
    sb.append("    receiver: ").append(toIndentedString(receiver)).append("\n");
    sb.append("    tokenSold: ").append(toIndentedString(tokenSold)).append("\n");
    sb.append("    tokenBought: ").append(toIndentedString(tokenBought)).append("\n");
    sb.append("    amountSold: ").append(toIndentedString(amountSold)).append("\n");
    sb.append("    amountBought: ").append(toIndentedString(amountBought)).append("\n");
    sb.append("    block: ").append(toIndentedString(block)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    transaction: ").append(toIndentedString(transaction)).append("\n");
    sb.append("    vid: ").append(toIndentedString(vid)).append("\n");
    sb.append("    evaluatedPrice: ").append(toIndentedString(evaluatedPrice)).append("\n");
    sb.append("    evaluatedAmount: ").append(toIndentedString(evaluatedAmount)).append("\n");
    sb.append("    evaluatedAggressor: ").append(toIndentedString(evaluatedAggressor)).append("\n");
    sb.append("    poolId: ").append(toIndentedString(poolId)).append("\n");
    sb.append("    transactionId: ").append(toIndentedString(transactionId)).append("\n");
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
    openapiFields.add("pool");
    openapiFields.add("buyer");
    openapiFields.add("receiver");
    openapiFields.add("token_sold");
    openapiFields.add("token_bought");
    openapiFields.add("amount_sold");
    openapiFields.add("amount_bought");
    openapiFields.add("block");
    openapiFields.add("timestamp");
    openapiFields.add("transaction");
    openapiFields.add("vid");
    openapiFields.add("evaluated_price");
    openapiFields.add("evaluated_amount");
    openapiFields.add("evaluated_aggressor");
    openapiFields.add("pool_id");
    openapiFields.add("transaction_id");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to CurveExchangeDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!CurveExchangeDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in CurveExchangeDTO is not found in the empty JSON string", CurveExchangeDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!CurveExchangeDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `CurveExchangeDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("pool") != null && !jsonObj.get("pool").isJsonNull()) && !jsonObj.get("pool").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `pool` to be a primitive type in the JSON string but got `%s`", jsonObj.get("pool").toString()));
      }
      if ((jsonObj.get("buyer") != null && !jsonObj.get("buyer").isJsonNull()) && !jsonObj.get("buyer").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `buyer` to be a primitive type in the JSON string but got `%s`", jsonObj.get("buyer").toString()));
      }
      if ((jsonObj.get("receiver") != null && !jsonObj.get("receiver").isJsonNull()) && !jsonObj.get("receiver").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `receiver` to be a primitive type in the JSON string but got `%s`", jsonObj.get("receiver").toString()));
      }
      if ((jsonObj.get("token_sold") != null && !jsonObj.get("token_sold").isJsonNull()) && !jsonObj.get("token_sold").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `token_sold` to be a primitive type in the JSON string but got `%s`", jsonObj.get("token_sold").toString()));
      }
      if ((jsonObj.get("token_bought") != null && !jsonObj.get("token_bought").isJsonNull()) && !jsonObj.get("token_bought").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `token_bought` to be a primitive type in the JSON string but got `%s`", jsonObj.get("token_bought").toString()));
      }
      if ((jsonObj.get("amount_sold") != null && !jsonObj.get("amount_sold").isJsonNull()) && !jsonObj.get("amount_sold").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `amount_sold` to be a primitive type in the JSON string but got `%s`", jsonObj.get("amount_sold").toString()));
      }
      if ((jsonObj.get("amount_bought") != null && !jsonObj.get("amount_bought").isJsonNull()) && !jsonObj.get("amount_bought").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `amount_bought` to be a primitive type in the JSON string but got `%s`", jsonObj.get("amount_bought").toString()));
      }
      if ((jsonObj.get("block") != null && !jsonObj.get("block").isJsonNull()) && !jsonObj.get("block").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `block` to be a primitive type in the JSON string but got `%s`", jsonObj.get("block").toString()));
      }
      if ((jsonObj.get("timestamp") != null && !jsonObj.get("timestamp").isJsonNull()) && !jsonObj.get("timestamp").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `timestamp` to be a primitive type in the JSON string but got `%s`", jsonObj.get("timestamp").toString()));
      }
      if ((jsonObj.get("transaction") != null && !jsonObj.get("transaction").isJsonNull()) && !jsonObj.get("transaction").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `transaction` to be a primitive type in the JSON string but got `%s`", jsonObj.get("transaction").toString()));
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
       if (!CurveExchangeDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'CurveExchangeDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<CurveExchangeDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(CurveExchangeDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<CurveExchangeDTO>() {
           @Override
           public void write(JsonWriter out, CurveExchangeDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public CurveExchangeDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of CurveExchangeDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of CurveExchangeDTO
  * @throws IOException if the JSON string is invalid with respect to CurveExchangeDTO
  */
  public static CurveExchangeDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, CurveExchangeDTO.class);
  }

 /**
  * Convert an instance of CurveExchangeDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

