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
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-08-08T12:51:03.637217Z[Etc/UTC]")
public class UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO {
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

  public static final String SERIALIZED_NAME_DAY = "day";
  @SerializedName(SERIALIZED_NAME_DAY)
  private Integer day;

  public static final String SERIALIZED_NAME_PROTOCOL = "protocol";
  @SerializedName(SERIALIZED_NAME_PROTOCOL)
  private String protocol;

  public static final String SERIALIZED_NAME_DAILY_ACTIVE_USERS = "daily_active_users";
  @SerializedName(SERIALIZED_NAME_DAILY_ACTIVE_USERS)
  private Integer dailyActiveUsers;

  public static final String SERIALIZED_NAME_CUMULATIVE_UNIQUE_USERS = "cumulative_unique_users";
  @SerializedName(SERIALIZED_NAME_CUMULATIVE_UNIQUE_USERS)
  private Integer cumulativeUniqueUsers;

  public static final String SERIALIZED_NAME_DAILY_TRANSACTION_COUNT = "daily_transaction_count";
  @SerializedName(SERIALIZED_NAME_DAILY_TRANSACTION_COUNT)
  private Integer dailyTransactionCount;

  public static final String SERIALIZED_NAME_TOTAL_POOL_COUNT = "total_pool_count";
  @SerializedName(SERIALIZED_NAME_TOTAL_POOL_COUNT)
  private Integer totalPoolCount;

  public static final String SERIALIZED_NAME_DAILY_DEPOSIT_COUNT = "daily_deposit_count";
  @SerializedName(SERIALIZED_NAME_DAILY_DEPOSIT_COUNT)
  private Integer dailyDepositCount;

  public static final String SERIALIZED_NAME_DAILY_WITHDRAW_COUNT = "daily_withdraw_count";
  @SerializedName(SERIALIZED_NAME_DAILY_WITHDRAW_COUNT)
  private Integer dailyWithdrawCount;

  public static final String SERIALIZED_NAME_DAILY_SWAP_COUNT = "daily_swap_count";
  @SerializedName(SERIALIZED_NAME_DAILY_SWAP_COUNT)
  private Integer dailySwapCount;

  public static final String SERIALIZED_NAME_TIMESTAMP = "timestamp";
  @SerializedName(SERIALIZED_NAME_TIMESTAMP)
  private String timestamp;

  public UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO() {
  }

