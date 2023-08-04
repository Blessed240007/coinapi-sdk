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

import java.util.*;
import java.util.Date;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * 
 **/
@ApiModel(description = "")
public class UNISWAPV3ETHEREUMWithdrawDTO {
  
  @SerializedName("entry_time")
  private Date entryTime = null;
  @SerializedName("recv_time")
  private Date recvTime = null;
  @SerializedName("block_number")
  private Long blockNumber = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("hash")
  private String hash = null;
  @SerializedName("nonce")
  private String nonce = null;
  @SerializedName("log_index")
  private Integer logIndex = null;
  @SerializedName("gas_limit")
  private String gasLimit = null;
  @SerializedName("gas_used")
  private String gasUsed = null;
  @SerializedName("gas_price")
  private String gasPrice = null;
  @SerializedName("protocol")
  private String protocol = null;
  @SerializedName("account")
  private String account = null;
  @SerializedName("position")
  private String position = null;
  @SerializedName("tick_lower")
  private String tickLower = null;
  @SerializedName("tick_upper")
  private String tickUpper = null;
  @SerializedName("pool")
  private String pool = null;
  @SerializedName("timestamp")
  private String timestamp = null;
  @SerializedName("liquidity")
  private String liquidity = null;
  @SerializedName("input_tokens")
  private List<String> inputTokens = null;
  @SerializedName("input_token_amounts")
  private List<String> inputTokenAmounts = null;
  @SerializedName("reserve_amounts")
  private List<String> reserveAmounts = null;
  @SerializedName("amount_usd")
  private String amountUsd = null;

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
   * (transaction hash)-{ Log index }
   **/
  @ApiModelProperty(value = "(transaction hash)-{ Log index }")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   * Transaction hash of the transaction that emitted this event
   **/
  @ApiModelProperty(value = "Transaction hash of the transaction that emitted this event")
  public String getHash() {
    return hash;
  }
  public void setHash(String hash) {
    this.hash = hash;
  }

  /**
   * Nonce of the transaction that emitted this event
   **/
  @ApiModelProperty(value = "Nonce of the transaction that emitted this event")
  public String getNonce() {
    return nonce;
  }
  public void setNonce(String nonce) {
    this.nonce = nonce;
  }

  /**
   * Event log index. For transactions that don't emit event, create arbitrary index starting from 0
   **/
  @ApiModelProperty(value = "Event log index. For transactions that don't emit event, create arbitrary index starting from 0")
  public Integer getLogIndex() {
    return logIndex;
  }
  public void setLogIndex(Integer logIndex) {
    this.logIndex = logIndex;
  }

  /**
   * Gas limit of the transaction that emitted this event
   **/
  @ApiModelProperty(value = "Gas limit of the transaction that emitted this event")
  public String getGasLimit() {
    return gasLimit;
  }
  public void setGasLimit(String gasLimit) {
    this.gasLimit = gasLimit;
  }

  /**
   * Gas used in this transaction. (Optional because not every chain will support this)
   **/
  @ApiModelProperty(value = "Gas used in this transaction. (Optional because not every chain will support this)")
  public String getGasUsed() {
    return gasUsed;
  }
  public void setGasUsed(String gasUsed) {
    this.gasUsed = gasUsed;
  }

  /**
   * Gas price of the transaction that emitted this event
   **/
  @ApiModelProperty(value = "Gas price of the transaction that emitted this event")
  public String getGasPrice() {
    return gasPrice;
  }
  public void setGasPrice(String gasPrice) {
    this.gasPrice = gasPrice;
  }

  /**
   * The protocol this transaction belongs to
   **/
  @ApiModelProperty(value = "The protocol this transaction belongs to")
  public String getProtocol() {
    return protocol;
  }
  public void setProtocol(String protocol) {
    this.protocol = protocol;
  }

  /**
   * Account that emitted this event
   **/
  @ApiModelProperty(value = "Account that emitted this event")
  public String getAccount() {
    return account;
  }
  public void setAccount(String account) {
    this.account = account;
  }

  /**
   * The user position changed by this event
   **/
  @ApiModelProperty(value = "The user position changed by this event")
  public String getPosition() {
    return position;
  }
  public void setPosition(String position) {
    this.position = position;
  }

  /**
   * lower tick of position
   **/
  @ApiModelProperty(value = "lower tick of position")
  public String getTickLower() {
    return tickLower;
  }
  public void setTickLower(String tickLower) {
    this.tickLower = tickLower;
  }

  /**
   * upper tick of position
   **/
  @ApiModelProperty(value = "upper tick of position")
  public String getTickUpper() {
    return tickUpper;
  }
  public void setTickUpper(String tickUpper) {
    this.tickUpper = tickUpper;
  }

  /**
   * The pool involving this event
   **/
  @ApiModelProperty(value = "The pool involving this event")
  public String getPool() {
    return pool;
  }
  public void setPool(String pool) {
    this.pool = pool;
  }

  /**
   * Timestamp of this event
   **/
  @ApiModelProperty(value = "Timestamp of this event")
  public String getTimestamp() {
    return timestamp;
  }
  public void setTimestamp(String timestamp) {
    this.timestamp = timestamp;
  }

