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
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-08-14T09:56:50.244801Z[Etc/UTC]")
public class UNISWAPV3ETHEREUMTickDTO {
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

  public static final String SERIALIZED_NAME_INDEX = "index";
  @SerializedName(SERIALIZED_NAME_INDEX)
  private String index;

  public static final String SERIALIZED_NAME_POOL = "pool";
  @SerializedName(SERIALIZED_NAME_POOL)
  private String pool;

  public static final String SERIALIZED_NAME_CREATED_TIMESTAMP = "created_timestamp";
  @SerializedName(SERIALIZED_NAME_CREATED_TIMESTAMP)
  private String createdTimestamp;

  public static final String SERIALIZED_NAME_CREATED_BLOCK_NUMBER = "created_block_number";
  @SerializedName(SERIALIZED_NAME_CREATED_BLOCK_NUMBER)
  private String createdBlockNumber;

  public static final String SERIALIZED_NAME_PRICES = "prices";
  @SerializedName(SERIALIZED_NAME_PRICES)
  private List<String> prices;

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

  public static final String SERIALIZED_NAME_LAST_SNAPSHOT_DAY_ID = "last_snapshot_day_id";
  @SerializedName(SERIALIZED_NAME_LAST_SNAPSHOT_DAY_ID)
  private Integer lastSnapshotDayId;

  public static final String SERIALIZED_NAME_LAST_SNAPSHOT_HOUR_ID = "last_snapshot_hour_id";
  @SerializedName(SERIALIZED_NAME_LAST_SNAPSHOT_HOUR_ID)
  private Integer lastSnapshotHourId;

  public static final String SERIALIZED_NAME_LAST_UPDATE_TIMESTAMP = "last_update_timestamp";
  @SerializedName(SERIALIZED_NAME_LAST_UPDATE_TIMESTAMP)
  private String lastUpdateTimestamp;

  public static final String SERIALIZED_NAME_LAST_UPDATE_BLOCK_NUMBER = "last_update_block_number";
  @SerializedName(SERIALIZED_NAME_LAST_UPDATE_BLOCK_NUMBER)
  private String lastUpdateBlockNumber;

  public UNISWAPV3ETHEREUMTickDTO() {
  }

