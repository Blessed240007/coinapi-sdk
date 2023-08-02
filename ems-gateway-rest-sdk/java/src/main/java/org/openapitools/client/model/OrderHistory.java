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
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

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
 * OrderHistory
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-08-02T10:05:49.082223Z[Etc/UTC]")
public class OrderHistory {
  public static final String SERIALIZED_NAME_APIKEY = "apikey";
  @SerializedName(SERIALIZED_NAME_APIKEY)
  private String apikey;

  public static final String SERIALIZED_NAME_EXCHANGE_ID = "exchangeId";
  @SerializedName(SERIALIZED_NAME_EXCHANGE_ID)
  private String exchangeId;

  public static final String SERIALIZED_NAME_CLIENT_ORDER_ID = "clientOrderId";
  @SerializedName(SERIALIZED_NAME_CLIENT_ORDER_ID)
  private String clientOrderId;

  public static final String SERIALIZED_NAME_SYMBOL_ID_EXCHANGE = "symbolIdExchange";
  @SerializedName(SERIALIZED_NAME_SYMBOL_ID_EXCHANGE)
  private String symbolIdExchange;

  public static final String SERIALIZED_NAME_SYMBOL_ID_COINAPI = "symbolIdCoinapi";
  @SerializedName(SERIALIZED_NAME_SYMBOL_ID_COINAPI)
  private String symbolIdCoinapi;

  public static final String SERIALIZED_NAME_AMOUNT_ORDER = "amountOrder";
  @SerializedName(SERIALIZED_NAME_AMOUNT_ORDER)
  private BigDecimal amountOrder;

  public static final String SERIALIZED_NAME_PRICE = "price";
  @SerializedName(SERIALIZED_NAME_PRICE)
  private BigDecimal price;

  public static final String SERIALIZED_NAME_SIDE = "side";
  @SerializedName(SERIALIZED_NAME_SIDE)
  private BigDecimal side;

  public static final String SERIALIZED_NAME_ORDER_TYPE = "orderType";
  @SerializedName(SERIALIZED_NAME_ORDER_TYPE)
  private String orderType;

  public static final String SERIALIZED_NAME_TIME_IN_FORCE = "timeInForce";
  @SerializedName(SERIALIZED_NAME_TIME_IN_FORCE)
  private String timeInForce;

  public static final String SERIALIZED_NAME_EXPIRE_TIME = "expireTime";
  @SerializedName(SERIALIZED_NAME_EXPIRE_TIME)
  private LocalDate expireTime = null;

  public static final String SERIALIZED_NAME_EXEC_INST = "execInst";
  @SerializedName(SERIALIZED_NAME_EXEC_INST)
  private List<String> execInst;

  public static final String SERIALIZED_NAME_CLIENT_ORDER_ID_FORMAT_EXCHANGE = "clientOrderIdFormatExchange";
  @SerializedName(SERIALIZED_NAME_CLIENT_ORDER_ID_FORMAT_EXCHANGE)
  private String clientOrderIdFormatExchange;

  public static final String SERIALIZED_NAME_EXCHANGE_ORDER_ID = "exchangeOrderId";
  @SerializedName(SERIALIZED_NAME_EXCHANGE_ORDER_ID)
  private String exchangeOrderId;

  public static final String SERIALIZED_NAME_AMOUNT_OPEN = "amountOpen";
  @SerializedName(SERIALIZED_NAME_AMOUNT_OPEN)
  private BigDecimal amountOpen;

  public static final String SERIALIZED_NAME_AMOUNT_FILLED = "amountFilled";
  @SerializedName(SERIALIZED_NAME_AMOUNT_FILLED)
  private BigDecimal amountFilled;

  public static final String SERIALIZED_NAME_AVG_PX = "avgPx";
  @SerializedName(SERIALIZED_NAME_AVG_PX)
  private BigDecimal avgPx;

  public static final String SERIALIZED_NAME_STATUS = "status";
  @SerializedName(SERIALIZED_NAME_STATUS)
  private String status;

  public static final String SERIALIZED_NAME_STATUS_HISTORY_STATUS = "statusHistoryStatus";
  @SerializedName(SERIALIZED_NAME_STATUS_HISTORY_STATUS)
  private List<String> statusHistoryStatus;

  public static final String SERIALIZED_NAME_STATUS_HISTORY_TIME = "statusHistoryTime";
  @SerializedName(SERIALIZED_NAME_STATUS_HISTORY_TIME)
  private List<LocalDate> statusHistoryTime;