  /**
   * Amount of liquidity burned
   **/
  @ApiModelProperty(value = "Amount of liquidity burned")
  public String getLiquidity() {
    return liquidity;
  }
  public void setLiquidity(String liquidity) {
    this.liquidity = liquidity;
  }

  /**
   * Input tokens of the pool (not input tokens of the event/transaction). E.g. WETH and USDC from a WETH-USDC pool
   **/
  @ApiModelProperty(value = "Input tokens of the pool (not input tokens of the event/transaction). E.g. WETH and USDC from a WETH-USDC pool")
  public List<String> getInputTokens() {
    return inputTokens;
  }
  public void setInputTokens(List<String> inputTokens) {
    this.inputTokens = inputTokens;
  }

  /**
   * Amount of input tokens in the token's native unit
   **/
  @ApiModelProperty(value = "Amount of input tokens in the token's native unit")
  public List<String> getInputTokenAmounts() {
    return inputTokenAmounts;
  }
  public void setInputTokenAmounts(List<String> inputTokenAmounts) {
    this.inputTokenAmounts = inputTokenAmounts;
  }

  /**
   * Amount of input tokens in the liquidity pool
   **/
  @ApiModelProperty(value = "Amount of input tokens in the liquidity pool")
  public List<String> getReserveAmounts() {
    return reserveAmounts;
  }
  public void setReserveAmounts(List<String> reserveAmounts) {
    this.reserveAmounts = reserveAmounts;
  }

