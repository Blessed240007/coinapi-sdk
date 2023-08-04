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
 * UNISWAPV3ETHEREUMAccountDTO
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-08-04T12:28:52.928454Z[Etc/UTC]")
public class UNISWAPV3ETHEREUMAccountDTO {
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

  public static final String SERIALIZED_NAME_POSITION_COUNT = "position_count";
  @SerializedName(SERIALIZED_NAME_POSITION_COUNT)
  private Integer positionCount;

  public static final String SERIALIZED_NAME_OPEN_POSITION_COUNT = "open_position_count";
  @SerializedName(SERIALIZED_NAME_OPEN_POSITION_COUNT)
  private Integer openPositionCount;

  public static final String SERIALIZED_NAME_CLOSED_POSITION_COUNT = "closed_position_count";
  @SerializedName(SERIALIZED_NAME_CLOSED_POSITION_COUNT)
  private Integer closedPositionCount;

  public static final String SERIALIZED_NAME_DEPOSIT_COUNT = "deposit_count";
  @SerializedName(SERIALIZED_NAME_DEPOSIT_COUNT)
  private Integer depositCount;

  public static final String SERIALIZED_NAME_WITHDRAW_COUNT = "withdraw_count";
  @SerializedName(SERIALIZED_NAME_WITHDRAW_COUNT)
  private Integer withdrawCount;

  public static final String SERIALIZED_NAME_SWAP_COUNT = "swap_count";
  @SerializedName(SERIALIZED_NAME_SWAP_COUNT)
  private Integer swapCount;

  public UNISWAPV3ETHEREUMAccountDTO() {
  }