  public static final String SERIALIZED_NAME_ERROR_MESSAGE_RESULT = "errorMessageResult";
  @SerializedName(SERIALIZED_NAME_ERROR_MESSAGE_RESULT)
  private String errorMessageResult;

  public static final String SERIALIZED_NAME_ERROR_MESSAGE_REASON = "errorMessageReason";
  @SerializedName(SERIALIZED_NAME_ERROR_MESSAGE_REASON)
  private String errorMessageReason;

  public static final String SERIALIZED_NAME_ERROR_MESSAGE_MESSAGE = "errorMessageMessage";
  @SerializedName(SERIALIZED_NAME_ERROR_MESSAGE_MESSAGE)
  private String errorMessageMessage;

  public static final String SERIALIZED_NAME_FILLS_TIME = "fillsTime";
  @SerializedName(SERIALIZED_NAME_FILLS_TIME)
  private List<LocalDate> fillsTime;

  public static final String SERIALIZED_NAME_FILLS_PRICE = "fillsPrice";
  @SerializedName(SERIALIZED_NAME_FILLS_PRICE)
  private List<BigDecimal> fillsPrice;

  public static final String SERIALIZED_NAME_FILLS_AMOUNT = "fillsAmount";
  @SerializedName(SERIALIZED_NAME_FILLS_AMOUNT)
  private List<BigDecimal> fillsAmount;

  public static final String SERIALIZED_NAME_CREATED_TIME = "createdTime";
  @SerializedName(SERIALIZED_NAME_CREATED_TIME)
  private LocalDate createdTime = null;

  public OrderHistory() {
  }

  public OrderHistory apikey(String apikey) {
    
    this.apikey = apikey;
    return this;
  }

   /**
   * Apikey
   * @return apikey
  **/
  @javax.annotation.Nullable
  public String getApikey() {
    return apikey;
  }


  public void setApikey(String apikey) {
    this.apikey = apikey;
  }


  public OrderHistory exchangeId(String exchangeId) {
    
    this.exchangeId = exchangeId;
    return this;
  }

   /**
   * Exchange id
   * @return exchangeId
  **/
  @javax.annotation.Nullable
  public String getExchangeId() {
    return exchangeId;
  }


  public void setExchangeId(String exchangeId) {
    this.exchangeId = exchangeId;
  }


  public OrderHistory clientOrderId(String clientOrderId) {
    
    this.clientOrderId = clientOrderId;
    return this;
  }

   /**
   * Client order id
   * @return clientOrderId
  **/
  @javax.annotation.Nullable
  public String getClientOrderId() {
    return clientOrderId;
  }


  public void setClientOrderId(String clientOrderId) {
    this.clientOrderId = clientOrderId;
  }


  public OrderHistory symbolIdExchange(String symbolIdExchange) {
    
    this.symbolIdExchange = symbolIdExchange;
    return this;
  }

   /**
   * Symbol id exchange
   * @return symbolIdExchange
  **/
  @javax.annotation.Nullable
  public String getSymbolIdExchange() {
    return symbolIdExchange;
  }


  public void setSymbolIdExchange(String symbolIdExchange) {
    this.symbolIdExchange = symbolIdExchange;
  }


  public OrderHistory symbolIdCoinapi(String symbolIdCoinapi) {
    
    this.symbolIdCoinapi = symbolIdCoinapi;
    return this;
  }

   /**
   * Symbol id in coinapi
   * @return symbolIdCoinapi
  **/
  @javax.annotation.Nullable
  public String getSymbolIdCoinapi() {
    return symbolIdCoinapi;
  }


  public void setSymbolIdCoinapi(String symbolIdCoinapi) {
    this.symbolIdCoinapi = symbolIdCoinapi;
  }


  public OrderHistory amountOrder(BigDecimal amountOrder) {
    
    this.amountOrder = amountOrder;
    return this;
  }

   /**
   * Amount
   * @return amountOrder
  **/
  @javax.annotation.Nullable
  public BigDecimal getAmountOrder() {
    return amountOrder;
  }


  public void setAmountOrder(BigDecimal amountOrder) {
    this.amountOrder = amountOrder;
  }


  public OrderHistory price(BigDecimal price) {
    
    this.price = price;
    return this;
  }

   /**
   * Price
   * @return price
  **/
  @javax.annotation.Nullable
  public BigDecimal getPrice() {
    return price;
  }


