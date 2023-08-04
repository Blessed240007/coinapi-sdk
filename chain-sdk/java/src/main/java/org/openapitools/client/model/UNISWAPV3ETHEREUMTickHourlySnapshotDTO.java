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
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-08-04T14:32:35.731994Z[Etc/UTC]")
public class UNISWAPV3ETHEREUMTickHourlySnapshotDTO {
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

  public static final String SERIALIZED_NAME_HOUR_ID = "hour_id";
  @SerializedName(SERIALIZED_NAME_HOUR_ID)
  private Integer hourId;

  public static final String SERIALIZED_NAME_TICK = "tick";
  @SerializedName(SERIALIZED_NAME_TICK)
  private String tick;

  public static final String SERIALIZED_NAME_POOL = "pool";
  @SerializedName(SERIALIZED_NAME_POOL)
  private String pool;

  public static final String SERIALIZED_NAME_LIQUIDITY_GROSS = "liquidity_gross";
  @SerializedName(SERIALIZED_NAME_LIQUIDITY_GROSS)
  private String liquidityGross;

  public static final String SERIALIZED_NAME_LIQUIDITY_GROSS_USD = "liquidity_gross_usd";
  @SerializedName(SERIALIZED_NAME_LIQUIDITY_GROSS_USD)
  private String liquidityGrossUsd;

  public static final String SERIALIZED_NAME_LIQUIDITY_NET = "liquidity_net";
  @SerializedName(SERIALIZED_NAME_LIQUIDITY_NET)
  private String liquidityNet;

  public static final String SERIALIZED_NAME_LIQUIDITY_NET_USD = "liquidity_net_usd";
  @SerializedName(SERIALIZED_NAME_LIQUIDITY_NET_USD)
  private String liquidityNetUsd;

  public static final String SERIALIZED_NAME_TIMESTAMP = "timestamp";
  @SerializedName(SERIALIZED_NAME_TIMESTAMP)
  private String timestamp;

  public UNISWAPV3ETHEREUMTickHourlySnapshotDTO() {
  }

