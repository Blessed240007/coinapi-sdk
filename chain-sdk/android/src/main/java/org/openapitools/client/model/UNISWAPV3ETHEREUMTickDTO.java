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
public class UNISWAPV3ETHEREUMTickDTO {
  
  @SerializedName("entry_time")
  private Date entryTime = null;
  @SerializedName("recv_time")
  private Date recvTime = null;
  @SerializedName("block_number")
  private Long blockNumber = null;
  @SerializedName("vid")
  private Long vid = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("index")
  private String index = null;
  @SerializedName("pool")
  private String pool = null;
  @SerializedName("created_timestamp")
  private String createdTimestamp = null;
  @SerializedName("created_block_number")
  private String createdBlockNumber = null;
  @SerializedName("prices")
  private List<String> prices = null;
  @SerializedName("liquidity_gross")
  private String liquidityGross = null;
  @SerializedName("liquidity_gross_usd")
  private String liquidityGrossUsd = null;
  @SerializedName("liquidity_net")
  private String liquidityNet = null;
  @SerializedName("liquidity_net_usd")
  private String liquidityNetUsd = null;
  @SerializedName("last_snapshot_day_id")
  private Integer lastSnapshotDayId = null;
  @SerializedName("last_snapshot_hour_id")
  private Integer lastSnapshotHourId = null;
  @SerializedName("last_update_timestamp")
  private String lastUpdateTimestamp = null;
  @SerializedName("last_update_block_number")
  private String lastUpdateBlockNumber = null;

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
  public Long getVid() {
    return vid;
  }
  public void setVid(Long vid) {
    this.vid = vid;
  }

  /**
   * (pool address)-(tick index)
   **/
  @ApiModelProperty(value = "(pool address)-(tick index)")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   * tick index
   **/
  @ApiModelProperty(value = "tick index")
  public String getIndex() {
    return index;
  }
  public void setIndex(String index) {
    this.index = index;
  }

  /**
   * Liquidity pool this tick belongs to
   **/
  @ApiModelProperty(value = "Liquidity pool this tick belongs to")
  public String getPool() {
    return pool;
  }
  public void setPool(String pool) {
    this.pool = pool;
  }

  /**
   * Creation timestamp
   **/
  @ApiModelProperty(value = "Creation timestamp")
  public String getCreatedTimestamp() {
    return createdTimestamp;
  }
  public void setCreatedTimestamp(String createdTimestamp) {
    this.createdTimestamp = createdTimestamp;
  }

  /**
   * Creation block number
   **/
  @ApiModelProperty(value = "Creation block number")
  public String getCreatedBlockNumber() {
    return createdBlockNumber;
  }
  public void setCreatedBlockNumber(String createdBlockNumber) {
    this.createdBlockNumber = createdBlockNumber;
  }

  /**
   * calculated price of token0 of tick within this pool - constant
   **/
  @ApiModelProperty(value = "calculated price of token0 of tick within this pool - constant")
  public List<String> getPrices() {
    return prices;
  }
  public void setPrices(List<String> prices) {
    this.prices = prices;
  }

  /**
   * total liquidity pool has as tick lower or upper
   **/
  @ApiModelProperty(value = "total liquidity pool has as tick lower or upper")
  public String getLiquidityGross() {
    return liquidityGross;
  }
  public void setLiquidityGross(String liquidityGross) {
    this.liquidityGross = liquidityGross;
  }

  /**
   * total liquidity in USD pool has as tick lower or upper
   **/
  @ApiModelProperty(value = "total liquidity in USD pool has as tick lower or upper")
  public String getLiquidityGrossUsd() {
    return liquidityGrossUsd;
  }
  public void setLiquidityGrossUsd(String liquidityGrossUsd) {
    this.liquidityGrossUsd = liquidityGrossUsd;
  }

  /**
   * how much liquidity changes when tick crossed
   **/
  @ApiModelProperty(value = "how much liquidity changes when tick crossed")
  public String getLiquidityNet() {
    return liquidityNet;
  }
  public void setLiquidityNet(String liquidityNet) {
    this.liquidityNet = liquidityNet;
  }

  /**
   * how much liquidity in USD changes when tick crossed
   **/
  @ApiModelProperty(value = "how much liquidity in USD changes when tick crossed")
  public String getLiquidityNetUsd() {
    return liquidityNetUsd;
  }
  public void setLiquidityNetUsd(String liquidityNetUsd) {
    this.liquidityNetUsd = liquidityNetUsd;
  }

