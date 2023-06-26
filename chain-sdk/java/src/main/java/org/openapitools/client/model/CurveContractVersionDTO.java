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
 * CurveContractVersionDTO
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-06-26T15:53:48.980095Z[Etc/UTC]")
public class CurveContractVersionDTO {
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

  public static final String SERIALIZED_NAME_CONTRACT = "contract";
  @SerializedName(SERIALIZED_NAME_CONTRACT)
  private String contract;

  public static final String SERIALIZED_NAME_ADDRESS = "address";
  @SerializedName(SERIALIZED_NAME_ADDRESS)
  private String address;

  public static final String SERIALIZED_NAME_VERSION = "version";
  @SerializedName(SERIALIZED_NAME_VERSION)
  private String version;

  public static final String SERIALIZED_NAME_ADDED = "added";
  @SerializedName(SERIALIZED_NAME_ADDED)
  private String added;

  public static final String SERIALIZED_NAME_ADDED_AT_BLOCK = "added_at_block";
  @SerializedName(SERIALIZED_NAME_ADDED_AT_BLOCK)
  private String addedAtBlock;

  public static final String SERIALIZED_NAME_ADDED_AT_TRANSACTION = "added_at_transaction";
  @SerializedName(SERIALIZED_NAME_ADDED_AT_TRANSACTION)
  private String addedAtTransaction;

  public static final String SERIALIZED_NAME_VID = "vid";
  @SerializedName(SERIALIZED_NAME_VID)
  private Long vid;

  public CurveContractVersionDTO() {
  }