  public void setPrice(BigDecimal price) {
    this.price = price;
  }


  public OrderHistory side(BigDecimal side) {
    
    this.side = side;
    return this;
  }

   /**
   * 1-buy, 2-sell
   * @return side
  **/
  @javax.annotation.Nullable
  public BigDecimal getSide() {
    return side;
  }


  public void setSide(BigDecimal side) {
    this.side = side;
  }


  public OrderHistory orderType(String orderType) {
    
    this.orderType = orderType;
    return this;
  }

   /**
   * Order type
   * @return orderType
  **/
  @javax.annotation.Nullable
  public String getOrderType() {
    return orderType;
  }


  public void setOrderType(String orderType) {
    this.orderType = orderType;
  }


  public OrderHistory timeInForce(String timeInForce) {
    
    this.timeInForce = timeInForce;
    return this;
  }

   /**
   * Time in force
   * @return timeInForce
  **/
  @javax.annotation.Nullable
  public String getTimeInForce() {
    return timeInForce;
  }


  public void setTimeInForce(String timeInForce) {
    this.timeInForce = timeInForce;
  }


  public OrderHistory expireTime(LocalDate expireTime) {
    
    this.expireTime = expireTime;
    return this;
  }

   /**
   * Expire time
   * @return expireTime
  **/
  @javax.annotation.Nullable
  public LocalDate getExpireTime() {
    return expireTime;
  }


  public void setExpireTime(LocalDate expireTime) {
    this.expireTime = expireTime;
  }


  public OrderHistory execInst(List<String> execInst) {
    
    this.execInst = execInst;
    return this;
  }

  public OrderHistory addExecInstItem(String execInstItem) {
    if (this.execInst == null) {
      this.execInst = new ArrayList<>();
    }
    this.execInst.add(execInstItem);
    return this;
  }

   /**
   * Exec inst
   * @return execInst
  **/
  @javax.annotation.Nullable
  public List<String> getExecInst() {
    return execInst;
  }


  public void setExecInst(List<String> execInst) {
    this.execInst = execInst;
  }


  public OrderHistory clientOrderIdFormatExchange(String clientOrderIdFormatExchange) {
    
    this.clientOrderIdFormatExchange = clientOrderIdFormatExchange;
    return this;
  }

   /**
   * Client order id format
   * @return clientOrderIdFormatExchange
  **/
  @javax.annotation.Nullable
  public String getClientOrderIdFormatExchange() {
    return clientOrderIdFormatExchange;
  }


  public void setClientOrderIdFormatExchange(String clientOrderIdFormatExchange) {
    this.clientOrderIdFormatExchange = clientOrderIdFormatExchange;
  }


  public OrderHistory exchangeOrderId(String exchangeOrderId) {
    
    this.exchangeOrderId = exchangeOrderId;
    return this;
  }

   /**
   * Exchange order id
   * @return exchangeOrderId
  **/
  @javax.annotation.Nullable
  public String getExchangeOrderId() {
    return exchangeOrderId;
  }


  public void setExchangeOrderId(String exchangeOrderId) {
    this.exchangeOrderId = exchangeOrderId;
  }


  public OrderHistory amountOpen(BigDecimal amountOpen) {
    
    this.amountOpen = amountOpen;
    return this;
  }

   /**
   * Amount open
   * @return amountOpen
  **/
  @javax.annotation.Nullable
  public BigDecimal getAmountOpen() {
    return amountOpen;
  }


  public void setAmountOpen(BigDecimal amountOpen) {
    this.amountOpen = amountOpen;
  }


  public OrderHistory amountFilled(BigDecimal amountFilled) {
    
    this.amountFilled = amountFilled;
    return this;
  }

   /**
   * Amount filled
   * @return amountFilled
  **/
  @javax.annotation.Nullable
  public BigDecimal getAmountFilled() {
    return amountFilled;
  }


  public void setAmountFilled(BigDecimal amountFilled) {
    this.amountFilled = amountFilled;
  }


  public OrderHistory avgPx(BigDecimal avgPx) {
    
    this.avgPx = avgPx;
    return this;
  }

   /**
   * Average price
   * @return avgPx
  **/
  @javax.annotation.Nullable
  public BigDecimal getAvgPx() {
    return avgPx;
  }


  public void setAvgPx(BigDecimal avgPx) {
    this.avgPx = avgPx;
  }