  public UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO entryTime(OffsetDateTime entryTime) {
    
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


  public UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO recvTime(OffsetDateTime recvTime) {
    
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


  public UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO blockNumber(Long blockNumber) {
    
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


  public UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * ID is # of days since Unix epoch time
   * @return id
  **/
  @javax.annotation.Nullable
  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO day(Integer day) {
    
    this.day = day;
    return this;
  }

   /**
   * Number of days since Unix epoch time
   * @return day
  **/
  @javax.annotation.Nullable
  public Integer getDay() {
    return day;
  }


  public void setDay(Integer day) {
    this.day = day;
  }


  public UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO protocol(String protocol) {
    
    this.protocol = protocol;
    return this;
  }

   /**
   * Protocol this snapshot is associated with
   * @return protocol
  **/
  @javax.annotation.Nullable
  public String getProtocol() {
    return protocol;
  }


  public void setProtocol(String protocol) {
    this.protocol = protocol;
  }


  public UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO dailyActiveUsers(Integer dailyActiveUsers) {
    
    this.dailyActiveUsers = dailyActiveUsers;
    return this;
  }

   /**
   * Number of unique daily active users
   * @return dailyActiveUsers
  **/
  @javax.annotation.Nullable
  public Integer getDailyActiveUsers() {
    return dailyActiveUsers;
  }


  public void setDailyActiveUsers(Integer dailyActiveUsers) {
    this.dailyActiveUsers = dailyActiveUsers;
  }


  public UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO cumulativeUniqueUsers(Integer cumulativeUniqueUsers) {
    
    this.cumulativeUniqueUsers = cumulativeUniqueUsers;
    return this;
  }

   /**
   * Number of cumulative unique users
   * @return cumulativeUniqueUsers
  **/
  @javax.annotation.Nullable
  public Integer getCumulativeUniqueUsers() {
    return cumulativeUniqueUsers;
  }


  public void setCumulativeUniqueUsers(Integer cumulativeUniqueUsers) {
    this.cumulativeUniqueUsers = cumulativeUniqueUsers;
  }


  public UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO dailyTransactionCount(Integer dailyTransactionCount) {
    
    this.dailyTransactionCount = dailyTransactionCount;
    return this;
  }

   /**
   * Total number of transactions occurred in a day. Transactions include all entities that implement the Event interface.
   * @return dailyTransactionCount
  **/
  @javax.annotation.Nullable
  public Integer getDailyTransactionCount() {
    return dailyTransactionCount;
  }


  public void setDailyTransactionCount(Integer dailyTransactionCount) {
    this.dailyTransactionCount = dailyTransactionCount;
  }


  public UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO totalPoolCount(Integer totalPoolCount) {
    
    this.totalPoolCount = totalPoolCount;
    return this;
  }

   /**
   * Total number of pools
   * @return totalPoolCount
  **/
  @javax.annotation.Nullable
  public Integer getTotalPoolCount() {
    return totalPoolCount;
  }


  public void setTotalPoolCount(Integer totalPoolCount) {
    this.totalPoolCount = totalPoolCount;
  }


  public UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO dailyDepositCount(Integer dailyDepositCount) {
    
    this.dailyDepositCount = dailyDepositCount;
    return this;
  }

   /**
   * Total number of deposits (add liquidity) in an day
   * @return dailyDepositCount
  **/
  @javax.annotation.Nullable
  public Integer getDailyDepositCount() {
    return dailyDepositCount;
  }


  public void setDailyDepositCount(Integer dailyDepositCount) {
    this.dailyDepositCount = dailyDepositCount;
  }


  public UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO dailyWithdrawCount(Integer dailyWithdrawCount) {
    
    this.dailyWithdrawCount = dailyWithdrawCount;
    return this;
  }

   /**
   * Total number of withdrawals (remove liquidity) in an day
   * @return dailyWithdrawCount
  **/
  @javax.annotation.Nullable
  public Integer getDailyWithdrawCount() {
    return dailyWithdrawCount;
  }


  public void setDailyWithdrawCount(Integer dailyWithdrawCount) {
    this.dailyWithdrawCount = dailyWithdrawCount;
  }


  public UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO dailySwapCount(Integer dailySwapCount) {
    
    this.dailySwapCount = dailySwapCount;
    return this;
  }

   /**
   * Total number of trades (swaps) in an day
   * @return dailySwapCount
  **/
  @javax.annotation.Nullable
  public Integer getDailySwapCount() {
    return dailySwapCount;
  }


  public void setDailySwapCount(Integer dailySwapCount) {
    this.dailySwapCount = dailySwapCount;
  }


  public UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO timestamp(String timestamp) {
    
    this.timestamp = timestamp;
    return this;
  }

   /**
   * Timestamp of when this snapshot was taken/last modified (May be taken after interval has passed)
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
    UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO unISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO = (UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO) o;
    return Objects.equals(this.entryTime, unISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.entryTime) &&
        Objects.equals(this.recvTime, unISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.recvTime) &&
        Objects.equals(this.blockNumber, unISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.blockNumber) &&
        Objects.equals(this.id, unISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.id) &&
        Objects.equals(this.day, unISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.day) &&
        Objects.equals(this.protocol, unISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.protocol) &&
        Objects.equals(this.dailyActiveUsers, unISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.dailyActiveUsers) &&
        Objects.equals(this.cumulativeUniqueUsers, unISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.cumulativeUniqueUsers) &&
        Objects.equals(this.dailyTransactionCount, unISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.dailyTransactionCount) &&
        Objects.equals(this.totalPoolCount, unISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.totalPoolCount) &&
        Objects.equals(this.dailyDepositCount, unISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.dailyDepositCount) &&
        Objects.equals(this.dailyWithdrawCount, unISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.dailyWithdrawCount) &&
        Objects.equals(this.dailySwapCount, unISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.dailySwapCount) &&
        Objects.equals(this.timestamp, unISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.timestamp);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, id, day, protocol, dailyActiveUsers, cumulativeUniqueUsers, dailyTransactionCount, totalPoolCount, dailyDepositCount, dailyWithdrawCount, dailySwapCount, timestamp);
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
    sb.append("class UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    day: ").append(toIndentedString(day)).append("\n");
    sb.append("    protocol: ").append(toIndentedString(protocol)).append("\n");
    sb.append("    dailyActiveUsers: ").append(toIndentedString(dailyActiveUsers)).append("\n");
    sb.append("    cumulativeUniqueUsers: ").append(toIndentedString(cumulativeUniqueUsers)).append("\n");
    sb.append("    dailyTransactionCount: ").append(toIndentedString(dailyTransactionCount)).append("\n");
    sb.append("    totalPoolCount: ").append(toIndentedString(totalPoolCount)).append("\n");
    sb.append("    dailyDepositCount: ").append(toIndentedString(dailyDepositCount)).append("\n");
    sb.append("    dailyWithdrawCount: ").append(toIndentedString(dailyWithdrawCount)).append("\n");
    sb.append("    dailySwapCount: ").append(toIndentedString(dailySwapCount)).append("\n");
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
    openapiFields.add("day");
    openapiFields.add("protocol");
    openapiFields.add("daily_active_users");
    openapiFields.add("cumulative_unique_users");
    openapiFields.add("daily_transaction_count");
    openapiFields.add("total_pool_count");
    openapiFields.add("daily_deposit_count");
    openapiFields.add("daily_withdraw_count");
    openapiFields.add("daily_swap_count");
    openapiFields.add("timestamp");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO is not found in the empty JSON string", UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("protocol") != null && !jsonObj.get("protocol").isJsonNull()) && !jsonObj.get("protocol").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `protocol` to be a primitive type in the JSON string but got `%s`", jsonObj.get("protocol").toString()));
      }
      if ((jsonObj.get("timestamp") != null && !jsonObj.get("timestamp").isJsonNull()) && !jsonObj.get("timestamp").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `timestamp` to be a primitive type in the JSON string but got `%s`", jsonObj.get("timestamp").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO>() {
           @Override
           public void write(JsonWriter out, UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO
  * @throws IOException if the JSON string is invalid with respect to UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO
  */
  public static UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO.class);
  }

 /**
  * Convert an instance of UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

