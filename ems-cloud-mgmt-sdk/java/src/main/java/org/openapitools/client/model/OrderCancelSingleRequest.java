/*
 * EMS - REST API
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>        Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints  <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this: `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 
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
 * Cancel single order request object.
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-08-09T07:36:29.001050Z[Etc/UTC]")
public class OrderCancelSingleRequest {
  public static final String SERIALIZED_NAME_EXCHANGE_ID = "exchange_id";
  @SerializedName(SERIALIZED_NAME_EXCHANGE_ID)
  private String exchangeId;

  public static final String SERIALIZED_NAME_EXCHANGE_ORDER_ID = "exchange_order_id";
  @SerializedName(SERIALIZED_NAME_EXCHANGE_ORDER_ID)
  private String exchangeOrderId;

  public static final String SERIALIZED_NAME_CLIENT_ORDER_ID = "client_order_id";
  @SerializedName(SERIALIZED_NAME_CLIENT_ORDER_ID)
  private String clientOrderId;

  public OrderCancelSingleRequest() {
  }

  public OrderCancelSingleRequest exchangeId(String exchangeId) {
    
    this.exchangeId = exchangeId;
    return this;
  }

   /**
   * Exchange identifier used to identify the routing destination.
   * @return exchangeId
  **/
  @javax.annotation.Nonnull
  public String getExchangeId() {
    return exchangeId;
  }


  public void setExchangeId(String exchangeId) {
    this.exchangeId = exchangeId;
  }


  public OrderCancelSingleRequest exchangeOrderId(String exchangeOrderId) {
    
    this.exchangeOrderId = exchangeOrderId;
    return this;
  }

   /**
   * Unique identifier of the order assigned by the exchange or executing system. One of the properties (&#x60;exchange_order_id&#x60;, &#x60;client_order_id&#x60;) is required to identify the new order.
   * @return exchangeOrderId
  **/
  @javax.annotation.Nullable
  public String getExchangeOrderId() {
    return exchangeOrderId;
  }


  public void setExchangeOrderId(String exchangeOrderId) {
    this.exchangeOrderId = exchangeOrderId;
  }


  public OrderCancelSingleRequest clientOrderId(String clientOrderId) {
    
    this.clientOrderId = clientOrderId;
    return this;
  }

   /**
   * The unique identifier of the order assigned by the client. One of the properties (&#x60;exchange_order_id&#x60;, &#x60;client_order_id&#x60;) is required to identify the new order.
   * @return clientOrderId
  **/
  @javax.annotation.Nullable
  public String getClientOrderId() {
    return clientOrderId;
  }


  public void setClientOrderId(String clientOrderId) {
    this.clientOrderId = clientOrderId;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    OrderCancelSingleRequest orderCancelSingleRequest = (OrderCancelSingleRequest) o;
    return Objects.equals(this.exchangeId, orderCancelSingleRequest.exchangeId) &&
        Objects.equals(this.exchangeOrderId, orderCancelSingleRequest.exchangeOrderId) &&
        Objects.equals(this.clientOrderId, orderCancelSingleRequest.clientOrderId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(exchangeId, exchangeOrderId, clientOrderId);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class OrderCancelSingleRequest {\n");
    sb.append("    exchangeId: ").append(toIndentedString(exchangeId)).append("\n");
    sb.append("    exchangeOrderId: ").append(toIndentedString(exchangeOrderId)).append("\n");
    sb.append("    clientOrderId: ").append(toIndentedString(clientOrderId)).append("\n");
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
    openapiFields.add("exchange_id");
    openapiFields.add("exchange_order_id");
    openapiFields.add("client_order_id");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("exchange_id");
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to OrderCancelSingleRequest
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!OrderCancelSingleRequest.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in OrderCancelSingleRequest is not found in the empty JSON string", OrderCancelSingleRequest.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!OrderCancelSingleRequest.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `OrderCancelSingleRequest` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : OrderCancelSingleRequest.openapiRequiredFields) {
        if (jsonObj.get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonObj.toString()));
        }
      }
      if (!jsonObj.get("exchange_id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `exchange_id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("exchange_id").toString()));
      }
      if ((jsonObj.get("exchange_order_id") != null && !jsonObj.get("exchange_order_id").isJsonNull()) && !jsonObj.get("exchange_order_id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `exchange_order_id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("exchange_order_id").toString()));
      }
      if ((jsonObj.get("client_order_id") != null && !jsonObj.get("client_order_id").isJsonNull()) && !jsonObj.get("client_order_id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `client_order_id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("client_order_id").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!OrderCancelSingleRequest.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'OrderCancelSingleRequest' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<OrderCancelSingleRequest> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(OrderCancelSingleRequest.class));

       return (TypeAdapter<T>) new TypeAdapter<OrderCancelSingleRequest>() {
           @Override
           public void write(JsonWriter out, OrderCancelSingleRequest value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public OrderCancelSingleRequest read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of OrderCancelSingleRequest given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of OrderCancelSingleRequest
  * @throws IOException if the JSON string is invalid with respect to OrderCancelSingleRequest
  */
  public static OrderCancelSingleRequest fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, OrderCancelSingleRequest.class);
  }

 /**
  * Convert an instance of OrderCancelSingleRequest to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