  public UNISWAPV3ETHEREUMAccountDTO entryTime(OffsetDateTime entryTime) {
    
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


  public UNISWAPV3ETHEREUMAccountDTO recvTime(OffsetDateTime recvTime) {
    
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


  public UNISWAPV3ETHEREUMAccountDTO blockNumber(Long blockNumber) {
    
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


  public UNISWAPV3ETHEREUMAccountDTO blockRange(String blockRange) {
    
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


  public UNISWAPV3ETHEREUMAccountDTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Account address.
   * @return id
  **/
  @javax.annotation.Nullable
  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public UNISWAPV3ETHEREUMAccountDTO positionCount(Integer positionCount) {
    
    this.positionCount = positionCount;
    return this;
  }

   /**
   * Number of positions this account has.
   * @return positionCount
  **/
  @javax.annotation.Nullable
  public Integer getPositionCount() {
    return positionCount;
  }


  public void setPositionCount(Integer positionCount) {
    this.positionCount = positionCount;
  }


  public UNISWAPV3ETHEREUMAccountDTO openPositionCount(Integer openPositionCount) {
    
    this.openPositionCount = openPositionCount;
    return this;
  }

   /**
   * Number of open positions this account has.
   * @return openPositionCount
  **/
  @javax.annotation.Nullable
  public Integer getOpenPositionCount() {
    return openPositionCount;
  }


  public void setOpenPositionCount(Integer openPositionCount) {
    this.openPositionCount = openPositionCount;
  }


  public UNISWAPV3ETHEREUMAccountDTO closedPositionCount(Integer closedPositionCount) {
    
    this.closedPositionCount = closedPositionCount;
    return this;
  }

   /**
   * Number of closed positions this account has.
   * @return closedPositionCount
  **/
  @javax.annotation.Nullable
  public Integer getClosedPositionCount() {
    return closedPositionCount;
  }


  public void setClosedPositionCount(Integer closedPositionCount) {
    this.closedPositionCount = closedPositionCount;
  }


  public UNISWAPV3ETHEREUMAccountDTO depositCount(Integer depositCount) {
    
    this.depositCount = depositCount;
    return this;
  }

   /**
   * Number of deposits this account made.
   * @return depositCount
  **/
  @javax.annotation.Nullable
  public Integer getDepositCount() {
    return depositCount;
  }


  public void setDepositCount(Integer depositCount) {
    this.depositCount = depositCount;
  }


  public UNISWAPV3ETHEREUMAccountDTO withdrawCount(Integer withdrawCount) {
    
    this.withdrawCount = withdrawCount;
    return this;
  }

   /**
   * Number of withdrawals this account made.
   * @return withdrawCount
  **/
  @javax.annotation.Nullable
  public Integer getWithdrawCount() {
    return withdrawCount;
  }


  public void setWithdrawCount(Integer withdrawCount) {
    this.withdrawCount = withdrawCount;
  }


  public UNISWAPV3ETHEREUMAccountDTO swapCount(Integer swapCount) {
    
    this.swapCount = swapCount;
    return this;
  }

   /**
   * Number of times this account has traded/swapped.
   * @return swapCount
  **/
  @javax.annotation.Nullable
  public Integer getSwapCount() {
    return swapCount;
  }


  public void setSwapCount(Integer swapCount) {
    this.swapCount = swapCount;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UNISWAPV3ETHEREUMAccountDTO unISWAPV3ETHEREUMAccountDTO = (UNISWAPV3ETHEREUMAccountDTO) o;
    return Objects.equals(this.entryTime, unISWAPV3ETHEREUMAccountDTO.entryTime) &&
        Objects.equals(this.recvTime, unISWAPV3ETHEREUMAccountDTO.recvTime) &&
        Objects.equals(this.blockNumber, unISWAPV3ETHEREUMAccountDTO.blockNumber) &&
        Objects.equals(this.blockRange, unISWAPV3ETHEREUMAccountDTO.blockRange) &&
        Objects.equals(this.id, unISWAPV3ETHEREUMAccountDTO.id) &&
        Objects.equals(this.positionCount, unISWAPV3ETHEREUMAccountDTO.positionCount) &&
        Objects.equals(this.openPositionCount, unISWAPV3ETHEREUMAccountDTO.openPositionCount) &&
        Objects.equals(this.closedPositionCount, unISWAPV3ETHEREUMAccountDTO.closedPositionCount) &&
        Objects.equals(this.depositCount, unISWAPV3ETHEREUMAccountDTO.depositCount) &&
        Objects.equals(this.withdrawCount, unISWAPV3ETHEREUMAccountDTO.withdrawCount) &&
        Objects.equals(this.swapCount, unISWAPV3ETHEREUMAccountDTO.swapCount);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, blockRange, id, positionCount, openPositionCount, closedPositionCount, depositCount, withdrawCount, swapCount);
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
    sb.append("class UNISWAPV3ETHEREUMAccountDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    blockRange: ").append(toIndentedString(blockRange)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    positionCount: ").append(toIndentedString(positionCount)).append("\n");
    sb.append("    openPositionCount: ").append(toIndentedString(openPositionCount)).append("\n");
    sb.append("    closedPositionCount: ").append(toIndentedString(closedPositionCount)).append("\n");
    sb.append("    depositCount: ").append(toIndentedString(depositCount)).append("\n");
    sb.append("    withdrawCount: ").append(toIndentedString(withdrawCount)).append("\n");
    sb.append("    swapCount: ").append(toIndentedString(swapCount)).append("\n");
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
    openapiFields.add("position_count");
    openapiFields.add("open_position_count");
    openapiFields.add("closed_position_count");
    openapiFields.add("deposit_count");
    openapiFields.add("withdraw_count");
    openapiFields.add("swap_count");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to UNISWAPV3ETHEREUMAccountDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!UNISWAPV3ETHEREUMAccountDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in UNISWAPV3ETHEREUMAccountDTO is not found in the empty JSON string", UNISWAPV3ETHEREUMAccountDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!UNISWAPV3ETHEREUMAccountDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `UNISWAPV3ETHEREUMAccountDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("block_range") != null && !jsonObj.get("block_range").isJsonNull()) && !jsonObj.get("block_range").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `block_range` to be a primitive type in the JSON string but got `%s`", jsonObj.get("block_range").toString()));
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!UNISWAPV3ETHEREUMAccountDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'UNISWAPV3ETHEREUMAccountDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<UNISWAPV3ETHEREUMAccountDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(UNISWAPV3ETHEREUMAccountDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<UNISWAPV3ETHEREUMAccountDTO>() {
           @Override
           public void write(JsonWriter out, UNISWAPV3ETHEREUMAccountDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public UNISWAPV3ETHEREUMAccountDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of UNISWAPV3ETHEREUMAccountDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of UNISWAPV3ETHEREUMAccountDTO
  * @throws IOException if the JSON string is invalid with respect to UNISWAPV3ETHEREUMAccountDTO
  */
  public static UNISWAPV3ETHEREUMAccountDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, UNISWAPV3ETHEREUMAccountDTO.class);
  }

 /**
  * Convert an instance of UNISWAPV3ETHEREUMAccountDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