  public UNISWAPV3ETHEREUMTickDTO entryTime(OffsetDateTime entryTime) {
    
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


  public UNISWAPV3ETHEREUMTickDTO recvTime(OffsetDateTime recvTime) {
    
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


  public UNISWAPV3ETHEREUMTickDTO blockNumber(Long blockNumber) {
    
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


  public UNISWAPV3ETHEREUMTickDTO vid(Long vid) {
    
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


  public UNISWAPV3ETHEREUMTickDTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * (pool address)-(tick index)
   * @return id
  **/
  @javax.annotation.Nullable
  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public UNISWAPV3ETHEREUMTickDTO index(String index) {
    
    this.index = index;
    return this;
  }

   /**
   * tick index
   * @return index
  **/
  @javax.annotation.Nullable
  public String getIndex() {
    return index;
  }


  public void setIndex(String index) {
    this.index = index;
  }


  public UNISWAPV3ETHEREUMTickDTO pool(String pool) {
    
    this.pool = pool;
    return this;
  }

   /**
   * Liquidity pool this tick belongs to
   * @return pool
  **/
  @javax.annotation.Nullable
  public String getPool() {
    return pool;
  }


  public void setPool(String pool) {
    this.pool = pool;
  }


  public UNISWAPV3ETHEREUMTickDTO createdTimestamp(String createdTimestamp) {
    
    this.createdTimestamp = createdTimestamp;
    return this;
  }

   /**
   * Creation timestamp
   * @return createdTimestamp
  **/
  @javax.annotation.Nullable
  public String getCreatedTimestamp() {
    return createdTimestamp;
  }


  public void setCreatedTimestamp(String createdTimestamp) {
    this.createdTimestamp = createdTimestamp;
  }


  public UNISWAPV3ETHEREUMTickDTO createdBlockNumber(String createdBlockNumber) {
    
    this.createdBlockNumber = createdBlockNumber;
    return this;
  }

   /**
   * Creation block number
   * @return createdBlockNumber
  **/
  @javax.annotation.Nullable
  public String getCreatedBlockNumber() {
    return createdBlockNumber;
  }


  public void setCreatedBlockNumber(String createdBlockNumber) {
    this.createdBlockNumber = createdBlockNumber;
  }


  public UNISWAPV3ETHEREUMTickDTO prices(List<String> prices) {
    
    this.prices = prices;
    return this;
  }

  public UNISWAPV3ETHEREUMTickDTO addPricesItem(String pricesItem) {
    if (this.prices == null) {
      this.prices = new ArrayList<>();
    }
    this.prices.add(pricesItem);
    return this;
  }

   /**
   * calculated price of token0 of tick within this pool - constant
   * @return prices
  **/
  @javax.annotation.Nullable
  public List<String> getPrices() {
    return prices;
  }


  public void setPrices(List<String> prices) {
    this.prices = prices;
  }


  public UNISWAPV3ETHEREUMTickDTO liquidityGross(String liquidityGross) {
    
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


  public UNISWAPV3ETHEREUMTickDTO liquidityGrossUsd(String liquidityGrossUsd) {
    
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


  public UNISWAPV3ETHEREUMTickDTO liquidityNet(String liquidityNet) {
    
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


  public UNISWAPV3ETHEREUMTickDTO liquidityNetUsd(String liquidityNetUsd) {
    
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


  public UNISWAPV3ETHEREUMTickDTO lastSnapshotDayId(Integer lastSnapshotDayId) {
    
    this.lastSnapshotDayId = lastSnapshotDayId;
    return this;
  }

   /**
   * Day ID of the most recent daily snapshot
   * @return lastSnapshotDayId
  **/
  @javax.annotation.Nullable
  public Integer getLastSnapshotDayId() {
    return lastSnapshotDayId;
  }


  public void setLastSnapshotDayId(Integer lastSnapshotDayId) {
    this.lastSnapshotDayId = lastSnapshotDayId;
  }


  public UNISWAPV3ETHEREUMTickDTO lastSnapshotHourId(Integer lastSnapshotHourId) {
    
    this.lastSnapshotHourId = lastSnapshotHourId;
    return this;
  }

   /**
   * Hour ID of the most recent hourly snapshot
   * @return lastSnapshotHourId
  **/
  @javax.annotation.Nullable
  public Integer getLastSnapshotHourId() {
    return lastSnapshotHourId;
  }


  public void setLastSnapshotHourId(Integer lastSnapshotHourId) {
    this.lastSnapshotHourId = lastSnapshotHourId;
  }


  public UNISWAPV3ETHEREUMTickDTO lastUpdateTimestamp(String lastUpdateTimestamp) {
    
    this.lastUpdateTimestamp = lastUpdateTimestamp;
    return this;
  }

   /**
   * Timestamp of the last time this entity was updated
   * @return lastUpdateTimestamp
  **/
  @javax.annotation.Nullable
  public String getLastUpdateTimestamp() {
    return lastUpdateTimestamp;
  }


  public void setLastUpdateTimestamp(String lastUpdateTimestamp) {
    this.lastUpdateTimestamp = lastUpdateTimestamp;
  }


  public UNISWAPV3ETHEREUMTickDTO lastUpdateBlockNumber(String lastUpdateBlockNumber) {
    
    this.lastUpdateBlockNumber = lastUpdateBlockNumber;
    return this;
  }

   /**
   * Block number of the last time this entity was updated
   * @return lastUpdateBlockNumber
  **/
  @javax.annotation.Nullable
  public String getLastUpdateBlockNumber() {
    return lastUpdateBlockNumber;
  }


  public void setLastUpdateBlockNumber(String lastUpdateBlockNumber) {
    this.lastUpdateBlockNumber = lastUpdateBlockNumber;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UNISWAPV3ETHEREUMTickDTO unISWAPV3ETHEREUMTickDTO = (UNISWAPV3ETHEREUMTickDTO) o;
    return Objects.equals(this.entryTime, unISWAPV3ETHEREUMTickDTO.entryTime) &&
        Objects.equals(this.recvTime, unISWAPV3ETHEREUMTickDTO.recvTime) &&
        Objects.equals(this.blockNumber, unISWAPV3ETHEREUMTickDTO.blockNumber) &&
        Objects.equals(this.vid, unISWAPV3ETHEREUMTickDTO.vid) &&
        Objects.equals(this.id, unISWAPV3ETHEREUMTickDTO.id) &&
        Objects.equals(this.index, unISWAPV3ETHEREUMTickDTO.index) &&
        Objects.equals(this.pool, unISWAPV3ETHEREUMTickDTO.pool) &&
        Objects.equals(this.createdTimestamp, unISWAPV3ETHEREUMTickDTO.createdTimestamp) &&
        Objects.equals(this.createdBlockNumber, unISWAPV3ETHEREUMTickDTO.createdBlockNumber) &&
        Objects.equals(this.prices, unISWAPV3ETHEREUMTickDTO.prices) &&
        Objects.equals(this.liquidityGross, unISWAPV3ETHEREUMTickDTO.liquidityGross) &&
        Objects.equals(this.liquidityGrossUsd, unISWAPV3ETHEREUMTickDTO.liquidityGrossUsd) &&
        Objects.equals(this.liquidityNet, unISWAPV3ETHEREUMTickDTO.liquidityNet) &&
        Objects.equals(this.liquidityNetUsd, unISWAPV3ETHEREUMTickDTO.liquidityNetUsd) &&
        Objects.equals(this.lastSnapshotDayId, unISWAPV3ETHEREUMTickDTO.lastSnapshotDayId) &&
        Objects.equals(this.lastSnapshotHourId, unISWAPV3ETHEREUMTickDTO.lastSnapshotHourId) &&
        Objects.equals(this.lastUpdateTimestamp, unISWAPV3ETHEREUMTickDTO.lastUpdateTimestamp) &&
        Objects.equals(this.lastUpdateBlockNumber, unISWAPV3ETHEREUMTickDTO.lastUpdateBlockNumber);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, vid, id, index, pool, createdTimestamp, createdBlockNumber, prices, liquidityGross, liquidityGrossUsd, liquidityNet, liquidityNetUsd, lastSnapshotDayId, lastSnapshotHourId, lastUpdateTimestamp, lastUpdateBlockNumber);
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
    sb.append("class UNISWAPV3ETHEREUMTickDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    vid: ").append(toIndentedString(vid)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    index: ").append(toIndentedString(index)).append("\n");
    sb.append("    pool: ").append(toIndentedString(pool)).append("\n");
    sb.append("    createdTimestamp: ").append(toIndentedString(createdTimestamp)).append("\n");
    sb.append("    createdBlockNumber: ").append(toIndentedString(createdBlockNumber)).append("\n");
    sb.append("    prices: ").append(toIndentedString(prices)).append("\n");
    sb.append("    liquidityGross: ").append(toIndentedString(liquidityGross)).append("\n");
    sb.append("    liquidityGrossUsd: ").append(toIndentedString(liquidityGrossUsd)).append("\n");
    sb.append("    liquidityNet: ").append(toIndentedString(liquidityNet)).append("\n");
    sb.append("    liquidityNetUsd: ").append(toIndentedString(liquidityNetUsd)).append("\n");
    sb.append("    lastSnapshotDayId: ").append(toIndentedString(lastSnapshotDayId)).append("\n");
    sb.append("    lastSnapshotHourId: ").append(toIndentedString(lastSnapshotHourId)).append("\n");
    sb.append("    lastUpdateTimestamp: ").append(toIndentedString(lastUpdateTimestamp)).append("\n");
    sb.append("    lastUpdateBlockNumber: ").append(toIndentedString(lastUpdateBlockNumber)).append("\n");
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
    openapiFields.add("index");
    openapiFields.add("pool");
    openapiFields.add("created_timestamp");
    openapiFields.add("created_block_number");
    openapiFields.add("prices");
    openapiFields.add("liquidity_gross");
    openapiFields.add("liquidity_gross_usd");
    openapiFields.add("liquidity_net");
    openapiFields.add("liquidity_net_usd");
    openapiFields.add("last_snapshot_day_id");
    openapiFields.add("last_snapshot_hour_id");
    openapiFields.add("last_update_timestamp");
    openapiFields.add("last_update_block_number");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to UNISWAPV3ETHEREUMTickDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!UNISWAPV3ETHEREUMTickDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in UNISWAPV3ETHEREUMTickDTO is not found in the empty JSON string", UNISWAPV3ETHEREUMTickDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!UNISWAPV3ETHEREUMTickDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `UNISWAPV3ETHEREUMTickDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("index") != null && !jsonObj.get("index").isJsonNull()) && !jsonObj.get("index").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `index` to be a primitive type in the JSON string but got `%s`", jsonObj.get("index").toString()));
      }
      if ((jsonObj.get("pool") != null && !jsonObj.get("pool").isJsonNull()) && !jsonObj.get("pool").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `pool` to be a primitive type in the JSON string but got `%s`", jsonObj.get("pool").toString()));
      }
      if ((jsonObj.get("created_timestamp") != null && !jsonObj.get("created_timestamp").isJsonNull()) && !jsonObj.get("created_timestamp").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `created_timestamp` to be a primitive type in the JSON string but got `%s`", jsonObj.get("created_timestamp").toString()));
      }
      if ((jsonObj.get("created_block_number") != null && !jsonObj.get("created_block_number").isJsonNull()) && !jsonObj.get("created_block_number").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `created_block_number` to be a primitive type in the JSON string but got `%s`", jsonObj.get("created_block_number").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("prices") != null && !jsonObj.get("prices").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `prices` to be an array in the JSON string but got `%s`", jsonObj.get("prices").toString()));
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
      if ((jsonObj.get("last_update_timestamp") != null && !jsonObj.get("last_update_timestamp").isJsonNull()) && !jsonObj.get("last_update_timestamp").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `last_update_timestamp` to be a primitive type in the JSON string but got `%s`", jsonObj.get("last_update_timestamp").toString()));
      }
      if ((jsonObj.get("last_update_block_number") != null && !jsonObj.get("last_update_block_number").isJsonNull()) && !jsonObj.get("last_update_block_number").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `last_update_block_number` to be a primitive type in the JSON string but got `%s`", jsonObj.get("last_update_block_number").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!UNISWAPV3ETHEREUMTickDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'UNISWAPV3ETHEREUMTickDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<UNISWAPV3ETHEREUMTickDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(UNISWAPV3ETHEREUMTickDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<UNISWAPV3ETHEREUMTickDTO>() {
           @Override
           public void write(JsonWriter out, UNISWAPV3ETHEREUMTickDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public UNISWAPV3ETHEREUMTickDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of UNISWAPV3ETHEREUMTickDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of UNISWAPV3ETHEREUMTickDTO
  * @throws IOException if the JSON string is invalid with respect to UNISWAPV3ETHEREUMTickDTO
  */
  public static UNISWAPV3ETHEREUMTickDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, UNISWAPV3ETHEREUMTickDTO.class);
  }

 /**
  * Convert an instance of UNISWAPV3ETHEREUMTickDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

