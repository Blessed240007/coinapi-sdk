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
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-08-09T07:36:44.300898Z[Etc/UTC]")
public class UNISWAPV3ETHEREUMLiquidityPoolAmountDTO {
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

  public static final String SERIALIZED_NAME_INPUT_TOKENS = "input_tokens";
  @SerializedName(SERIALIZED_NAME_INPUT_TOKENS)
  private List<String> inputTokens;

  public static final String SERIALIZED_NAME_INPUT_TOKEN_BALANCES = "input_token_balances";
  @SerializedName(SERIALIZED_NAME_INPUT_TOKEN_BALANCES)
  private List<String> inputTokenBalances;

  public static final String SERIALIZED_NAME_TOKEN_PRICES = "token_prices";
  @SerializedName(SERIALIZED_NAME_TOKEN_PRICES)
  private List<String> tokenPrices;

  public UNISWAPV3ETHEREUMLiquidityPoolAmountDTO() {
  }

  public UNISWAPV3ETHEREUMLiquidityPoolAmountDTO entryTime(OffsetDateTime entryTime) {
    
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


  public UNISWAPV3ETHEREUMLiquidityPoolAmountDTO recvTime(OffsetDateTime recvTime) {
    
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


  public UNISWAPV3ETHEREUMLiquidityPoolAmountDTO blockNumber(Long blockNumber) {
    
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


  public UNISWAPV3ETHEREUMLiquidityPoolAmountDTO vid(Long vid) {
    
    this.vid = vid;
    return this;
  }

   /**
   * .
   * @return vid
  **/
  @javax.annotation.Nullable
  public Long getVid() {
    return vid;
  }


  public void setVid(Long vid) {
    this.vid = vid;
  }


  public UNISWAPV3ETHEREUMLiquidityPoolAmountDTO blockRange(String blockRange) {
    
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


  public UNISWAPV3ETHEREUMLiquidityPoolAmountDTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Smart contract address of the pool.
   * @return id
  **/
  @javax.annotation.Nullable
  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public UNISWAPV3ETHEREUMLiquidityPoolAmountDTO inputTokens(List<String> inputTokens) {
    
    this.inputTokens = inputTokens;
    return this;
  }

  public UNISWAPV3ETHEREUMLiquidityPoolAmountDTO addInputTokensItem(String inputTokensItem) {
    if (this.inputTokens == null) {
      this.inputTokens = new ArrayList<>();
    }
    this.inputTokens.add(inputTokensItem);
    return this;
  }

   /**
   * Input tokens of the pool (not input tokens of the event/transaction). E.g. WETH and USDC from a WETH-USDC pool.
   * @return inputTokens
  **/
  @javax.annotation.Nullable
  public List<String> getInputTokens() {
    return inputTokens;
  }


  public void setInputTokens(List<String> inputTokens) {
    this.inputTokens = inputTokens;
  }


  public UNISWAPV3ETHEREUMLiquidityPoolAmountDTO inputTokenBalances(List<String> inputTokenBalances) {
    
    this.inputTokenBalances = inputTokenBalances;
    return this;
  }

  public UNISWAPV3ETHEREUMLiquidityPoolAmountDTO addInputTokenBalancesItem(String inputTokenBalancesItem) {
    if (this.inputTokenBalances == null) {
      this.inputTokenBalances = new ArrayList<>();
    }
    this.inputTokenBalances.add(inputTokenBalancesItem);
    return this;
  }

   /**
   * Amount of input tokens in the pool. The ordering should be the same as the pool&#39;s &#x60;inputTokens&#x60; field.
   * @return inputTokenBalances
  **/
  @javax.annotation.Nullable
  public List<String> getInputTokenBalances() {
    return inputTokenBalances;
  }


  public void setInputTokenBalances(List<String> inputTokenBalances) {
    this.inputTokenBalances = inputTokenBalances;
  }


  public UNISWAPV3ETHEREUMLiquidityPoolAmountDTO tokenPrices(List<String> tokenPrices) {
    
    this.tokenPrices = tokenPrices;
    return this;
  }

  public UNISWAPV3ETHEREUMLiquidityPoolAmountDTO addTokenPricesItem(String tokenPricesItem) {
    if (this.tokenPrices == null) {
      this.tokenPrices = new ArrayList<>();
    }
    this.tokenPrices.add(tokenPricesItem);
    return this;
  }

   /**
   * 
   * @return tokenPrices
  **/
  @javax.annotation.Nullable
  public List<String> getTokenPrices() {
    return tokenPrices;
  }


  public void setTokenPrices(List<String> tokenPrices) {
    this.tokenPrices = tokenPrices;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UNISWAPV3ETHEREUMLiquidityPoolAmountDTO unISWAPV3ETHEREUMLiquidityPoolAmountDTO = (UNISWAPV3ETHEREUMLiquidityPoolAmountDTO) o;
    return Objects.equals(this.entryTime, unISWAPV3ETHEREUMLiquidityPoolAmountDTO.entryTime) &&
        Objects.equals(this.recvTime, unISWAPV3ETHEREUMLiquidityPoolAmountDTO.recvTime) &&
        Objects.equals(this.blockNumber, unISWAPV3ETHEREUMLiquidityPoolAmountDTO.blockNumber) &&
        Objects.equals(this.vid, unISWAPV3ETHEREUMLiquidityPoolAmountDTO.vid) &&
        Objects.equals(this.blockRange, unISWAPV3ETHEREUMLiquidityPoolAmountDTO.blockRange) &&
        Objects.equals(this.id, unISWAPV3ETHEREUMLiquidityPoolAmountDTO.id) &&
        Objects.equals(this.inputTokens, unISWAPV3ETHEREUMLiquidityPoolAmountDTO.inputTokens) &&
        Objects.equals(this.inputTokenBalances, unISWAPV3ETHEREUMLiquidityPoolAmountDTO.inputTokenBalances) &&
        Objects.equals(this.tokenPrices, unISWAPV3ETHEREUMLiquidityPoolAmountDTO.tokenPrices);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, vid, blockRange, id, inputTokens, inputTokenBalances, tokenPrices);
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
    sb.append("class UNISWAPV3ETHEREUMLiquidityPoolAmountDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    vid: ").append(toIndentedString(vid)).append("\n");
    sb.append("    blockRange: ").append(toIndentedString(blockRange)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    inputTokens: ").append(toIndentedString(inputTokens)).append("\n");
    sb.append("    inputTokenBalances: ").append(toIndentedString(inputTokenBalances)).append("\n");
    sb.append("    tokenPrices: ").append(toIndentedString(tokenPrices)).append("\n");
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
    openapiFields.add("input_tokens");
    openapiFields.add("input_token_balances");
    openapiFields.add("token_prices");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to UNISWAPV3ETHEREUMLiquidityPoolAmountDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!UNISWAPV3ETHEREUMLiquidityPoolAmountDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in UNISWAPV3ETHEREUMLiquidityPoolAmountDTO is not found in the empty JSON string", UNISWAPV3ETHEREUMLiquidityPoolAmountDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!UNISWAPV3ETHEREUMLiquidityPoolAmountDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `UNISWAPV3ETHEREUMLiquidityPoolAmountDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("block_range") != null && !jsonObj.get("block_range").isJsonNull()) && !jsonObj.get("block_range").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `block_range` to be a primitive type in the JSON string but got `%s`", jsonObj.get("block_range").toString()));
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("input_tokens") != null && !jsonObj.get("input_tokens").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `input_tokens` to be an array in the JSON string but got `%s`", jsonObj.get("input_tokens").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("input_token_balances") != null && !jsonObj.get("input_token_balances").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `input_token_balances` to be an array in the JSON string but got `%s`", jsonObj.get("input_token_balances").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("token_prices") != null && !jsonObj.get("token_prices").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `token_prices` to be an array in the JSON string but got `%s`", jsonObj.get("token_prices").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!UNISWAPV3ETHEREUMLiquidityPoolAmountDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'UNISWAPV3ETHEREUMLiquidityPoolAmountDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<UNISWAPV3ETHEREUMLiquidityPoolAmountDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(UNISWAPV3ETHEREUMLiquidityPoolAmountDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<UNISWAPV3ETHEREUMLiquidityPoolAmountDTO>() {
           @Override
           public void write(JsonWriter out, UNISWAPV3ETHEREUMLiquidityPoolAmountDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public UNISWAPV3ETHEREUMLiquidityPoolAmountDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of UNISWAPV3ETHEREUMLiquidityPoolAmountDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of UNISWAPV3ETHEREUMLiquidityPoolAmountDTO
  * @throws IOException if the JSON string is invalid with respect to UNISWAPV3ETHEREUMLiquidityPoolAmountDTO
  */
  public static UNISWAPV3ETHEREUMLiquidityPoolAmountDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, UNISWAPV3ETHEREUMLiquidityPoolAmountDTO.class);
  }

 /**
  * Convert an instance of UNISWAPV3ETHEREUMLiquidityPoolAmountDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