  public OrderHistory status(String status) {
    
    this.status = status;
    return this;
  }

   /**
   * Status
   * @return status
  **/
  @javax.annotation.Nullable
  public String getStatus() {
    return status;
  }


  public void setStatus(String status) {
    this.status = status;
  }


  public OrderHistory statusHistoryStatus(List<String> statusHistoryStatus) {
    
    this.statusHistoryStatus = statusHistoryStatus;
    return this;
  }

  public OrderHistory addStatusHistoryStatusItem(String statusHistoryStatusItem) {
    if (this.statusHistoryStatus == null) {
      this.statusHistoryStatus = new ArrayList<>();
    }
    this.statusHistoryStatus.add(statusHistoryStatusItem);
    return this;
  }

   /**
   * History status
   * @return statusHistoryStatus
  **/
  @javax.annotation.Nullable
  public List<String> getStatusHistoryStatus() {
    return statusHistoryStatus;
  }


  public void setStatusHistoryStatus(List<String> statusHistoryStatus) {
    this.statusHistoryStatus = statusHistoryStatus;
  }


  public OrderHistory statusHistoryTime(List<LocalDate> statusHistoryTime) {
    
    this.statusHistoryTime = statusHistoryTime;
    return this;
  }

  public OrderHistory addStatusHistoryTimeItem(LocalDate statusHistoryTimeItem) {
    if (this.statusHistoryTime == null) {
      this.statusHistoryTime = new ArrayList<>();
    }
    this.statusHistoryTime.add(statusHistoryTimeItem);
    return this;
  }

   /**
   * History status time
   * @return statusHistoryTime
  **/
  @javax.annotation.Nullable
  public List<LocalDate> getStatusHistoryTime() {
    return statusHistoryTime;
  }


  public void setStatusHistoryTime(List<LocalDate> statusHistoryTime) {
    this.statusHistoryTime = statusHistoryTime;
  }


  public OrderHistory errorMessageResult(String errorMessageResult) {
    
    this.errorMessageResult = errorMessageResult;
    return this;
  }

   /**
   * Error message
   * @return errorMessageResult
  **/
  @javax.annotation.Nullable
  public String getErrorMessageResult() {
    return errorMessageResult;
  }


  public void setErrorMessageResult(String errorMessageResult) {
    this.errorMessageResult = errorMessageResult;
  }


  public OrderHistory errorMessageReason(String errorMessageReason) {
    
    this.errorMessageReason = errorMessageReason;
    return this;
  }

   /**
   * Error message reason
   * @return errorMessageReason
  **/
  @javax.annotation.Nullable
  public String getErrorMessageReason() {
    return errorMessageReason;
  }


  public void setErrorMessageReason(String errorMessageReason) {
    this.errorMessageReason = errorMessageReason;
  }


  public OrderHistory errorMessageMessage(String errorMessageMessage) {
    
    this.errorMessageMessage = errorMessageMessage;
    return this;
  }

   /**
   * Error message
   * @return errorMessageMessage
  **/
  @javax.annotation.Nullable
  public String getErrorMessageMessage() {
    return errorMessageMessage;
  }


  public void setErrorMessageMessage(String errorMessageMessage) {
    this.errorMessageMessage = errorMessageMessage;
  }


  public OrderHistory fillsTime(List<LocalDate> fillsTime) {
    
    this.fillsTime = fillsTime;
    return this;
  }

  public OrderHistory addFillsTimeItem(LocalDate fillsTimeItem) {
    if (this.fillsTime == null) {
      this.fillsTime = new ArrayList<>();
    }
    this.fillsTime.add(fillsTimeItem);
    return this;
  }

   /**
   * Fills time
   * @return fillsTime
  **/
  @javax.annotation.Nullable
  public List<LocalDate> getFillsTime() {
    return fillsTime;
  }


  public void setFillsTime(List<LocalDate> fillsTime) {
    this.fillsTime = fillsTime;
  }


  public OrderHistory fillsPrice(List<BigDecimal> fillsPrice) {
    
    this.fillsPrice = fillsPrice;
    return this;
  }

  public OrderHistory addFillsPriceItem(BigDecimal fillsPriceItem) {
    if (this.fillsPrice == null) {
      this.fillsPrice = new ArrayList<>();
    }
    this.fillsPrice.add(fillsPriceItem);
    return this;
  }

   /**
   * Fills price
   * @return fillsPrice
  **/
  @javax.annotation.Nullable
  public List<BigDecimal> getFillsPrice() {
    return fillsPrice;
  }


