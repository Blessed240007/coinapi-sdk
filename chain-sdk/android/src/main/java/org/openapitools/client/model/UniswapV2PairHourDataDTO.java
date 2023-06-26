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
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * Tracks pair data across each hour.
 **/
@ApiModel(description = "Tracks pair data across each hour.")
public class UniswapV2PairHourDataDTO {
  
  @SerializedName("entry_time")
  private Date entryTime = null;
  @SerializedName("recv_time")
  private Date recvTime = null;
  @SerializedName("block_number")
  private Long blockNumber = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("hour_start_unix")
  private Integer hourStartUnix = null;
  @SerializedName("pair")
  private String pair = null;
  @SerializedName("reserve_0")
  private String reserve0 = null;
  @SerializedName("reserve_1")
  private String reserve1 = null;
  @SerializedName("total_supply")
  private String totalSupply = null;
  @SerializedName("reserve_usd")
  private String reserveUsd = null;
  @SerializedName("hourly_volume_token_0")
  private String hourlyVolumeToken0 = null;
  @SerializedName("hourly_volume_token_1")
  private String hourlyVolumeToken1 = null;
  @SerializedName("hourly_volume_usd")
  private String hourlyVolumeUsd = null;
  @SerializedName("hourly_txns")
  private String hourlyTxns = null;
  @SerializedName("vid")
  private Long vid = null;

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
   * 
   **/
  @ApiModelProperty(value = "")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   * Unix timestamp for start of hour.
   **/
  @ApiModelProperty(value = "Unix timestamp for start of hour.")
  public Integer getHourStartUnix() {
    return hourStartUnix;
  }
  public void setHourStartUnix(Integer hourStartUnix) {
    this.hourStartUnix = hourStartUnix;
  }

  /**
   * Address for pair contract.
   **/
  @ApiModelProperty(value = "Address for pair contract.")
  public String getPair() {
    return pair;
  }
  public void setPair(String pair) {
    this.pair = pair;
  }

  /**
   * Reserve of token0 (updated during each transaction on pair).
   **/
  @ApiModelProperty(value = "Reserve of token0 (updated during each transaction on pair).")
  public String getReserve0() {
    return reserve0;
  }
  public void setReserve0(String reserve0) {
    this.reserve0 = reserve0;
  }

  /**
   * Reserve of token1 (updated during each transaction on pair).
   **/
  @ApiModelProperty(value = "Reserve of token1 (updated during each transaction on pair).")
  public String getReserve1() {
    return reserve1;
  }
  public void setReserve1(String reserve1) {
    this.reserve1 = reserve1;
  }

  /**
   * Total supply of liquidity token distributed to LPs.
   **/
  @ApiModelProperty(value = "Total supply of liquidity token distributed to LPs.")
  public String getTotalSupply() {
    return totalSupply;
  }
  public void setTotalSupply(String totalSupply) {
    this.totalSupply = totalSupply;
  }

  /**
   * Reserve of token0 plus token1 stored as a derived USD amount.
   **/
  @ApiModelProperty(value = "Reserve of token0 plus token1 stored as a derived USD amount.")
  public String getReserveUsd() {
    return reserveUsd;
  }
  public void setReserveUsd(String reserveUsd) {
    this.reserveUsd = reserveUsd;
  }

  /**
   * Total amount of token0 swapped throughout hour.
   **/
  @ApiModelProperty(value = "Total amount of token0 swapped throughout hour.")
  public String getHourlyVolumeToken0() {
    return hourlyVolumeToken0;
  }
  public void setHourlyVolumeToken0(String hourlyVolumeToken0) {
    this.hourlyVolumeToken0 = hourlyVolumeToken0;
  }

  /**
   * Total amount of token1 swapped throughout hour.
   **/
  @ApiModelProperty(value = "Total amount of token1 swapped throughout hour.")
  public String getHourlyVolumeToken1() {
    return hourlyVolumeToken1;
  }
  public void setHourlyVolumeToken1(String hourlyVolumeToken1) {
    this.hourlyVolumeToken1 = hourlyVolumeToken1;
  }

  /**
   * Total volume within pair throughout hour.
   **/
  @ApiModelProperty(value = "Total volume within pair throughout hour.")
  public String getHourlyVolumeUsd() {
    return hourlyVolumeUsd;
  }
  public void setHourlyVolumeUsd(String hourlyVolumeUsd) {
    this.hourlyVolumeUsd = hourlyVolumeUsd;
  }