  /**
   * Day ID of the most recent daily snapshot
   **/
  @ApiModelProperty(value = "Day ID of the most recent daily snapshot")
  public Integer getLastSnapshotDayId() {
    return lastSnapshotDayId;
  }
  public void setLastSnapshotDayId(Integer lastSnapshotDayId) {
    this.lastSnapshotDayId = lastSnapshotDayId;
  }

  /**
   * Hour ID of the most recent hourly snapshot
   **/
  @ApiModelProperty(value = "Hour ID of the most recent hourly snapshot")
  public Integer getLastSnapshotHourId() {
    return lastSnapshotHourId;
  }
  public void setLastSnapshotHourId(Integer lastSnapshotHourId) {
    this.lastSnapshotHourId = lastSnapshotHourId;
  }

  /**
   * Timestamp of the last time this entity was updated
   **/
  @ApiModelProperty(value = "Timestamp of the last time this entity was updated")
  public String getLastUpdateTimestamp() {
    return lastUpdateTimestamp;
  }
  public void setLastUpdateTimestamp(String lastUpdateTimestamp) {
    this.lastUpdateTimestamp = lastUpdateTimestamp;
  }

  /**
   * Block number of the last time this entity was updated
   **/
  @ApiModelProperty(value = "Block number of the last time this entity was updated")
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
    UNISWAPV3ETHEREUMTickDTO uNISWAPV3ETHEREUMTickDTO = (UNISWAPV3ETHEREUMTickDTO) o;
    return (this.entryTime == null ? uNISWAPV3ETHEREUMTickDTO.entryTime == null : this.entryTime.equals(uNISWAPV3ETHEREUMTickDTO.entryTime)) &&
        (this.recvTime == null ? uNISWAPV3ETHEREUMTickDTO.recvTime == null : this.recvTime.equals(uNISWAPV3ETHEREUMTickDTO.recvTime)) &&
        (this.blockNumber == null ? uNISWAPV3ETHEREUMTickDTO.blockNumber == null : this.blockNumber.equals(uNISWAPV3ETHEREUMTickDTO.blockNumber)) &&
        (this.vid == null ? uNISWAPV3ETHEREUMTickDTO.vid == null : this.vid.equals(uNISWAPV3ETHEREUMTickDTO.vid)) &&
        (this.id == null ? uNISWAPV3ETHEREUMTickDTO.id == null : this.id.equals(uNISWAPV3ETHEREUMTickDTO.id)) &&
        (this.index == null ? uNISWAPV3ETHEREUMTickDTO.index == null : this.index.equals(uNISWAPV3ETHEREUMTickDTO.index)) &&
        (this.pool == null ? uNISWAPV3ETHEREUMTickDTO.pool == null : this.pool.equals(uNISWAPV3ETHEREUMTickDTO.pool)) &&
        (this.createdTimestamp == null ? uNISWAPV3ETHEREUMTickDTO.createdTimestamp == null : this.createdTimestamp.equals(uNISWAPV3ETHEREUMTickDTO.createdTimestamp)) &&
        (this.createdBlockNumber == null ? uNISWAPV3ETHEREUMTickDTO.createdBlockNumber == null : this.createdBlockNumber.equals(uNISWAPV3ETHEREUMTickDTO.createdBlockNumber)) &&
        (this.prices == null ? uNISWAPV3ETHEREUMTickDTO.prices == null : this.prices.equals(uNISWAPV3ETHEREUMTickDTO.prices)) &&
        (this.liquidityGross == null ? uNISWAPV3ETHEREUMTickDTO.liquidityGross == null : this.liquidityGross.equals(uNISWAPV3ETHEREUMTickDTO.liquidityGross)) &&
        (this.liquidityGrossUsd == null ? uNISWAPV3ETHEREUMTickDTO.liquidityGrossUsd == null : this.liquidityGrossUsd.equals(uNISWAPV3ETHEREUMTickDTO.liquidityGrossUsd)) &&
        (this.liquidityNet == null ? uNISWAPV3ETHEREUMTickDTO.liquidityNet == null : this.liquidityNet.equals(uNISWAPV3ETHEREUMTickDTO.liquidityNet)) &&
        (this.liquidityNetUsd == null ? uNISWAPV3ETHEREUMTickDTO.liquidityNetUsd == null : this.liquidityNetUsd.equals(uNISWAPV3ETHEREUMTickDTO.liquidityNetUsd)) &&
        (this.lastSnapshotDayId == null ? uNISWAPV3ETHEREUMTickDTO.lastSnapshotDayId == null : this.lastSnapshotDayId.equals(uNISWAPV3ETHEREUMTickDTO.lastSnapshotDayId)) &&
        (this.lastSnapshotHourId == null ? uNISWAPV3ETHEREUMTickDTO.lastSnapshotHourId == null : this.lastSnapshotHourId.equals(uNISWAPV3ETHEREUMTickDTO.lastSnapshotHourId)) &&
        (this.lastUpdateTimestamp == null ? uNISWAPV3ETHEREUMTickDTO.lastUpdateTimestamp == null : this.lastUpdateTimestamp.equals(uNISWAPV3ETHEREUMTickDTO.lastUpdateTimestamp)) &&
        (this.lastUpdateBlockNumber == null ? uNISWAPV3ETHEREUMTickDTO.lastUpdateBlockNumber == null : this.lastUpdateBlockNumber.equals(uNISWAPV3ETHEREUMTickDTO.lastUpdateBlockNumber));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.entryTime == null ? 0: this.entryTime.hashCode());
    result = 31 * result + (this.recvTime == null ? 0: this.recvTime.hashCode());
    result = 31 * result + (this.blockNumber == null ? 0: this.blockNumber.hashCode());
    result = 31 * result + (this.vid == null ? 0: this.vid.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.index == null ? 0: this.index.hashCode());
    result = 31 * result + (this.pool == null ? 0: this.pool.hashCode());
    result = 31 * result + (this.createdTimestamp == null ? 0: this.createdTimestamp.hashCode());
    result = 31 * result + (this.createdBlockNumber == null ? 0: this.createdBlockNumber.hashCode());
    result = 31 * result + (this.prices == null ? 0: this.prices.hashCode());
    result = 31 * result + (this.liquidityGross == null ? 0: this.liquidityGross.hashCode());
    result = 31 * result + (this.liquidityGrossUsd == null ? 0: this.liquidityGrossUsd.hashCode());
    result = 31 * result + (this.liquidityNet == null ? 0: this.liquidityNet.hashCode());
    result = 31 * result + (this.liquidityNetUsd == null ? 0: this.liquidityNetUsd.hashCode());
    result = 31 * result + (this.lastSnapshotDayId == null ? 0: this.lastSnapshotDayId.hashCode());
    result = 31 * result + (this.lastSnapshotHourId == null ? 0: this.lastSnapshotHourId.hashCode());
    result = 31 * result + (this.lastUpdateTimestamp == null ? 0: this.lastUpdateTimestamp.hashCode());
    result = 31 * result + (this.lastUpdateBlockNumber == null ? 0: this.lastUpdateBlockNumber.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class UNISWAPV3ETHEREUMTickDTO {\n");
    
    sb.append("  entryTime: ").append(entryTime).append("\n");
    sb.append("  recvTime: ").append(recvTime).append("\n");
    sb.append("  blockNumber: ").append(blockNumber).append("\n");
    sb.append("  vid: ").append(vid).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  index: ").append(index).append("\n");
    sb.append("  pool: ").append(pool).append("\n");
    sb.append("  createdTimestamp: ").append(createdTimestamp).append("\n");
    sb.append("  createdBlockNumber: ").append(createdBlockNumber).append("\n");
    sb.append("  prices: ").append(prices).append("\n");
    sb.append("  liquidityGross: ").append(liquidityGross).append("\n");
    sb.append("  liquidityGrossUsd: ").append(liquidityGrossUsd).append("\n");
    sb.append("  liquidityNet: ").append(liquidityNet).append("\n");
    sb.append("  liquidityNetUsd: ").append(liquidityNetUsd).append("\n");
    sb.append("  lastSnapshotDayId: ").append(lastSnapshotDayId).append("\n");
    sb.append("  lastSnapshotHourId: ").append(lastSnapshotHourId).append("\n");
    sb.append("  lastUpdateTimestamp: ").append(lastUpdateTimestamp).append("\n");
    sb.append("  lastUpdateBlockNumber: ").append(lastUpdateBlockNumber).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