  public void setFillsPrice(List<BigDecimal> fillsPrice) {
    this.fillsPrice = fillsPrice;
  }


  public OrderHistory fillsAmount(List<BigDecimal> fillsAmount) {
    
    this.fillsAmount = fillsAmount;
    return this;
  }

  public OrderHistory addFillsAmountItem(BigDecimal fillsAmountItem) {
    if (this.fillsAmount == null) {
      this.fillsAmount = new ArrayList<>();
    }
    this.fillsAmount.add(fillsAmountItem);
    return this;
  }

   /**
   * Fills amount
   * @return fillsAmount
  **/
  @javax.annotation.Nullable
  public List<BigDecimal> getFillsAmount() {
    return fillsAmount;
  }


  public void setFillsAmount(List<BigDecimal> fillsAmount) {
    this.fillsAmount = fillsAmount;
  }


  public OrderHistory createdTime(LocalDate createdTime) {
    
    this.createdTime = createdTime;
    return this;
  }

   /**
   * Created time
   * @return createdTime
  **/
  @javax.annotation.Nullable
  public LocalDate getCreatedTime() {
    return createdTime;
  }


  public void setCreatedTime(LocalDate createdTime) {
    this.createdTime = createdTime;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    OrderHistory orderHistory = (OrderHistory) o;
    return Objects.equals(this.apikey, orderHistory.apikey) &&
        Objects.equals(this.exchangeId, orderHistory.exchangeId) &&
        Objects.equals(this.clientOrderId, orderHistory.clientOrderId) &&
        Objects.equals(this.symbolIdExchange, orderHistory.symbolIdExchange) &&
        Objects.equals(this.symbolIdCoinapi, orderHistory.symbolIdCoinapi) &&
        Objects.equals(this.amountOrder, orderHistory.amountOrder) &&
        Objects.equals(this.price, orderHistory.price) &&
        Objects.equals(this.side, orderHistory.side) &&
        Objects.equals(this.orderType, orderHistory.orderType) &&
        Objects.equals(this.timeInForce, orderHistory.timeInForce) &&
        Objects.equals(this.expireTime, orderHistory.expireTime) &&
        Objects.equals(this.execInst, orderHistory.execInst) &&
        Objects.equals(this.clientOrderIdFormatExchange, orderHistory.clientOrderIdFormatExchange) &&
        Objects.equals(this.exchangeOrderId, orderHistory.exchangeOrderId) &&
        Objects.equals(this.amountOpen, orderHistory.amountOpen) &&
        Objects.equals(this.amountFilled, orderHistory.amountFilled) &&
        Objects.equals(this.avgPx, orderHistory.avgPx) &&
        Objects.equals(this.status, orderHistory.status) &&
        Objects.equals(this.statusHistoryStatus, orderHistory.statusHistoryStatus) &&
        Objects.equals(this.statusHistoryTime, orderHistory.statusHistoryTime) &&
        Objects.equals(this.errorMessageResult, orderHistory.errorMessageResult) &&
        Objects.equals(this.errorMessageReason, orderHistory.errorMessageReason) &&
        Objects.equals(this.errorMessageMessage, orderHistory.errorMessageMessage) &&
        Objects.equals(this.fillsTime, orderHistory.fillsTime) &&
        Objects.equals(this.fillsPrice, orderHistory.fillsPrice) &&
        Objects.equals(this.fillsAmount, orderHistory.fillsAmount) &&
        Objects.equals(this.createdTime, orderHistory.createdTime);
  }