  public CurveContractVersionDTO entryTime(OffsetDateTime entryTime) {
    
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


  public CurveContractVersionDTO recvTime(OffsetDateTime recvTime) {
    
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


  public CurveContractVersionDTO blockNumber(Long blockNumber) {
    
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


  public CurveContractVersionDTO id(String id) {
    
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


  public CurveContractVersionDTO contract(String contract) {
    
    this.contract = contract;
    return this;
  }

   /**
   * 
   * @return contract
  **/
  @javax.annotation.Nullable
  public String getContract() {
    return contract;
  }


  public void setContract(String contract) {
    this.contract = contract;
  }


  public CurveContractVersionDTO address(String address) {
    
    this.address = address;
    return this;
  }

   /**
   * 
   * @return address
  **/
  @javax.annotation.Nullable
  public String getAddress() {
    return address;
  }


  public void setAddress(String address) {
    this.address = address;
  }


  public CurveContractVersionDTO version(String version) {
    
    this.version = version;
    return this;
  }

   /**
   * 
   * @return version
  **/
  @javax.annotation.Nullable
  public String getVersion() {
    return version;
  }


  public void setVersion(String version) {
    this.version = version;
  }


  public CurveContractVersionDTO added(String added) {
    
    this.added = added;
    return this;
  }

   /**
   * 
   * @return added
  **/
  @javax.annotation.Nullable
  public String getAdded() {
    return added;
  }


  public void setAdded(String added) {
    this.added = added;
  }


  public CurveContractVersionDTO addedAtBlock(String addedAtBlock) {
    
    this.addedAtBlock = addedAtBlock;
    return this;
  }

   /**
   * 
   * @return addedAtBlock
  **/
  @javax.annotation.Nullable
  public String getAddedAtBlock() {
    return addedAtBlock;
  }


  public void setAddedAtBlock(String addedAtBlock) {
    this.addedAtBlock = addedAtBlock;
  }


  public CurveContractVersionDTO addedAtTransaction(String addedAtTransaction) {
    
    this.addedAtTransaction = addedAtTransaction;
    return this;
  }

   /**
   * 
   * @return addedAtTransaction
  **/
  @javax.annotation.Nullable
  public String getAddedAtTransaction() {
    return addedAtTransaction;
  }


  public void setAddedAtTransaction(String addedAtTransaction) {
    this.addedAtTransaction = addedAtTransaction;
  }


  public CurveContractVersionDTO vid(Long vid) {
    
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



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CurveContractVersionDTO curveContractVersionDTO = (CurveContractVersionDTO) o;
    return Objects.equals(this.entryTime, curveContractVersionDTO.entryTime) &&
        Objects.equals(this.recvTime, curveContractVersionDTO.recvTime) &&
        Objects.equals(this.blockNumber, curveContractVersionDTO.blockNumber) &&
        Objects.equals(this.id, curveContractVersionDTO.id) &&
        Objects.equals(this.contract, curveContractVersionDTO.contract) &&
        Objects.equals(this.address, curveContractVersionDTO.address) &&
        Objects.equals(this.version, curveContractVersionDTO.version) &&
        Objects.equals(this.added, curveContractVersionDTO.added) &&
        Objects.equals(this.addedAtBlock, curveContractVersionDTO.addedAtBlock) &&
        Objects.equals(this.addedAtTransaction, curveContractVersionDTO.addedAtTransaction) &&
        Objects.equals(this.vid, curveContractVersionDTO.vid);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, id, contract, address, version, added, addedAtBlock, addedAtTransaction, vid);
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
    sb.append("class CurveContractVersionDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    contract: ").append(toIndentedString(contract)).append("\n");
    sb.append("    address: ").append(toIndentedString(address)).append("\n");
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
    sb.append("    added: ").append(toIndentedString(added)).append("\n");
    sb.append("    addedAtBlock: ").append(toIndentedString(addedAtBlock)).append("\n");
    sb.append("    addedAtTransaction: ").append(toIndentedString(addedAtTransaction)).append("\n");
    sb.append("    vid: ").append(toIndentedString(vid)).append("\n");
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
    openapiFields.add("contract");
    openapiFields.add("address");
    openapiFields.add("version");
    openapiFields.add("added");
    openapiFields.add("added_at_block");
    openapiFields.add("added_at_transaction");
    openapiFields.add("vid");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to CurveContractVersionDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!CurveContractVersionDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in CurveContractVersionDTO is not found in the empty JSON string", CurveContractVersionDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!CurveContractVersionDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `CurveContractVersionDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("contract") != null && !jsonObj.get("contract").isJsonNull()) && !jsonObj.get("contract").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `contract` to be a primitive type in the JSON string but got `%s`", jsonObj.get("contract").toString()));
      }
      if ((jsonObj.get("address") != null && !jsonObj.get("address").isJsonNull()) && !jsonObj.get("address").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `address` to be a primitive type in the JSON string but got `%s`", jsonObj.get("address").toString()));
      }
      if ((jsonObj.get("version") != null && !jsonObj.get("version").isJsonNull()) && !jsonObj.get("version").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `version` to be a primitive type in the JSON string but got `%s`", jsonObj.get("version").toString()));
      }
      if ((jsonObj.get("added") != null && !jsonObj.get("added").isJsonNull()) && !jsonObj.get("added").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `added` to be a primitive type in the JSON string but got `%s`", jsonObj.get("added").toString()));
      }
      if ((jsonObj.get("added_at_block") != null && !jsonObj.get("added_at_block").isJsonNull()) && !jsonObj.get("added_at_block").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `added_at_block` to be a primitive type in the JSON string but got `%s`", jsonObj.get("added_at_block").toString()));
      }
      if ((jsonObj.get("added_at_transaction") != null && !jsonObj.get("added_at_transaction").isJsonNull()) && !jsonObj.get("added_at_transaction").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `added_at_transaction` to be a primitive type in the JSON string but got `%s`", jsonObj.get("added_at_transaction").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!CurveContractVersionDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'CurveContractVersionDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<CurveContractVersionDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(CurveContractVersionDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<CurveContractVersionDTO>() {
           @Override
           public void write(JsonWriter out, CurveContractVersionDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public CurveContractVersionDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of CurveContractVersionDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of CurveContractVersionDTO
  * @throws IOException if the JSON string is invalid with respect to CurveContractVersionDTO
  */
  public static CurveContractVersionDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, CurveContractVersionDTO.class);
  }

 /**
  * Convert an instance of CurveContractVersionDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

