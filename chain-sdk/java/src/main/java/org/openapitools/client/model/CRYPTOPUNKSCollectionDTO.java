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
 * CRYPTOPUNKSCollectionDTO
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-08-04T17:04:29.896189Z[Etc/UTC]")
public class CRYPTOPUNKSCollectionDTO {
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

  public static final String SERIALIZED_NAME_BLOCK_RANGE = "block_range";
  @SerializedName(SERIALIZED_NAME_BLOCK_RANGE)
  private String blockRange;

  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private String id;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_SYMBOL = "symbol";
  @SerializedName(SERIALIZED_NAME_SYMBOL)
  private String symbol;

  public static final String SERIALIZED_NAME_TOTAL_SUPPLY = "total_supply";
  @SerializedName(SERIALIZED_NAME_TOTAL_SUPPLY)
  private String totalSupply;

  public static final String SERIALIZED_NAME_ROYALTY_FEE = "royalty_fee";
  @SerializedName(SERIALIZED_NAME_ROYALTY_FEE)
  private String royaltyFee;

  public static final String SERIALIZED_NAME_CUMULATIVE_TRADE_VOLUME_ETH = "cumulative_trade_volume_eth";
  @SerializedName(SERIALIZED_NAME_CUMULATIVE_TRADE_VOLUME_ETH)
  private String cumulativeTradeVolumeEth;

  public static final String SERIALIZED_NAME_MARKETPLACE_REVENUE_ETH = "marketplace_revenue_eth";
  @SerializedName(SERIALIZED_NAME_MARKETPLACE_REVENUE_ETH)
  private String marketplaceRevenueEth;

  public static final String SERIALIZED_NAME_CREATOR_REVENUE_ETH = "creator_revenue_eth";
  @SerializedName(SERIALIZED_NAME_CREATOR_REVENUE_ETH)
  private String creatorRevenueEth;

  public static final String SERIALIZED_NAME_TOTAL_REVENUE_ETH = "total_revenue_eth";
  @SerializedName(SERIALIZED_NAME_TOTAL_REVENUE_ETH)
  private String totalRevenueEth;

  public static final String SERIALIZED_NAME_TRADE_COUNT = "trade_count";
  @SerializedName(SERIALIZED_NAME_TRADE_COUNT)
  private Integer tradeCount;

  public static final String SERIALIZED_NAME_BUYER_COUNT = "buyer_count";
  @SerializedName(SERIALIZED_NAME_BUYER_COUNT)
  private Integer buyerCount;

  public static final String SERIALIZED_NAME_SELLER_COUNT = "seller_count";
  @SerializedName(SERIALIZED_NAME_SELLER_COUNT)
  private Integer sellerCount;

  public CRYPTOPUNKSCollectionDTO() {
  }

