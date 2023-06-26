/**
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

import java.util.Date;
import org.openapitools.client.model.TransactionsETradeAggressiveSide;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * Swap are created for each token swap within a pair.
 **/
@ApiModel(description = "Swap are created for each token swap within a pair.")
public class SushiswapSwapDTO {
  
  @SerializedName("entry_time")
  private Date entryTime = null;
  @SerializedName("recv_time")
  private Date recvTime = null;
  @SerializedName("block_number")
  private Long blockNumber = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("transaction")
  private String transaction = null;
  @SerializedName("timestamp")
  private String timestamp = null;
  @SerializedName("pair")
  private String pair = null;
  @SerializedName("sender")
  private String sender = null;
  @SerializedName("amount_0_in")
  private String amount0In = null;
  @SerializedName("amount_1_in")
  private String amount1In = null;
  @SerializedName("amount_0_out")
  private String amount0Out = null;
  @SerializedName("amount_1_out")
  private String amount1Out = null;
  @SerializedName("to")
  private String to = null;
  @SerializedName("log_index")
  private String logIndex = null;
  @SerializedName("amount_usd")
  private String amountUsd = null;
  @SerializedName("vid")
  private Long vid = null;
  @SerializedName("pool_id")
  private String poolId = null;
  @SerializedName("transaction_id")
  private String transactionId = null;
  @SerializedName("evaluated_price")
  private Double evaluatedPrice = null;
  @SerializedName("evaluated_amount")
  private Double evaluatedAmount = null;
  @SerializedName("evaluated_aggressor")
  private TransactionsETradeAggressiveSide evaluatedAggressor = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Date getEntryTime() {
    return entryTime;
  }
  public void setEntryTime(Date entryTime) {
    this.entryTime = entryTime;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Date getRecvTime() {
    return recvTime;
  }
  public void setRecvTime(Date recvTime) {
    this.recvTime = recvTime;
  }

  /**
   * Number of block in which entity was recorded.
   **/
  @ApiModelProperty(value = "Number of block in which entity was recorded.")
  public Long getBlockNumber() {
    return blockNumber;
  }
  public void setBlockNumber(Long blockNumber) {
    this.blockNumber = blockNumber;
  }

  /**
   * Transaction hash plus index in Transaction swap array.
   **/
  @ApiModelProperty(value = "Transaction hash plus index in Transaction swap array.")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   * Reference to transaction swap was included in.
   **/
  @ApiModelProperty(value = "Reference to transaction swap was included in.")
  public String getTransaction() {
    return transaction;
  }
  public void setTransaction(String transaction) {
    this.transaction = transaction;
  }

  /**
   * Timestamp of swap, used for sorted lookups.
   **/
  @ApiModelProperty(value = "Timestamp of swap, used for sorted lookups.")
  public String getTimestamp() {
    return timestamp;
  }
  public void setTimestamp(String timestamp) {
    this.timestamp = timestamp;
  }

  /**
   * Reference to pair.
   **/
  @ApiModelProperty(value = "Reference to pair.")
  public String getPair() {
    return pair;
  }
  public void setPair(String pair) {
    this.pair = pair;
  }

  /**
   * Address that initiated the swap.
   **/
  @ApiModelProperty(value = "Address that initiated the swap.")
  public String getSender() {
    return sender;
  }
  public void setSender(String sender) {
    this.sender = sender;
  }

  /**
   * Amount of token0 sold.
   **/
  @ApiModelProperty(value = "Amount of token0 sold.")
  public String getAmount0In() {
    return amount0In;
  }
  public void setAmount0In(String amount0In) {
    this.amount0In = amount0In;
  }

  /**
   * Amount of token1 sold.
   **/
  @ApiModelProperty(value = "Amount of token1 sold.")
  public String getAmount1In() {
    return amount1In;
  }
  public void setAmount1In(String amount1In) {
    this.amount1In = amount1In;
  }

  /**
   * Amount of token0 received.
   **/
  @ApiModelProperty(value = "Amount of token0 received.")
  public String getAmount0Out() {
    return amount0Out;
  }
  public void setAmount0Out(String amount0Out) {
    this.amount0Out = amount0Out;
  }

  /**
   * Amount of token1 received.
   **/
  @ApiModelProperty(value = "Amount of token1 received.")
  public String getAmount1Out() {
    return amount1Out;
  }
  public void setAmount1Out(String amount1Out) {
    this.amount1Out = amount1Out;
  }

  /**
   * Recipient of output tokens.
   **/
  @ApiModelProperty(value = "Recipient of output tokens.")
  public String getTo() {
    return to;
  }
  public void setTo(String to) {
    this.to = to;
  }

  /**
   * Event index within transaction.
   **/
  @ApiModelProperty(value = "Event index within transaction.")
  public String getLogIndex() {
    return logIndex;
  }
  public void setLogIndex(String logIndex) {
    this.logIndex = logIndex;
  }

  /**
   * Derived amount of tokens sold in USD.
   **/
  @ApiModelProperty(value = "Derived amount of tokens sold in USD.")
  public String getAmountUsd() {
    return amountUsd;
  }
  public void setAmountUsd(String amountUsd) {
    this.amountUsd = amountUsd;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public Long getVid() {
    return vid;
  }
  public void setVid(Long vid) {
    this.vid = vid;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getPoolId() {
    return poolId;
  }
  public void setPoolId(String poolId) {
    this.poolId = poolId;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTransactionId() {
    return transactionId;
  }
  public void setTransactionId(String transactionId) {
    this.transactionId = transactionId;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Double getEvaluatedPrice() {
    return evaluatedPrice;
  }
  public void setEvaluatedPrice(Double evaluatedPrice) {
    this.evaluatedPrice = evaluatedPrice;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Double getEvaluatedAmount() {
    return evaluatedAmount;
  }
  public void setEvaluatedAmount(Double evaluatedAmount) {
    this.evaluatedAmount = evaluatedAmount;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public TransactionsETradeAggressiveSide getEvaluatedAggressor() {
    return evaluatedAggressor;
  }
  public void setEvaluatedAggressor(TransactionsETradeAggressiveSide evaluatedAggressor) {
    this.evaluatedAggressor = evaluatedAggressor;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SushiswapSwapDTO sushiswapSwapDTO = (SushiswapSwapDTO) o;
    return (this.entryTime == null ? sushiswapSwapDTO.entryTime == null : this.entryTime.equals(sushiswapSwapDTO.entryTime)) &&
        (this.recvTime == null ? sushiswapSwapDTO.recvTime == null : this.recvTime.equals(sushiswapSwapDTO.recvTime)) &&
        (this.blockNumber == null ? sushiswapSwapDTO.blockNumber == null : this.blockNumber.equals(sushiswapSwapDTO.blockNumber)) &&
        (this.id == null ? sushiswapSwapDTO.id == null : this.id.equals(sushiswapSwapDTO.id)) &&
        (this.transaction == null ? sushiswapSwapDTO.transaction == null : this.transaction.equals(sushiswapSwapDTO.transaction)) &&
        (this.timestamp == null ? sushiswapSwapDTO.timestamp == null : this.timestamp.equals(sushiswapSwapDTO.timestamp)) &&
        (this.pair == null ? sushiswapSwapDTO.pair == null : this.pair.equals(sushiswapSwapDTO.pair)) &&
        (this.sender == null ? sushiswapSwapDTO.sender == null : this.sender.equals(sushiswapSwapDTO.sender)) &&
        (this.amount0In == null ? sushiswapSwapDTO.amount0In == null : this.amount0In.equals(sushiswapSwapDTO.amount0In)) &&
        (this.amount1In == null ? sushiswapSwapDTO.amount1In == null : this.amount1In.equals(sushiswapSwapDTO.amount1In)) &&
        (this.amount0Out == null ? sushiswapSwapDTO.amount0Out == null : this.amount0Out.equals(sushiswapSwapDTO.amount0Out)) &&
        (this.amount1Out == null ? sushiswapSwapDTO.amount1Out == null : this.amount1Out.equals(sushiswapSwapDTO.amount1Out)) &&
        (this.to == null ? sushiswapSwapDTO.to == null : this.to.equals(sushiswapSwapDTO.to)) &&
        (this.logIndex == null ? sushiswapSwapDTO.logIndex == null : this.logIndex.equals(sushiswapSwapDTO.logIndex)) &&
        (this.amountUsd == null ? sushiswapSwapDTO.amountUsd == null : this.amountUsd.equals(sushiswapSwapDTO.amountUsd)) &&
        (this.vid == null ? sushiswapSwapDTO.vid == null : this.vid.equals(sushiswapSwapDTO.vid)) &&
        (this.poolId == null ? sushiswapSwapDTO.poolId == null : this.poolId.equals(sushiswapSwapDTO.poolId)) &&
        (this.transactionId == null ? sushiswapSwapDTO.transactionId == null : this.transactionId.equals(sushiswapSwapDTO.transactionId)) &&
        (this.evaluatedPrice == null ? sushiswapSwapDTO.evaluatedPrice == null : this.evaluatedPrice.equals(sushiswapSwapDTO.evaluatedPrice)) &&
        (this.evaluatedAmount == null ? sushiswapSwapDTO.evaluatedAmount == null : this.evaluatedAmount.equals(sushiswapSwapDTO.evaluatedAmount)) &&
        (this.evaluatedAggressor == null ? sushiswapSwapDTO.evaluatedAggressor == null : this.evaluatedAggressor.equals(sushiswapSwapDTO.evaluatedAggressor));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.entryTime == null ? 0: this.entryTime.hashCode());
    result = 31 * result + (this.recvTime == null ? 0: this.recvTime.hashCode());
    result = 31 * result + (this.blockNumber == null ? 0: this.blockNumber.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.transaction == null ? 0: this.transaction.hashCode());
    result = 31 * result + (this.timestamp == null ? 0: this.timestamp.hashCode());
    result = 31 * result + (this.pair == null ? 0: this.pair.hashCode());
    result = 31 * result + (this.sender == null ? 0: this.sender.hashCode());
    result = 31 * result + (this.amount0In == null ? 0: this.amount0In.hashCode());
    result = 31 * result + (this.amount1In == null ? 0: this.amount1In.hashCode());
    result = 31 * result + (this.amount0Out == null ? 0: this.amount0Out.hashCode());
    result = 31 * result + (this.amount1Out == null ? 0: this.amount1Out.hashCode());
    result = 31 * result + (this.to == null ? 0: this.to.hashCode());
    result = 31 * result + (this.logIndex == null ? 0: this.logIndex.hashCode());
    result = 31 * result + (this.amountUsd == null ? 0: this.amountUsd.hashCode());
    result = 31 * result + (this.vid == null ? 0: this.vid.hashCode());
    result = 31 * result + (this.poolId == null ? 0: this.poolId.hashCode());
    result = 31 * result + (this.transactionId == null ? 0: this.transactionId.hashCode());
    result = 31 * result + (this.evaluatedPrice == null ? 0: this.evaluatedPrice.hashCode());
    result = 31 * result + (this.evaluatedAmount == null ? 0: this.evaluatedAmount.hashCode());
    result = 31 * result + (this.evaluatedAggressor == null ? 0: this.evaluatedAggressor.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SushiswapSwapDTO {\n");
    
    sb.append("  entryTime: ").append(entryTime).append("\n");
    sb.append("  recvTime: ").append(recvTime).append("\n");
    sb.append("  blockNumber: ").append(blockNumber).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  transaction: ").append(transaction).append("\n");
    sb.append("  timestamp: ").append(timestamp).append("\n");
    sb.append("  pair: ").append(pair).append("\n");
    sb.append("  sender: ").append(sender).append("\n");
    sb.append("  amount0In: ").append(amount0In).append("\n");
    sb.append("  amount1In: ").append(amount1In).append("\n");
    sb.append("  amount0Out: ").append(amount0Out).append("\n");
    sb.append("  amount1Out: ").append(amount1Out).append("\n");
    sb.append("  to: ").append(to).append("\n");
    sb.append("  logIndex: ").append(logIndex).append("\n");
    sb.append("  amountUsd: ").append(amountUsd).append("\n");
    sb.append("  vid: ").append(vid).append("\n");
    sb.append("  poolId: ").append(poolId).append("\n");
    sb.append("  transactionId: ").append(transactionId).append("\n");
    sb.append("  evaluatedPrice: ").append(evaluatedPrice).append("\n");
    sb.append("  evaluatedAmount: ").append(evaluatedAmount).append("\n");
    sb.append("  evaluatedAggressor: ").append(evaluatedAggressor).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
