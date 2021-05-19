/*
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       
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
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.math.BigDecimal;
import org.threeten.bp.LocalDate;

/**
 * Fills
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2021-05-19T11:22:54.707423Z[Etc/UTC]")
public class Fills {
  public static final String SERIALIZED_NAME_TIME = "time";
  @SerializedName(SERIALIZED_NAME_TIME)
  private LocalDate time = null;

  public static final String SERIALIZED_NAME_PRICE = "price";
  @SerializedName(SERIALIZED_NAME_PRICE)
  private BigDecimal price;

  public static final String SERIALIZED_NAME_AMOUNT = "amount";
  @SerializedName(SERIALIZED_NAME_AMOUNT)
  private BigDecimal amount;


  public Fills time(LocalDate time) {
    
    this.time = time;
    return this;
  }

   /**
   * Execution time.
   * @return time
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "2020-01-01T10:45:20.1677709Z", value = "Execution time.")

  public LocalDate getTime() {
    return time;
  }


  public void setTime(LocalDate time) {
    this.time = time;
  }


  public Fills price(BigDecimal price) {
    
    this.price = price;
    return this;
  }

   /**
   * Execution price.
   * @return price
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "10799.2", value = "Execution price.")

  public BigDecimal getPrice() {
    return price;
  }


  public void setPrice(BigDecimal price) {
    this.price = price;
  }


  public Fills amount(BigDecimal amount) {
    
    this.amount = amount;
    return this;
  }

   /**
   * Executed quantity.
   * @return amount
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.002", value = "Executed quantity.")

  public BigDecimal getAmount() {
    return amount;
  }


  public void setAmount(BigDecimal amount) {
    this.amount = amount;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Fills fills = (Fills) o;
    return Objects.equals(this.time, fills.time) &&
        Objects.equals(this.price, fills.price) &&
        Objects.equals(this.amount, fills.amount);
  }

  @Override
  public int hashCode() {
    return Objects.hash(time, price, amount);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Fills {\n");
    sb.append("    time: ").append(toIndentedString(time)).append("\n");
    sb.append("    price: ").append(toIndentedString(price)).append("\n");
    sb.append("    amount: ").append(toIndentedString(amount)).append("\n");
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

}