  public CRYPTOPUNKSCollectionDTO entryTime(OffsetDateTime entryTime) {
    
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


  public CRYPTOPUNKSCollectionDTO recvTime(OffsetDateTime recvTime) {
    
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


  public CRYPTOPUNKSCollectionDTO blockNumber(Long blockNumber) {
    
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


  public CRYPTOPUNKSCollectionDTO vid(Long vid) {
    
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


  public CRYPTOPUNKSCollectionDTO blockRange(String blockRange) {
    
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


  public CRYPTOPUNKSCollectionDTO id(String id) {
    
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


  public CRYPTOPUNKSCollectionDTO name(String name) {
    
    this.name = name;
    return this;
  }

   /**
   * 
   * @return name
  **/
  @javax.annotation.Nullable
  public String getName() {
    return name;
  }


  public void setName(String name) {
    this.name = name;
  }


  public CRYPTOPUNKSCollectionDTO symbol(String symbol) {
    
    this.symbol = symbol;
    return this;
  }

   /**
   * 
   * @return symbol
  **/
  @javax.annotation.Nullable
  public String getSymbol() {
    return symbol;
  }


  public void setSymbol(String symbol) {
    this.symbol = symbol;
  }


  public CRYPTOPUNKSCollectionDTO totalSupply(String totalSupply) {
    
    this.totalSupply = totalSupply;
    return this;
  }

   /**
   * 
   * @return totalSupply
  **/
  @javax.annotation.Nullable
  public String getTotalSupply() {
    return totalSupply;
  }


  public void setTotalSupply(String totalSupply) {
    this.totalSupply = totalSupply;
  }


  public CRYPTOPUNKSCollectionDTO royaltyFee(String royaltyFee) {
    
    this.royaltyFee = royaltyFee;
    return this;
  }

   /**
   * 
   * @return royaltyFee
  **/
  @javax.annotation.Nullable
  public String getRoyaltyFee() {
    return royaltyFee;
  }


  public void setRoyaltyFee(String royaltyFee) {
    this.royaltyFee = royaltyFee;
  }


  public CRYPTOPUNKSCollectionDTO cumulativeTradeVolumeEth(String cumulativeTradeVolumeEth) {
    
    this.cumulativeTradeVolumeEth = cumulativeTradeVolumeEth;
    return this;
  }

   /**
   * 
   * @return cumulativeTradeVolumeEth
  **/
  @javax.annotation.Nullable
  public String getCumulativeTradeVolumeEth() {
    return cumulativeTradeVolumeEth;
  }


  public void setCumulativeTradeVolumeEth(String cumulativeTradeVolumeEth) {
    this.cumulativeTradeVolumeEth = cumulativeTradeVolumeEth;
  }


  public CRYPTOPUNKSCollectionDTO marketplaceRevenueEth(String marketplaceRevenueEth) {
    
    this.marketplaceRevenueEth = marketplaceRevenueEth;
    return this;
  }

   /**
   * 
   * @return marketplaceRevenueEth
  **/
  @javax.annotation.Nullable
  public String getMarketplaceRevenueEth() {
    return marketplaceRevenueEth;
  }


  public void setMarketplaceRevenueEth(String marketplaceRevenueEth) {
    this.marketplaceRevenueEth = marketplaceRevenueEth;
  }


  public CRYPTOPUNKSCollectionDTO creatorRevenueEth(String creatorRevenueEth) {
    
    this.creatorRevenueEth = creatorRevenueEth;
    return this;
  }

   /**
   * 
   * @return creatorRevenueEth
  **/
  @javax.annotation.Nullable
  public String getCreatorRevenueEth() {
    return creatorRevenueEth;
  }


  public void setCreatorRevenueEth(String creatorRevenueEth) {
    this.creatorRevenueEth = creatorRevenueEth;
  }


  public CRYPTOPUNKSCollectionDTO totalRevenueEth(String totalRevenueEth) {
    
    this.totalRevenueEth = totalRevenueEth;
    return this;
  }

   /**
   * 
   * @return totalRevenueEth
  **/
  @javax.annotation.Nullable
  public String getTotalRevenueEth() {
    return totalRevenueEth;
  }


  public void setTotalRevenueEth(String totalRevenueEth) {
    this.totalRevenueEth = totalRevenueEth;
  }


  public CRYPTOPUNKSCollectionDTO tradeCount(Integer tradeCount) {
    
    this.tradeCount = tradeCount;
    return this;
  }

   /**
   * 
   * @return tradeCount
  **/
  @javax.annotation.Nullable
  public Integer getTradeCount() {
    return tradeCount;
  }


  public void setTradeCount(Integer tradeCount) {
    this.tradeCount = tradeCount;
  }


  public CRYPTOPUNKSCollectionDTO buyerCount(Integer buyerCount) {
    
    this.buyerCount = buyerCount;
    return this;
  }

   /**
   * 
   * @return buyerCount
  **/
  @javax.annotation.Nullable
  public Integer getBuyerCount() {
    return buyerCount;
  }


  public void setBuyerCount(Integer buyerCount) {
    this.buyerCount = buyerCount;
  }


  public CRYPTOPUNKSCollectionDTO sellerCount(Integer sellerCount) {
    
    this.sellerCount = sellerCount;
    return this;
  }

   /**
   * 
   * @return sellerCount
  **/
  @javax.annotation.Nullable
  public Integer getSellerCount() {
    return sellerCount;
  }


  public void setSellerCount(Integer sellerCount) {
    this.sellerCount = sellerCount;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO = (CRYPTOPUNKSCollectionDTO) o;
    return Objects.equals(this.entryTime, crYPTOPUNKSCollectionDTO.entryTime) &&
        Objects.equals(this.recvTime, crYPTOPUNKSCollectionDTO.recvTime) &&
        Objects.equals(this.blockNumber, crYPTOPUNKSCollectionDTO.blockNumber) &&
        Objects.equals(this.vid, crYPTOPUNKSCollectionDTO.vid) &&
        Objects.equals(this.blockRange, crYPTOPUNKSCollectionDTO.blockRange) &&
        Objects.equals(this.id, crYPTOPUNKSCollectionDTO.id) &&
        Objects.equals(this.name, crYPTOPUNKSCollectionDTO.name) &&
        Objects.equals(this.symbol, crYPTOPUNKSCollectionDTO.symbol) &&
        Objects.equals(this.totalSupply, crYPTOPUNKSCollectionDTO.totalSupply) &&
        Objects.equals(this.royaltyFee, crYPTOPUNKSCollectionDTO.royaltyFee) &&
        Objects.equals(this.cumulativeTradeVolumeEth, crYPTOPUNKSCollectionDTO.cumulativeTradeVolumeEth) &&
        Objects.equals(this.marketplaceRevenueEth, crYPTOPUNKSCollectionDTO.marketplaceRevenueEth) &&
        Objects.equals(this.creatorRevenueEth, crYPTOPUNKSCollectionDTO.creatorRevenueEth) &&
        Objects.equals(this.totalRevenueEth, crYPTOPUNKSCollectionDTO.totalRevenueEth) &&
        Objects.equals(this.tradeCount, crYPTOPUNKSCollectionDTO.tradeCount) &&
        Objects.equals(this.buyerCount, crYPTOPUNKSCollectionDTO.buyerCount) &&
        Objects.equals(this.sellerCount, crYPTOPUNKSCollectionDTO.sellerCount);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, vid, blockRange, id, name, symbol, totalSupply, royaltyFee, cumulativeTradeVolumeEth, marketplaceRevenueEth, creatorRevenueEth, totalRevenueEth, tradeCount, buyerCount, sellerCount);
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
    sb.append("class CRYPTOPUNKSCollectionDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    vid: ").append(toIndentedString(vid)).append("\n");
    sb.append("    blockRange: ").append(toIndentedString(blockRange)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    symbol: ").append(toIndentedString(symbol)).append("\n");
    sb.append("    totalSupply: ").append(toIndentedString(totalSupply)).append("\n");
    sb.append("    royaltyFee: ").append(toIndentedString(royaltyFee)).append("\n");
    sb.append("    cumulativeTradeVolumeEth: ").append(toIndentedString(cumulativeTradeVolumeEth)).append("\n");
    sb.append("    marketplaceRevenueEth: ").append(toIndentedString(marketplaceRevenueEth)).append("\n");
    sb.append("    creatorRevenueEth: ").append(toIndentedString(creatorRevenueEth)).append("\n");
    sb.append("    totalRevenueEth: ").append(toIndentedString(totalRevenueEth)).append("\n");
    sb.append("    tradeCount: ").append(toIndentedString(tradeCount)).append("\n");
    sb.append("    buyerCount: ").append(toIndentedString(buyerCount)).append("\n");
    sb.append("    sellerCount: ").append(toIndentedString(sellerCount)).append("\n");
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
    openapiFields.add("block_range");
    openapiFields.add("id");
    openapiFields.add("name");
    openapiFields.add("symbol");
    openapiFields.add("total_supply");
    openapiFields.add("royalty_fee");
    openapiFields.add("cumulative_trade_volume_eth");
    openapiFields.add("marketplace_revenue_eth");
    openapiFields.add("creator_revenue_eth");
    openapiFields.add("total_revenue_eth");
    openapiFields.add("trade_count");
    openapiFields.add("buyer_count");
    openapiFields.add("seller_count");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to CRYPTOPUNKSCollectionDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!CRYPTOPUNKSCollectionDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in CRYPTOPUNKSCollectionDTO is not found in the empty JSON string", CRYPTOPUNKSCollectionDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!CRYPTOPUNKSCollectionDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `CRYPTOPUNKSCollectionDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("block_range") != null && !jsonObj.get("block_range").isJsonNull()) && !jsonObj.get("block_range").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `block_range` to be a primitive type in the JSON string but got `%s`", jsonObj.get("block_range").toString()));
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("name") != null && !jsonObj.get("name").isJsonNull()) && !jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      if ((jsonObj.get("symbol") != null && !jsonObj.get("symbol").isJsonNull()) && !jsonObj.get("symbol").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `symbol` to be a primitive type in the JSON string but got `%s`", jsonObj.get("symbol").toString()));
      }
      if ((jsonObj.get("total_supply") != null && !jsonObj.get("total_supply").isJsonNull()) && !jsonObj.get("total_supply").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `total_supply` to be a primitive type in the JSON string but got `%s`", jsonObj.get("total_supply").toString()));
      }
      if ((jsonObj.get("royalty_fee") != null && !jsonObj.get("royalty_fee").isJsonNull()) && !jsonObj.get("royalty_fee").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `royalty_fee` to be a primitive type in the JSON string but got `%s`", jsonObj.get("royalty_fee").toString()));
      }
      if ((jsonObj.get("cumulative_trade_volume_eth") != null && !jsonObj.get("cumulative_trade_volume_eth").isJsonNull()) && !jsonObj.get("cumulative_trade_volume_eth").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `cumulative_trade_volume_eth` to be a primitive type in the JSON string but got `%s`", jsonObj.get("cumulative_trade_volume_eth").toString()));
      }
      if ((jsonObj.get("marketplace_revenue_eth") != null && !jsonObj.get("marketplace_revenue_eth").isJsonNull()) && !jsonObj.get("marketplace_revenue_eth").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `marketplace_revenue_eth` to be a primitive type in the JSON string but got `%s`", jsonObj.get("marketplace_revenue_eth").toString()));
      }
      if ((jsonObj.get("creator_revenue_eth") != null && !jsonObj.get("creator_revenue_eth").isJsonNull()) && !jsonObj.get("creator_revenue_eth").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `creator_revenue_eth` to be a primitive type in the JSON string but got `%s`", jsonObj.get("creator_revenue_eth").toString()));
      }
      if ((jsonObj.get("total_revenue_eth") != null && !jsonObj.get("total_revenue_eth").isJsonNull()) && !jsonObj.get("total_revenue_eth").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `total_revenue_eth` to be a primitive type in the JSON string but got `%s`", jsonObj.get("total_revenue_eth").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!CRYPTOPUNKSCollectionDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'CRYPTOPUNKSCollectionDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<CRYPTOPUNKSCollectionDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(CRYPTOPUNKSCollectionDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<CRYPTOPUNKSCollectionDTO>() {
           @Override
           public void write(JsonWriter out, CRYPTOPUNKSCollectionDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public CRYPTOPUNKSCollectionDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of CRYPTOPUNKSCollectionDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of CRYPTOPUNKSCollectionDTO
  * @throws IOException if the JSON string is invalid with respect to CRYPTOPUNKSCollectionDTO
  */
  public static CRYPTOPUNKSCollectionDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, CRYPTOPUNKSCollectionDTO.class);
  }

 /**
  * Convert an instance of CRYPTOPUNKSCollectionDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