  /**
   * Amount of transactions on pair throughout hour.
   **/
  @ApiModelProperty(value = "Amount of transactions on pair throughout hour.")
  public String getHourlyTxns() {
    return hourlyTxns;
  }
  public void setHourlyTxns(String hourlyTxns) {
    this.hourlyTxns = hourlyTxns;
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


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UniswapV2PairHourDataDTO uniswapV2PairHourDataDTO = (UniswapV2PairHourDataDTO) o;
    return (this.entryTime == null ? uniswapV2PairHourDataDTO.entryTime == null : this.entryTime.equals(uniswapV2PairHourDataDTO.entryTime)) &&
        (this.recvTime == null ? uniswapV2PairHourDataDTO.recvTime == null : this.recvTime.equals(uniswapV2PairHourDataDTO.recvTime)) &&
        (this.blockNumber == null ? uniswapV2PairHourDataDTO.blockNumber == null : this.blockNumber.equals(uniswapV2PairHourDataDTO.blockNumber)) &&
        (this.id == null ? uniswapV2PairHourDataDTO.id == null : this.id.equals(uniswapV2PairHourDataDTO.id)) &&
        (this.hourStartUnix == null ? uniswapV2PairHourDataDTO.hourStartUnix == null : this.hourStartUnix.equals(uniswapV2PairHourDataDTO.hourStartUnix)) &&
        (this.pair == null ? uniswapV2PairHourDataDTO.pair == null : this.pair.equals(uniswapV2PairHourDataDTO.pair)) &&
        (this.reserve0 == null ? uniswapV2PairHourDataDTO.reserve0 == null : this.reserve0.equals(uniswapV2PairHourDataDTO.reserve0)) &&
        (this.reserve1 == null ? uniswapV2PairHourDataDTO.reserve1 == null : this.reserve1.equals(uniswapV2PairHourDataDTO.reserve1)) &&
        (this.totalSupply == null ? uniswapV2PairHourDataDTO.totalSupply == null : this.totalSupply.equals(uniswapV2PairHourDataDTO.totalSupply)) &&
        (this.reserveUsd == null ? uniswapV2PairHourDataDTO.reserveUsd == null : this.reserveUsd.equals(uniswapV2PairHourDataDTO.reserveUsd)) &&
        (this.hourlyVolumeToken0 == null ? uniswapV2PairHourDataDTO.hourlyVolumeToken0 == null : this.hourlyVolumeToken0.equals(uniswapV2PairHourDataDTO.hourlyVolumeToken0)) &&
        (this.hourlyVolumeToken1 == null ? uniswapV2PairHourDataDTO.hourlyVolumeToken1 == null : this.hourlyVolumeToken1.equals(uniswapV2PairHourDataDTO.hourlyVolumeToken1)) &&
        (this.hourlyVolumeUsd == null ? uniswapV2PairHourDataDTO.hourlyVolumeUsd == null : this.hourlyVolumeUsd.equals(uniswapV2PairHourDataDTO.hourlyVolumeUsd)) &&
        (this.hourlyTxns == null ? uniswapV2PairHourDataDTO.hourlyTxns == null : this.hourlyTxns.equals(uniswapV2PairHourDataDTO.hourlyTxns)) &&
        (this.vid == null ? uniswapV2PairHourDataDTO.vid == null : this.vid.equals(uniswapV2PairHourDataDTO.vid));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.entryTime == null ? 0: this.entryTime.hashCode());
    result = 31 * result + (this.recvTime == null ? 0: this.recvTime.hashCode());
    result = 31 * result + (this.blockNumber == null ? 0: this.blockNumber.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.hourStartUnix == null ? 0: this.hourStartUnix.hashCode());
    result = 31 * result + (this.pair == null ? 0: this.pair.hashCode());
    result = 31 * result + (this.reserve0 == null ? 0: this.reserve0.hashCode());
    result = 31 * result + (this.reserve1 == null ? 0: this.reserve1.hashCode());
    result = 31 * result + (this.totalSupply == null ? 0: this.totalSupply.hashCode());
    result = 31 * result + (this.reserveUsd == null ? 0: this.reserveUsd.hashCode());
    result = 31 * result + (this.hourlyVolumeToken0 == null ? 0: this.hourlyVolumeToken0.hashCode());
    result = 31 * result + (this.hourlyVolumeToken1 == null ? 0: this.hourlyVolumeToken1.hashCode());
    result = 31 * result + (this.hourlyVolumeUsd == null ? 0: this.hourlyVolumeUsd.hashCode());
    result = 31 * result + (this.hourlyTxns == null ? 0: this.hourlyTxns.hashCode());
    result = 31 * result + (this.vid == null ? 0: this.vid.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class UniswapV2PairHourDataDTO {\n");
    
    sb.append("  entryTime: ").append(entryTime).append("\n");
    sb.append("  recvTime: ").append(recvTime).append("\n");
    sb.append("  blockNumber: ").append(blockNumber).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  hourStartUnix: ").append(hourStartUnix).append("\n");
    sb.append("  pair: ").append(pair).append("\n");
    sb.append("  reserve0: ").append(reserve0).append("\n");
    sb.append("  reserve1: ").append(reserve1).append("\n");
    sb.append("  totalSupply: ").append(totalSupply).append("\n");
    sb.append("  reserveUsd: ").append(reserveUsd).append("\n");
    sb.append("  hourlyVolumeToken0: ").append(hourlyVolumeToken0).append("\n");
    sb.append("  hourlyVolumeToken1: ").append(hourlyVolumeToken1).append("\n");
    sb.append("  hourlyVolumeUsd: ").append(hourlyVolumeUsd).append("\n");
    sb.append("  hourlyTxns: ").append(hourlyTxns).append("\n");
    sb.append("  vid: ").append(vid).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