  @Override
  public int hashCode() {
    return Objects.hash(apikey, exchangeId, clientOrderId, symbolIdExchange, symbolIdCoinapi, amountOrder, price, side, orderType, timeInForce, expireTime, execInst, clientOrderIdFormatExchange, exchangeOrderId, amountOpen, amountFilled, avgPx, status, statusHistoryStatus, statusHistoryTime, errorMessageResult, errorMessageReason, errorMessageMessage, fillsTime, fillsPrice, fillsAmount, createdTime);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class OrderHistory {\n");
    sb.append("    apikey: ").append(toIndentedString(apikey)).append("\n");
    sb.append("    exchangeId: ").append(toIndentedString(exchangeId)).append("\n");
    sb.append("    clientOrderId: ").append(toIndentedString(clientOrderId)).append("\n");
    sb.append("    symbolIdExchange: ").append(toIndentedString(symbolIdExchange)).append("\n");
    sb.append("    symbolIdCoinapi: ").append(toIndentedString(symbolIdCoinapi)).append("\n");
    sb.append("    amountOrder: ").append(toIndentedString(amountOrder)).append("\n");
    sb.append("    price: ").append(toIndentedString(price)).append("\n");
    sb.append("    side: ").append(toIndentedString(side)).append("\n");
    sb.append("    orderType: ").append(toIndentedString(orderType)).append("\n");
    sb.append("    timeInForce: ").append(toIndentedString(timeInForce)).append("\n");
    sb.append("    expireTime: ").append(toIndentedString(expireTime)).append("\n");
    sb.append("    execInst: ").append(toIndentedString(execInst)).append("\n");
    sb.append("    clientOrderIdFormatExchange: ").append(toIndentedString(clientOrderIdFormatExchange)).append("\n");
    sb.append("    exchangeOrderId: ").append(toIndentedString(exchangeOrderId)).append("\n");
    sb.append("    amountOpen: ").append(toIndentedString(amountOpen)).append("\n");
    sb.append("    amountFilled: ").append(toIndentedString(amountFilled)).append("\n");
    sb.append("    avgPx: ").append(toIndentedString(avgPx)).append("\n");
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
    sb.append("    statusHistoryStatus: ").append(toIndentedString(statusHistoryStatus)).append("\n");
    sb.append("    statusHistoryTime: ").append(toIndentedString(statusHistoryTime)).append("\n");
    sb.append("    errorMessageResult: ").append(toIndentedString(errorMessageResult)).append("\n");
    sb.append("    errorMessageReason: ").append(toIndentedString(errorMessageReason)).append("\n");
    sb.append("    errorMessageMessage: ").append(toIndentedString(errorMessageMessage)).append("\n");
    sb.append("    fillsTime: ").append(toIndentedString(fillsTime)).append("\n");
    sb.append("    fillsPrice: ").append(toIndentedString(fillsPrice)).append("\n");
    sb.append("    fillsAmount: ").append(toIndentedString(fillsAmount)).append("\n");
    sb.append("    createdTime: ").append(toIndentedString(createdTime)).append("\n");
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
    openapiFields.add("apikey");
    openapiFields.add("exchangeId");
    openapiFields.add("clientOrderId");
    openapiFields.add("symbolIdExchange");
    openapiFields.add("symbolIdCoinapi");
    openapiFields.add("amountOrder");
    openapiFields.add("price");
    openapiFields.add("side");
    openapiFields.add("orderType");
    openapiFields.add("timeInForce");
    openapiFields.add("expireTime");
    openapiFields.add("execInst");
    openapiFields.add("clientOrderIdFormatExchange");
    openapiFields.add("exchangeOrderId");
    openapiFields.add("amountOpen");
    openapiFields.add("amountFilled");
    openapiFields.add("avgPx");
    openapiFields.add("status");
    openapiFields.add("statusHistoryStatus");
    openapiFields.add("statusHistoryTime");
    openapiFields.add("errorMessageResult");
    openapiFields.add("errorMessageReason");
    openapiFields.add("errorMessageMessage");
    openapiFields.add("fillsTime");
    openapiFields.add("fillsPrice");
    openapiFields.add("fillsAmount");
    openapiFields.add("createdTime");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to OrderHistory
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!OrderHistory.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in OrderHistory is not found in the empty JSON string", OrderHistory.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!OrderHistory.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `OrderHistory` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("apikey") != null && !jsonObj.get("apikey").isJsonNull()) && !jsonObj.get("apikey").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `apikey` to be a primitive type in the JSON string but got `%s`", jsonObj.get("apikey").toString()));
      }
      if ((jsonObj.get("exchangeId") != null && !jsonObj.get("exchangeId").isJsonNull()) && !jsonObj.get("exchangeId").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `exchangeId` to be a primitive type in the JSON string but got `%s`", jsonObj.get("exchangeId").toString()));
      }
      if ((jsonObj.get("clientOrderId") != null && !jsonObj.get("clientOrderId").isJsonNull()) && !jsonObj.get("clientOrderId").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `clientOrderId` to be a primitive type in the JSON string but got `%s`", jsonObj.get("clientOrderId").toString()));
      }
      if ((jsonObj.get("symbolIdExchange") != null && !jsonObj.get("symbolIdExchange").isJsonNull()) && !jsonObj.get("symbolIdExchange").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `symbolIdExchange` to be a primitive type in the JSON string but got `%s`", jsonObj.get("symbolIdExchange").toString()));
      }
      if ((jsonObj.get("symbolIdCoinapi") != null && !jsonObj.get("symbolIdCoinapi").isJsonNull()) && !jsonObj.get("symbolIdCoinapi").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `symbolIdCoinapi` to be a primitive type in the JSON string but got `%s`", jsonObj.get("symbolIdCoinapi").toString()));
      }
      if ((jsonObj.get("orderType") != null && !jsonObj.get("orderType").isJsonNull()) && !jsonObj.get("orderType").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `orderType` to be a primitive type in the JSON string but got `%s`", jsonObj.get("orderType").toString()));
      }
      if ((jsonObj.get("timeInForce") != null && !jsonObj.get("timeInForce").isJsonNull()) && !jsonObj.get("timeInForce").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `timeInForce` to be a primitive type in the JSON string but got `%s`", jsonObj.get("timeInForce").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("execInst") != null && !jsonObj.get("execInst").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `execInst` to be an array in the JSON string but got `%s`", jsonObj.get("execInst").toString()));
      }
      if ((jsonObj.get("clientOrderIdFormatExchange") != null && !jsonObj.get("clientOrderIdFormatExchange").isJsonNull()) && !jsonObj.get("clientOrderIdFormatExchange").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `clientOrderIdFormatExchange` to be a primitive type in the JSON string but got `%s`", jsonObj.get("clientOrderIdFormatExchange").toString()));
      }
      if ((jsonObj.get("exchangeOrderId") != null && !jsonObj.get("exchangeOrderId").isJsonNull()) && !jsonObj.get("exchangeOrderId").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `exchangeOrderId` to be a primitive type in the JSON string but got `%s`", jsonObj.get("exchangeOrderId").toString()));
      }
      if ((jsonObj.get("status") != null && !jsonObj.get("status").isJsonNull()) && !jsonObj.get("status").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `status` to be a primitive type in the JSON string but got `%s`", jsonObj.get("status").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("statusHistoryStatus") != null && !jsonObj.get("statusHistoryStatus").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `statusHistoryStatus` to be an array in the JSON string but got `%s`", jsonObj.get("statusHistoryStatus").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("statusHistoryTime") != null && !jsonObj.get("statusHistoryTime").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `statusHistoryTime` to be an array in the JSON string but got `%s`", jsonObj.get("statusHistoryTime").toString()));
      }
      if ((jsonObj.get("errorMessageResult") != null && !jsonObj.get("errorMessageResult").isJsonNull()) && !jsonObj.get("errorMessageResult").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `errorMessageResult` to be a primitive type in the JSON string but got `%s`", jsonObj.get("errorMessageResult").toString()));
      }
      if ((jsonObj.get("errorMessageReason") != null && !jsonObj.get("errorMessageReason").isJsonNull()) && !jsonObj.get("errorMessageReason").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `errorMessageReason` to be a primitive type in the JSON string but got `%s`", jsonObj.get("errorMessageReason").toString()));
      }
      if ((jsonObj.get("errorMessageMessage") != null && !jsonObj.get("errorMessageMessage").isJsonNull()) && !jsonObj.get("errorMessageMessage").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `errorMessageMessage` to be a primitive type in the JSON string but got `%s`", jsonObj.get("errorMessageMessage").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("fillsTime") != null && !jsonObj.get("fillsTime").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `fillsTime` to be an array in the JSON string but got `%s`", jsonObj.get("fillsTime").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("fillsPrice") != null && !jsonObj.get("fillsPrice").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `fillsPrice` to be an array in the JSON string but got `%s`", jsonObj.get("fillsPrice").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("fillsAmount") != null && !jsonObj.get("fillsAmount").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `fillsAmount` to be an array in the JSON string but got `%s`", jsonObj.get("fillsAmount").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!OrderHistory.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'OrderHistory' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<OrderHistory> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(OrderHistory.class));

       return (TypeAdapter<T>) new TypeAdapter<OrderHistory>() {
           @Override
           public void write(JsonWriter out, OrderHistory value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public OrderHistory read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of OrderHistory given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of OrderHistory
  * @throws IOException if the JSON string is invalid with respect to OrderHistory
  */
  public static OrderHistory fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, OrderHistory.class);
  }

 /**
  * Convert an instance of OrderHistory to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