  /**
   * USD-normalized value of the transaction of the underlying (e.g. sum of tokens withdrawn from a pool)
   **/
  @ApiModelProperty(value = "USD-normalized value of the transaction of the underlying (e.g. sum of tokens withdrawn from a pool)")
  public String getAmountUsd() {
    return amountUsd;
  }
  public void setAmountUsd(String amountUsd) {
    this.amountUsd = amountUsd;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UNISWAPV3ETHEREUMWithdrawDTO uNISWAPV3ETHEREUMWithdrawDTO = (UNISWAPV3ETHEREUMWithdrawDTO) o;
    return (this.entryTime == null ? uNISWAPV3ETHEREUMWithdrawDTO.entryTime == null : this.entryTime.equals(uNISWAPV3ETHEREUMWithdrawDTO.entryTime)) &&
        (this.recvTime == null ? uNISWAPV3ETHEREUMWithdrawDTO.recvTime == null : this.recvTime.equals(uNISWAPV3ETHEREUMWithdrawDTO.recvTime)) &&
        (this.blockNumber == null ? uNISWAPV3ETHEREUMWithdrawDTO.blockNumber == null : this.blockNumber.equals(uNISWAPV3ETHEREUMWithdrawDTO.blockNumber)) &&
        (this.id == null ? uNISWAPV3ETHEREUMWithdrawDTO.id == null : this.id.equals(uNISWAPV3ETHEREUMWithdrawDTO.id)) &&
        (this.hash == null ? uNISWAPV3ETHEREUMWithdrawDTO.hash == null : this.hash.equals(uNISWAPV3ETHEREUMWithdrawDTO.hash)) &&
        (this.nonce == null ? uNISWAPV3ETHEREUMWithdrawDTO.nonce == null : this.nonce.equals(uNISWAPV3ETHEREUMWithdrawDTO.nonce)) &&
        (this.logIndex == null ? uNISWAPV3ETHEREUMWithdrawDTO.logIndex == null : this.logIndex.equals(uNISWAPV3ETHEREUMWithdrawDTO.logIndex)) &&
        (this.gasLimit == null ? uNISWAPV3ETHEREUMWithdrawDTO.gasLimit == null : this.gasLimit.equals(uNISWAPV3ETHEREUMWithdrawDTO.gasLimit)) &&
        (this.gasUsed == null ? uNISWAPV3ETHEREUMWithdrawDTO.gasUsed == null : this.gasUsed.equals(uNISWAPV3ETHEREUMWithdrawDTO.gasUsed)) &&
        (this.gasPrice == null ? uNISWAPV3ETHEREUMWithdrawDTO.gasPrice == null : this.gasPrice.equals(uNISWAPV3ETHEREUMWithdrawDTO.gasPrice)) &&
        (this.protocol == null ? uNISWAPV3ETHEREUMWithdrawDTO.protocol == null : this.protocol.equals(uNISWAPV3ETHEREUMWithdrawDTO.protocol)) &&
        (this.account == null ? uNISWAPV3ETHEREUMWithdrawDTO.account == null : this.account.equals(uNISWAPV3ETHEREUMWithdrawDTO.account)) &&
        (this.position == null ? uNISWAPV3ETHEREUMWithdrawDTO.position == null : this.position.equals(uNISWAPV3ETHEREUMWithdrawDTO.position)) &&
        (this.tickLower == null ? uNISWAPV3ETHEREUMWithdrawDTO.tickLower == null : this.tickLower.equals(uNISWAPV3ETHEREUMWithdrawDTO.tickLower)) &&
        (this.tickUpper == null ? uNISWAPV3ETHEREUMWithdrawDTO.tickUpper == null : this.tickUpper.equals(uNISWAPV3ETHEREUMWithdrawDTO.tickUpper)) &&
        (this.pool == null ? uNISWAPV3ETHEREUMWithdrawDTO.pool == null : this.pool.equals(uNISWAPV3ETHEREUMWithdrawDTO.pool)) &&
        (this.timestamp == null ? uNISWAPV3ETHEREUMWithdrawDTO.timestamp == null : this.timestamp.equals(uNISWAPV3ETHEREUMWithdrawDTO.timestamp)) &&
        (this.liquidity == null ? uNISWAPV3ETHEREUMWithdrawDTO.liquidity == null : this.liquidity.equals(uNISWAPV3ETHEREUMWithdrawDTO.liquidity)) &&
        (this.inputTokens == null ? uNISWAPV3ETHEREUMWithdrawDTO.inputTokens == null : this.inputTokens.equals(uNISWAPV3ETHEREUMWithdrawDTO.inputTokens)) &&
        (this.inputTokenAmounts == null ? uNISWAPV3ETHEREUMWithdrawDTO.inputTokenAmounts == null : this.inputTokenAmounts.equals(uNISWAPV3ETHEREUMWithdrawDTO.inputTokenAmounts)) &&
        (this.reserveAmounts == null ? uNISWAPV3ETHEREUMWithdrawDTO.reserveAmounts == null : this.reserveAmounts.equals(uNISWAPV3ETHEREUMWithdrawDTO.reserveAmounts)) &&
        (this.amountUsd == null ? uNISWAPV3ETHEREUMWithdrawDTO.amountUsd == null : this.amountUsd.equals(uNISWAPV3ETHEREUMWithdrawDTO.amountUsd));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.entryTime == null ? 0: this.entryTime.hashCode());
    result = 31 * result + (this.recvTime == null ? 0: this.recvTime.hashCode());
    result = 31 * result + (this.blockNumber == null ? 0: this.blockNumber.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.hash == null ? 0: this.hash.hashCode());
    result = 31 * result + (this.nonce == null ? 0: this.nonce.hashCode());
    result = 31 * result + (this.logIndex == null ? 0: this.logIndex.hashCode());
    result = 31 * result + (this.gasLimit == null ? 0: this.gasLimit.hashCode());
    result = 31 * result + (this.gasUsed == null ? 0: this.gasUsed.hashCode());
    result = 31 * result + (this.gasPrice == null ? 0: this.gasPrice.hashCode());
    result = 31 * result + (this.protocol == null ? 0: this.protocol.hashCode());
    result = 31 * result + (this.account == null ? 0: this.account.hashCode());
    result = 31 * result + (this.position == null ? 0: this.position.hashCode());
    result = 31 * result + (this.tickLower == null ? 0: this.tickLower.hashCode());
    result = 31 * result + (this.tickUpper == null ? 0: this.tickUpper.hashCode());
    result = 31 * result + (this.pool == null ? 0: this.pool.hashCode());
    result = 31 * result + (this.timestamp == null ? 0: this.timestamp.hashCode());
    result = 31 * result + (this.liquidity == null ? 0: this.liquidity.hashCode());
    result = 31 * result + (this.inputTokens == null ? 0: this.inputTokens.hashCode());
    result = 31 * result + (this.inputTokenAmounts == null ? 0: this.inputTokenAmounts.hashCode());
    result = 31 * result + (this.reserveAmounts == null ? 0: this.reserveAmounts.hashCode());
    result = 31 * result + (this.amountUsd == null ? 0: this.amountUsd.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class UNISWAPV3ETHEREUMWithdrawDTO {\n");
    
    sb.append("  entryTime: ").append(entryTime).append("\n");
    sb.append("  recvTime: ").append(recvTime).append("\n");
    sb.append("  blockNumber: ").append(blockNumber).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  hash: ").append(hash).append("\n");
    sb.append("  nonce: ").append(nonce).append("\n");
    sb.append("  logIndex: ").append(logIndex).append("\n");
    sb.append("  gasLimit: ").append(gasLimit).append("\n");
    sb.append("  gasUsed: ").append(gasUsed).append("\n");
    sb.append("  gasPrice: ").append(gasPrice).append("\n");
    sb.append("  protocol: ").append(protocol).append("\n");
    sb.append("  account: ").append(account).append("\n");
    sb.append("  position: ").append(position).append("\n");
    sb.append("  tickLower: ").append(tickLower).append("\n");
    sb.append("  tickUpper: ").append(tickUpper).append("\n");
    sb.append("  pool: ").append(pool).append("\n");
    sb.append("  timestamp: ").append(timestamp).append("\n");
    sb.append("  liquidity: ").append(liquidity).append("\n");
    sb.append("  inputTokens: ").append(inputTokens).append("\n");
    sb.append("  inputTokenAmounts: ").append(inputTokenAmounts).append("\n");
    sb.append("  reserveAmounts: ").append(reserveAmounts).append("\n");
    sb.append("  amountUsd: ").append(amountUsd).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