  public UNISWAPV3ETHEREUMTickHourlySnapshotDTO entryTime(OffsetDateTime entryTime) {
    
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


  public UNISWAPV3ETHEREUMTickHourlySnapshotDTO recvTime(OffsetDateTime recvTime) {
    
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


  public UNISWAPV3ETHEREUMTickHourlySnapshotDTO blockNumber(Long blockNumber) {
    
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


  public UNISWAPV3ETHEREUMTickHourlySnapshotDTO vid(Long vid) {
    
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


  public UNISWAPV3ETHEREUMTickHourlySnapshotDTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * (pool address)-(tick index)-(hour ID)
   * @return id
  **/
  @javax.annotation.Nullable
  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public UNISWAPV3ETHEREUMTickHourlySnapshotDTO hourId(Integer hourId) {
    
    this.hourId = hourId;
    return this;
  }

   /**
   * Number of hours since Unix epoch time
   * @return hourId
  **/
  @javax.annotation.Nullable
  public Integer getHourId() {
    return hourId;
  }


  public void setHourId(Integer hourId) {
    this.hourId = hourId;
  }


  public UNISWAPV3ETHEREUMTickHourlySnapshotDTO tick(String tick) {
    
    this.tick = tick;
    return this;
  }

   /**
   * tick index
   * @return tick
  **/
  @javax.annotation.Nullable
  public String getTick() {
    return tick;
  }


  public void setTick(String tick) {
    this.tick = tick;
  }


  public UNISWAPV3ETHEREUMTickHourlySnapshotDTO pool(String pool) {
    
    this.pool = pool;
    return this;
  }

   /**
   * liquidity pool this tick belongs to
   * @return pool
  **/
  @javax.annotation.Nullable
  public String getPool() {
    return pool;
  }


  public void setPool(String pool) {
    this.pool = pool;
  }


  public UNISWAPV3ETHEREUMTickHourlySnapshotDTO liquidityGross(String liquidityGross) {
    
    this.liquidityGross = liquidityGross;
    return this;
  }

   /**
   * total liquidity pool has as tick lower or upper
   * @return liquidityGross
  **/
  @javax.annotation.Nullable
  public String getLiquidityGross() {
    return liquidityGross;
  }


  public void setLiquidityGross(String liquidityGross) {
    this.liquidityGross = liquidityGross;
  }


  public UNISWAPV3ETHEREUMTickHourlySnapshotDTO liquidityGrossUsd(String liquidityGrossUsd) {
    
    this.liquidityGrossUsd = liquidityGrossUsd;
    return this;
  }

   /**
   * total liquidity in USD pool has as tick lower or upper
   * @return liquidityGrossUsd
  **/
  @javax.annotation.Nullable
  public String getLiquidityGrossUsd() {
    return liquidityGrossUsd;
  }


  public void setLiquidityGrossUsd(String liquidityGrossUsd) {
    this.liquidityGrossUsd = liquidityGrossUsd;
  }


  public UNISWAPV3ETHEREUMTickHourlySnapshotDTO liquidityNet(String liquidityNet) {
    
    this.liquidityNet = liquidityNet;
    return this;
  }

   /**
   * how much liquidity changes when tick crossed
   * @return liquidityNet
  **/
  @javax.annotation.Nullable
  public String getLiquidityNet() {
    return liquidityNet;
  }


  public void setLiquidityNet(String liquidityNet) {
    this.liquidityNet = liquidityNet;
  }


  public UNISWAPV3ETHEREUMTickHourlySnapshotDTO liquidityNetUsd(String liquidityNetUsd) {
    
    this.liquidityNetUsd = liquidityNetUsd;
    return this;
  }

   /**
   * how much liquidity in USD changes when tick crossed
   * @return liquidityNetUsd
  **/
  @javax.annotation.Nullable
  public String getLiquidityNetUsd() {
    return liquidityNetUsd;
  }


  public void setLiquidityNetUsd(String liquidityNetUsd) {
    this.liquidityNetUsd = liquidityNetUsd;
  }


  public UNISWAPV3ETHEREUMTickHourlySnapshotDTO timestamp(String timestamp) {
    
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
    UNISWAPV3ETHEREUMTickHourlySnapshotDTO unISWAPV3ETHEREUMTickHourlySnapshotDTO = (UNISWAPV3ETHEREUMTickHourlySnapshotDTO) o;
    return Objects.equals(this.entryTime, unISWAPV3ETHEREUMTickHourlySnapshotDTO.entryTime) &&
        Objects.equals(this.recvTime, unISWAPV3ETHEREUMTickHourlySnapshotDTO.recvTime) &&
        Objects.equals(this.blockNumber, unISWAPV3ETHEREUMTickHourlySnapshotDTO.blockNumber) &&
        Objects.equals(this.vid, unISWAPV3ETHEREUMTickHourlySnapshotDTO.vid) &&
        Objects.equals(this.id, unISWAPV3ETHEREUMTickHourlySnapshotDTO.id) &&
        Objects.equals(this.hourId, unISWAPV3ETHEREUMTickHourlySnapshotDTO.hourId) &&
        Objects.equals(this.tick, unISWAPV3ETHEREUMTickHourlySnapshotDTO.tick) &&
        Objects.equals(this.pool, unISWAPV3ETHEREUMTickHourlySnapshotDTO.pool) &&
        Objects.equals(this.liquidityGross, unISWAPV3ETHEREUMTickHourlySnapshotDTO.liquidityGross) &&
        Objects.equals(this.liquidityGrossUsd, unISWAPV3ETHEREUMTickHourlySnapshotDTO.liquidityGrossUsd) &&
        Objects.equals(this.liquidityNet, unISWAPV3ETHEREUMTickHourlySnapshotDTO.liquidityNet) &&
        Objects.equals(this.liquidityNetUsd, unISWAPV3ETHEREUMTickHourlySnapshotDTO.liquidityNetUsd) &&
        Objects.equals(this.timestamp, unISWAPV3ETHEREUMTickHourlySnapshotDTO.timestamp);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, vid, id, hourId, tick, pool, liquidityGross, liquidityGrossUsd, liquidityNet, liquidityNetUsd, timestamp);
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
    sb.append("class UNISWAPV3ETHEREUMTickHourlySnapshotDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    vid: ").append(toIndentedString(vid)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    hourId: ").append(toIndentedString(hourId)).append("\n");
    sb.append("    tick: ").append(toIndentedString(tick)).append("\n");
    sb.append("    pool: ").append(toIndentedString(pool)).append("\n");
    sb.append("    liquidityGross: ").append(toIndentedString(liquidityGross)).append("\n");
    sb.append("    liquidityGrossUsd: ").append(toIndentedString(liquidityGrossUsd)).append("\n");
    sb.append("    liquidityNet: ").append(toIndentedString(liquidityNet)).append("\n");
    sb.append("    liquidityNetUsd: ").append(toIndentedString(liquidityNetUsd)).append("\n");
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
    openapiFields.add("vid");
    openapiFields.add("id");
    openapiFields.add("hour_id");
    openapiFields.add("tick");
    openapiFields.add("pool");
    openapiFields.add("liquidity_gross");
    openapiFields.add("liquidity_gross_usd");
    openapiFields.add("liquidity_net");
    openapiFields.add("liquidity_net_usd");
    openapiFields.add("timestamp");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to UNISWAPV3ETHEREUMTickHourlySnapshotDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!UNISWAPV3ETHEREUMTickHourlySnapshotDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in UNISWAPV3ETHEREUMTickHourlySnapshotDTO is not found in the empty JSON string", UNISWAPV3ETHEREUMTickHourlySnapshotDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!UNISWAPV3ETHEREUMTickHourlySnapshotDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `UNISWAPV3ETHEREUMTickHourlySnapshotDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("tick") != null && !jsonObj.get("tick").isJsonNull()) && !jsonObj.get("tick").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `tick` to be a primitive type in the JSON string but got `%s`", jsonObj.get("tick").toString()));
      }
      if ((jsonObj.get("pool") != null && !jsonObj.get("pool").isJsonNull()) && !jsonObj.get("pool").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `pool` to be a primitive type in the JSON string but got `%s`", jsonObj.get("pool").toString()));
      }
      if ((jsonObj.get("liquidity_gross") != null && !jsonObj.get("liquidity_gross").isJsonNull()) && !jsonObj.get("liquidity_gross").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `liquidity_gross` to be a primitive type in the JSON string but got `%s`", jsonObj.get("liquidity_gross").toString()));
      }
      if ((jsonObj.get("liquidity_gross_usd") != null && !jsonObj.get("liquidity_gross_usd").isJsonNull()) && !jsonObj.get("liquidity_gross_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `liquidity_gross_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("liquidity_gross_usd").toString()));
      }
      if ((jsonObj.get("liquidity_net") != null && !jsonObj.get("liquidity_net").isJsonNull()) && !jsonObj.get("liquidity_net").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `liquidity_net` to be a primitive type in the JSON string but got `%s`", jsonObj.get("liquidity_net").toString()));
      }
      if ((jsonObj.get("liquidity_net_usd") != null && !jsonObj.get("liquidity_net_usd").isJsonNull()) && !jsonObj.get("liquidity_net_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `liquidity_net_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("liquidity_net_usd").toString()));
      }
      if ((jsonObj.get("timestamp") != null && !jsonObj.get("timestamp").isJsonNull()) && !jsonObj.get("timestamp").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `timestamp` to be a primitive type in the JSON string but got `%s`", jsonObj.get("timestamp").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!UNISWAPV3ETHEREUMTickHourlySnapshotDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'UNISWAPV3ETHEREUMTickHourlySnapshotDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<UNISWAPV3ETHEREUMTickHourlySnapshotDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(UNISWAPV3ETHEREUMTickHourlySnapshotDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<UNISWAPV3ETHEREUMTickHourlySnapshotDTO>() {
           @Override
           public void write(JsonWriter out, UNISWAPV3ETHEREUMTickHourlySnapshotDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public UNISWAPV3ETHEREUMTickHourlySnapshotDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of UNISWAPV3ETHEREUMTickHourlySnapshotDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of UNISWAPV3ETHEREUMTickHourlySnapshotDTO
  * @throws IOException if the JSON string is invalid with respect to UNISWAPV3ETHEREUMTickHourlySnapshotDTO
  */
  public static UNISWAPV3ETHEREUMTickHourlySnapshotDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, UNISWAPV3ETHEREUMTickHourlySnapshotDTO.class);
  }

 /**
  * Convert an instance of UNISWAPV3ETHEREUMTickHourlySnapshotDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

