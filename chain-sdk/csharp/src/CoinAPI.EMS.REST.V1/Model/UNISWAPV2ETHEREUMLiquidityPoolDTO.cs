/*
 * On Chain Dapps - REST API
 *
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = CoinAPI.EMS.REST.V1.Client.OpenAPIDateConverter;

namespace CoinAPI.EMS.REST.V1.Model
{
    /// <summary>
    /// Pool-level metadata.
    /// </summary>
    [DataContract]
    public partial class UNISWAPV2ETHEREUMLiquidityPoolDTO :  IEquatable<UNISWAPV2ETHEREUMLiquidityPoolDTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UNISWAPV2ETHEREUMLiquidityPoolDTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="vid">..</param>
        /// <param name="id">Smart contract address of the pool.</param>
        /// <param name="protocol">The protocol this pool belongs to.</param>
        /// <param name="name">Name of liquidity pool (e.g. Curve.fi DAI/USDC/USDT).</param>
        /// <param name="symbol">Symbol of liquidity pool (e.g. 3CRV).</param>
        /// <param name="inputTokens">Tokens that need to be deposited to take a position in the protocol.</param>
        /// <param name="outputToken">Token that is minted to track ownership of position in protocol.</param>
        /// <param name="rewardTokens">Aditional tokens that are given as reward for position in a protocol.</param>
        /// <param name="fees">Fees per trade incurred to the user.</param>
        /// <param name="isSingleSided">Whether this pool is single-sided.</param>
        /// <param name="createdTimestamp">Creation timestamp.</param>
        /// <param name="createdBlockNumber">Creation block number.</param>
        /// <param name="totalValueLockedUsd">Current TVL (Total Value Locked) of this pool in USD.</param>
        /// <param name="cumulativeSupplySideRevenueUsd">All revenue generated by the liquidity pool, accrued to the supply side.</param>
        /// <param name="cumulativeProtocolSideRevenueUsd">All revenue generated by the liquidity pool, accrued to the protocol.</param>
        /// <param name="cumulativeTotalRevenueUsd">All revenue generated by the liquidity pool.</param>
        /// <param name="cumulativeVolumeUsd">All historical trade volume occurred in this pool, in USD.</param>
        /// <param name="inputTokenBalances">Amount of input tokens in the pool.</param>
        /// <param name="inputTokenWeights">Weights of input tokens in the liquidity pool in percentage values.</param>
        /// <param name="outputTokenSupply">Total supply of output token.</param>
        /// <param name="outputTokenPriceUsd">Price per share of output token in USD.</param>
        /// <param name="stakedOutputTokenAmount">Total supply of output tokens that are staked.</param>
        /// <param name="rewardTokenEmissionsAmount">Per-block reward token emission as of the current block normalized to a day, in token&#39;s native amount.</param>
        /// <param name="rewardTokenEmissionsUsd">Per-block reward token emission as of the current block normalized to a day, in USD value.</param>
        public UNISWAPV2ETHEREUMLiquidityPoolDTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), long vid = default(long), string id = default(string), string protocol = default(string), string name = default(string), string symbol = default(string), List<string> inputTokens = default(List<string>), string outputToken = default(string), List<string> rewardTokens = default(List<string>), List<string> fees = default(List<string>), bool isSingleSided = default(bool), string createdTimestamp = default(string), string createdBlockNumber = default(string), string totalValueLockedUsd = default(string), string cumulativeSupplySideRevenueUsd = default(string), string cumulativeProtocolSideRevenueUsd = default(string), string cumulativeTotalRevenueUsd = default(string), string cumulativeVolumeUsd = default(string), List<string> inputTokenBalances = default(List<string>), List<string> inputTokenWeights = default(List<string>), string outputTokenSupply = default(string), string outputTokenPriceUsd = default(string), string stakedOutputTokenAmount = default(string), List<string> rewardTokenEmissionsAmount = default(List<string>), List<string> rewardTokenEmissionsUsd = default(List<string>))
        {
            this.Id = id;
            this.Protocol = protocol;
            this.Name = name;
            this.Symbol = symbol;
            this.InputTokens = inputTokens;
            this.OutputToken = outputToken;
            this.RewardTokens = rewardTokens;
            this.Fees = fees;
            this.CreatedTimestamp = createdTimestamp;
            this.CreatedBlockNumber = createdBlockNumber;
            this.TotalValueLockedUsd = totalValueLockedUsd;
            this.CumulativeSupplySideRevenueUsd = cumulativeSupplySideRevenueUsd;
            this.CumulativeProtocolSideRevenueUsd = cumulativeProtocolSideRevenueUsd;
            this.CumulativeTotalRevenueUsd = cumulativeTotalRevenueUsd;
            this.CumulativeVolumeUsd = cumulativeVolumeUsd;
            this.InputTokenBalances = inputTokenBalances;
            this.InputTokenWeights = inputTokenWeights;
            this.OutputTokenSupply = outputTokenSupply;
            this.OutputTokenPriceUsd = outputTokenPriceUsd;
            this.StakedOutputTokenAmount = stakedOutputTokenAmount;
            this.RewardTokenEmissionsAmount = rewardTokenEmissionsAmount;
            this.RewardTokenEmissionsUsd = rewardTokenEmissionsUsd;
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Vid = vid;
            this.Id = id;
            this.Protocol = protocol;
            this.Name = name;
            this.Symbol = symbol;
            this.InputTokens = inputTokens;
            this.OutputToken = outputToken;
            this.RewardTokens = rewardTokens;
            this.Fees = fees;
            this.IsSingleSided = isSingleSided;
            this.CreatedTimestamp = createdTimestamp;
            this.CreatedBlockNumber = createdBlockNumber;
            this.TotalValueLockedUsd = totalValueLockedUsd;
            this.CumulativeSupplySideRevenueUsd = cumulativeSupplySideRevenueUsd;
            this.CumulativeProtocolSideRevenueUsd = cumulativeProtocolSideRevenueUsd;
            this.CumulativeTotalRevenueUsd = cumulativeTotalRevenueUsd;
            this.CumulativeVolumeUsd = cumulativeVolumeUsd;
            this.InputTokenBalances = inputTokenBalances;
            this.InputTokenWeights = inputTokenWeights;
            this.OutputTokenSupply = outputTokenSupply;
            this.OutputTokenPriceUsd = outputTokenPriceUsd;
            this.StakedOutputTokenAmount = stakedOutputTokenAmount;
            this.RewardTokenEmissionsAmount = rewardTokenEmissionsAmount;
            this.RewardTokenEmissionsUsd = rewardTokenEmissionsUsd;
        }

        /// <summary>
        /// Gets or Sets EntryTime
        /// </summary>
        [DataMember(Name="entry_time", EmitDefaultValue=false)]
        public DateTime EntryTime { get; set; }

        /// <summary>
        /// Gets or Sets RecvTime
        /// </summary>
        [DataMember(Name="recv_time", EmitDefaultValue=false)]
        public DateTime RecvTime { get; set; }

        /// <summary>
        /// Number of block in which entity was recorded.
        /// </summary>
        /// <value>Number of block in which entity was recorded.</value>
        [DataMember(Name="block_number", EmitDefaultValue=false)]
        public long BlockNumber { get; set; }

        /// <summary>
        /// .
        /// </summary>
        /// <value>.</value>
        [DataMember(Name="vid", EmitDefaultValue=false)]
        public long Vid { get; set; }

        /// <summary>
        /// Smart contract address of the pool
        /// </summary>
        /// <value>Smart contract address of the pool</value>
        [DataMember(Name="id", EmitDefaultValue=true)]
        public string Id { get; set; }

        /// <summary>
        /// The protocol this pool belongs to
        /// </summary>
        /// <value>The protocol this pool belongs to</value>
        [DataMember(Name="protocol", EmitDefaultValue=true)]
        public string Protocol { get; set; }

        /// <summary>
        /// Name of liquidity pool (e.g. Curve.fi DAI/USDC/USDT)
        /// </summary>
        /// <value>Name of liquidity pool (e.g. Curve.fi DAI/USDC/USDT)</value>
        [DataMember(Name="name", EmitDefaultValue=true)]
        public string Name { get; set; }

        /// <summary>
        /// Symbol of liquidity pool (e.g. 3CRV)
        /// </summary>
        /// <value>Symbol of liquidity pool (e.g. 3CRV)</value>
        [DataMember(Name="symbol", EmitDefaultValue=true)]
        public string Symbol { get; set; }

        /// <summary>
        /// Tokens that need to be deposited to take a position in the protocol
        /// </summary>
        /// <value>Tokens that need to be deposited to take a position in the protocol</value>
        [DataMember(Name="input_tokens", EmitDefaultValue=true)]
        public List<string> InputTokens { get; set; }

        /// <summary>
        /// Token that is minted to track ownership of position in protocol
        /// </summary>
        /// <value>Token that is minted to track ownership of position in protocol</value>
        [DataMember(Name="output_token", EmitDefaultValue=true)]
        public string OutputToken { get; set; }

        /// <summary>
        /// Aditional tokens that are given as reward for position in a protocol
        /// </summary>
        /// <value>Aditional tokens that are given as reward for position in a protocol</value>
        [DataMember(Name="reward_tokens", EmitDefaultValue=true)]
        public List<string> RewardTokens { get; set; }

        /// <summary>
        /// Fees per trade incurred to the user
        /// </summary>
        /// <value>Fees per trade incurred to the user</value>
        [DataMember(Name="fees", EmitDefaultValue=true)]
        public List<string> Fees { get; set; }

        /// <summary>
        /// Whether this pool is single-sided
        /// </summary>
        /// <value>Whether this pool is single-sided</value>
        [DataMember(Name="is_single_sided", EmitDefaultValue=false)]
        public bool IsSingleSided { get; set; }

        /// <summary>
        /// Creation timestamp
        /// </summary>
        /// <value>Creation timestamp</value>
        [DataMember(Name="created_timestamp", EmitDefaultValue=true)]
        public string CreatedTimestamp { get; set; }

        /// <summary>
        /// Creation block number
        /// </summary>
        /// <value>Creation block number</value>
        [DataMember(Name="created_block_number", EmitDefaultValue=true)]
        public string CreatedBlockNumber { get; set; }

        /// <summary>
        /// Current TVL (Total Value Locked) of this pool in USD
        /// </summary>
        /// <value>Current TVL (Total Value Locked) of this pool in USD</value>
        [DataMember(Name="total_value_locked_usd", EmitDefaultValue=true)]
        public string TotalValueLockedUsd { get; set; }

        /// <summary>
        /// All revenue generated by the liquidity pool, accrued to the supply side
        /// </summary>
        /// <value>All revenue generated by the liquidity pool, accrued to the supply side</value>
        [DataMember(Name="cumulative_supply_side_revenue_usd", EmitDefaultValue=true)]
        public string CumulativeSupplySideRevenueUsd { get; set; }

        /// <summary>
        /// All revenue generated by the liquidity pool, accrued to the protocol
        /// </summary>
        /// <value>All revenue generated by the liquidity pool, accrued to the protocol</value>
        [DataMember(Name="cumulative_protocol_side_revenue_usd", EmitDefaultValue=true)]
        public string CumulativeProtocolSideRevenueUsd { get; set; }

        /// <summary>
        /// All revenue generated by the liquidity pool
        /// </summary>
        /// <value>All revenue generated by the liquidity pool</value>
        [DataMember(Name="cumulative_total_revenue_usd", EmitDefaultValue=true)]
        public string CumulativeTotalRevenueUsd { get; set; }

        /// <summary>
        /// All historical trade volume occurred in this pool, in USD
        /// </summary>
        /// <value>All historical trade volume occurred in this pool, in USD</value>
        [DataMember(Name="cumulative_volume_usd", EmitDefaultValue=true)]
        public string CumulativeVolumeUsd { get; set; }

        /// <summary>
        /// Amount of input tokens in the pool
        /// </summary>
        /// <value>Amount of input tokens in the pool</value>
        [DataMember(Name="input_token_balances", EmitDefaultValue=true)]
        public List<string> InputTokenBalances { get; set; }

        /// <summary>
        /// Weights of input tokens in the liquidity pool in percentage values
        /// </summary>
        /// <value>Weights of input tokens in the liquidity pool in percentage values</value>
        [DataMember(Name="input_token_weights", EmitDefaultValue=true)]
        public List<string> InputTokenWeights { get; set; }

        /// <summary>
        /// Total supply of output token
        /// </summary>
        /// <value>Total supply of output token</value>
        [DataMember(Name="output_token_supply", EmitDefaultValue=true)]
        public string OutputTokenSupply { get; set; }

        /// <summary>
        /// Price per share of output token in USD
        /// </summary>
        /// <value>Price per share of output token in USD</value>
        [DataMember(Name="output_token_price_usd", EmitDefaultValue=true)]
        public string OutputTokenPriceUsd { get; set; }

        /// <summary>
        /// Total supply of output tokens that are staked
        /// </summary>
        /// <value>Total supply of output tokens that are staked</value>
        [DataMember(Name="staked_output_token_amount", EmitDefaultValue=true)]
        public string StakedOutputTokenAmount { get; set; }

        /// <summary>
        /// Per-block reward token emission as of the current block normalized to a day, in token&#39;s native amount
        /// </summary>
        /// <value>Per-block reward token emission as of the current block normalized to a day, in token&#39;s native amount</value>
        [DataMember(Name="reward_token_emissions_amount", EmitDefaultValue=true)]
        public List<string> RewardTokenEmissionsAmount { get; set; }

        /// <summary>
        /// Per-block reward token emission as of the current block normalized to a day, in USD value
        /// </summary>
        /// <value>Per-block reward token emission as of the current block normalized to a day, in USD value</value>
        [DataMember(Name="reward_token_emissions_usd", EmitDefaultValue=true)]
        public List<string> RewardTokenEmissionsUsd { get; set; }

        /// <summary>
        /// Evaluated ask value of the liquidity pool.
        /// </summary>
        /// <value>Evaluated ask value of the liquidity pool.</value>
        [DataMember(Name="evaluated_ask", EmitDefaultValue=false)]
        public double EvaluatedAsk { get; private set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class UNISWAPV2ETHEREUMLiquidityPoolDTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Vid: ").Append(Vid).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Protocol: ").Append(Protocol).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Symbol: ").Append(Symbol).Append("\n");
            sb.Append("  InputTokens: ").Append(InputTokens).Append("\n");
            sb.Append("  OutputToken: ").Append(OutputToken).Append("\n");
            sb.Append("  RewardTokens: ").Append(RewardTokens).Append("\n");
            sb.Append("  Fees: ").Append(Fees).Append("\n");
            sb.Append("  IsSingleSided: ").Append(IsSingleSided).Append("\n");
            sb.Append("  CreatedTimestamp: ").Append(CreatedTimestamp).Append("\n");
            sb.Append("  CreatedBlockNumber: ").Append(CreatedBlockNumber).Append("\n");
            sb.Append("  TotalValueLockedUsd: ").Append(TotalValueLockedUsd).Append("\n");
            sb.Append("  CumulativeSupplySideRevenueUsd: ").Append(CumulativeSupplySideRevenueUsd).Append("\n");
            sb.Append("  CumulativeProtocolSideRevenueUsd: ").Append(CumulativeProtocolSideRevenueUsd).Append("\n");
            sb.Append("  CumulativeTotalRevenueUsd: ").Append(CumulativeTotalRevenueUsd).Append("\n");
            sb.Append("  CumulativeVolumeUsd: ").Append(CumulativeVolumeUsd).Append("\n");
            sb.Append("  InputTokenBalances: ").Append(InputTokenBalances).Append("\n");
            sb.Append("  InputTokenWeights: ").Append(InputTokenWeights).Append("\n");
            sb.Append("  OutputTokenSupply: ").Append(OutputTokenSupply).Append("\n");
            sb.Append("  OutputTokenPriceUsd: ").Append(OutputTokenPriceUsd).Append("\n");
            sb.Append("  StakedOutputTokenAmount: ").Append(StakedOutputTokenAmount).Append("\n");
            sb.Append("  RewardTokenEmissionsAmount: ").Append(RewardTokenEmissionsAmount).Append("\n");
            sb.Append("  RewardTokenEmissionsUsd: ").Append(RewardTokenEmissionsUsd).Append("\n");
            sb.Append("  EvaluatedAsk: ").Append(EvaluatedAsk).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as UNISWAPV2ETHEREUMLiquidityPoolDTO);
        }

        /// <summary>
        /// Returns true if UNISWAPV2ETHEREUMLiquidityPoolDTO instances are equal
        /// </summary>
        /// <param name="input">Instance of UNISWAPV2ETHEREUMLiquidityPoolDTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(UNISWAPV2ETHEREUMLiquidityPoolDTO input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.EntryTime == input.EntryTime ||
                    (this.EntryTime != null &&
                    this.EntryTime.Equals(input.EntryTime))
                ) && 
                (
                    this.RecvTime == input.RecvTime ||
                    (this.RecvTime != null &&
                    this.RecvTime.Equals(input.RecvTime))
                ) && 
                (
                    this.BlockNumber == input.BlockNumber ||
                    (this.BlockNumber != null &&
                    this.BlockNumber.Equals(input.BlockNumber))
                ) && 
                (
                    this.Vid == input.Vid ||
                    (this.Vid != null &&
                    this.Vid.Equals(input.Vid))
                ) && 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.Protocol == input.Protocol ||
                    (this.Protocol != null &&
                    this.Protocol.Equals(input.Protocol))
                ) && 
                (
                    this.Name == input.Name ||
                    (this.Name != null &&
                    this.Name.Equals(input.Name))
                ) && 
                (
                    this.Symbol == input.Symbol ||
                    (this.Symbol != null &&
                    this.Symbol.Equals(input.Symbol))
                ) && 
                (
                    this.InputTokens == input.InputTokens ||
                    this.InputTokens != null &&
                    input.InputTokens != null &&
                    this.InputTokens.SequenceEqual(input.InputTokens)
                ) && 
                (
                    this.OutputToken == input.OutputToken ||
                    (this.OutputToken != null &&
                    this.OutputToken.Equals(input.OutputToken))
                ) && 
                (
                    this.RewardTokens == input.RewardTokens ||
                    this.RewardTokens != null &&
                    input.RewardTokens != null &&
                    this.RewardTokens.SequenceEqual(input.RewardTokens)
                ) && 
                (
                    this.Fees == input.Fees ||
                    this.Fees != null &&
                    input.Fees != null &&
                    this.Fees.SequenceEqual(input.Fees)
                ) && 
                (
                    this.IsSingleSided == input.IsSingleSided ||
                    (this.IsSingleSided != null &&
                    this.IsSingleSided.Equals(input.IsSingleSided))
                ) && 
                (
                    this.CreatedTimestamp == input.CreatedTimestamp ||
                    (this.CreatedTimestamp != null &&
                    this.CreatedTimestamp.Equals(input.CreatedTimestamp))
                ) && 
                (
                    this.CreatedBlockNumber == input.CreatedBlockNumber ||
                    (this.CreatedBlockNumber != null &&
                    this.CreatedBlockNumber.Equals(input.CreatedBlockNumber))
                ) && 
                (
                    this.TotalValueLockedUsd == input.TotalValueLockedUsd ||
                    (this.TotalValueLockedUsd != null &&
                    this.TotalValueLockedUsd.Equals(input.TotalValueLockedUsd))
                ) && 
                (
                    this.CumulativeSupplySideRevenueUsd == input.CumulativeSupplySideRevenueUsd ||
                    (this.CumulativeSupplySideRevenueUsd != null &&
                    this.CumulativeSupplySideRevenueUsd.Equals(input.CumulativeSupplySideRevenueUsd))
                ) && 
                (
                    this.CumulativeProtocolSideRevenueUsd == input.CumulativeProtocolSideRevenueUsd ||
                    (this.CumulativeProtocolSideRevenueUsd != null &&
                    this.CumulativeProtocolSideRevenueUsd.Equals(input.CumulativeProtocolSideRevenueUsd))
                ) && 
                (
                    this.CumulativeTotalRevenueUsd == input.CumulativeTotalRevenueUsd ||
                    (this.CumulativeTotalRevenueUsd != null &&
                    this.CumulativeTotalRevenueUsd.Equals(input.CumulativeTotalRevenueUsd))
                ) && 
                (
                    this.CumulativeVolumeUsd == input.CumulativeVolumeUsd ||
                    (this.CumulativeVolumeUsd != null &&
                    this.CumulativeVolumeUsd.Equals(input.CumulativeVolumeUsd))
                ) && 
                (
                    this.InputTokenBalances == input.InputTokenBalances ||
                    this.InputTokenBalances != null &&
                    input.InputTokenBalances != null &&
                    this.InputTokenBalances.SequenceEqual(input.InputTokenBalances)
                ) && 
                (
                    this.InputTokenWeights == input.InputTokenWeights ||
                    this.InputTokenWeights != null &&
                    input.InputTokenWeights != null &&
                    this.InputTokenWeights.SequenceEqual(input.InputTokenWeights)
                ) && 
                (
                    this.OutputTokenSupply == input.OutputTokenSupply ||
                    (this.OutputTokenSupply != null &&
                    this.OutputTokenSupply.Equals(input.OutputTokenSupply))
                ) && 
                (
                    this.OutputTokenPriceUsd == input.OutputTokenPriceUsd ||
                    (this.OutputTokenPriceUsd != null &&
                    this.OutputTokenPriceUsd.Equals(input.OutputTokenPriceUsd))
                ) && 
                (
                    this.StakedOutputTokenAmount == input.StakedOutputTokenAmount ||
                    (this.StakedOutputTokenAmount != null &&
                    this.StakedOutputTokenAmount.Equals(input.StakedOutputTokenAmount))
                ) && 
                (
                    this.RewardTokenEmissionsAmount == input.RewardTokenEmissionsAmount ||
                    this.RewardTokenEmissionsAmount != null &&
                    input.RewardTokenEmissionsAmount != null &&
                    this.RewardTokenEmissionsAmount.SequenceEqual(input.RewardTokenEmissionsAmount)
                ) && 
                (
                    this.RewardTokenEmissionsUsd == input.RewardTokenEmissionsUsd ||
                    this.RewardTokenEmissionsUsd != null &&
                    input.RewardTokenEmissionsUsd != null &&
                    this.RewardTokenEmissionsUsd.SequenceEqual(input.RewardTokenEmissionsUsd)
                ) && 
                (
                    this.EvaluatedAsk == input.EvaluatedAsk ||
                    (this.EvaluatedAsk != null &&
                    this.EvaluatedAsk.Equals(input.EvaluatedAsk))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.EntryTime != null)
                    hashCode = hashCode * 59 + this.EntryTime.GetHashCode();
                if (this.RecvTime != null)
                    hashCode = hashCode * 59 + this.RecvTime.GetHashCode();
                if (this.BlockNumber != null)
                    hashCode = hashCode * 59 + this.BlockNumber.GetHashCode();
                if (this.Vid != null)
                    hashCode = hashCode * 59 + this.Vid.GetHashCode();
                if (this.Id != null)
                    hashCode = hashCode * 59 + this.Id.GetHashCode();
                if (this.Protocol != null)
                    hashCode = hashCode * 59 + this.Protocol.GetHashCode();
                if (this.Name != null)
                    hashCode = hashCode * 59 + this.Name.GetHashCode();
                if (this.Symbol != null)
                    hashCode = hashCode * 59 + this.Symbol.GetHashCode();
                if (this.InputTokens != null)
                    hashCode = hashCode * 59 + this.InputTokens.GetHashCode();
                if (this.OutputToken != null)
                    hashCode = hashCode * 59 + this.OutputToken.GetHashCode();
                if (this.RewardTokens != null)
                    hashCode = hashCode * 59 + this.RewardTokens.GetHashCode();
                if (this.Fees != null)
                    hashCode = hashCode * 59 + this.Fees.GetHashCode();
                if (this.IsSingleSided != null)
                    hashCode = hashCode * 59 + this.IsSingleSided.GetHashCode();
                if (this.CreatedTimestamp != null)
                    hashCode = hashCode * 59 + this.CreatedTimestamp.GetHashCode();
                if (this.CreatedBlockNumber != null)
                    hashCode = hashCode * 59 + this.CreatedBlockNumber.GetHashCode();
                if (this.TotalValueLockedUsd != null)
                    hashCode = hashCode * 59 + this.TotalValueLockedUsd.GetHashCode();
                if (this.CumulativeSupplySideRevenueUsd != null)
                    hashCode = hashCode * 59 + this.CumulativeSupplySideRevenueUsd.GetHashCode();
                if (this.CumulativeProtocolSideRevenueUsd != null)
                    hashCode = hashCode * 59 + this.CumulativeProtocolSideRevenueUsd.GetHashCode();
                if (this.CumulativeTotalRevenueUsd != null)
                    hashCode = hashCode * 59 + this.CumulativeTotalRevenueUsd.GetHashCode();
                if (this.CumulativeVolumeUsd != null)
                    hashCode = hashCode * 59 + this.CumulativeVolumeUsd.GetHashCode();
                if (this.InputTokenBalances != null)
                    hashCode = hashCode * 59 + this.InputTokenBalances.GetHashCode();
                if (this.InputTokenWeights != null)
                    hashCode = hashCode * 59 + this.InputTokenWeights.GetHashCode();
                if (this.OutputTokenSupply != null)
                    hashCode = hashCode * 59 + this.OutputTokenSupply.GetHashCode();
                if (this.OutputTokenPriceUsd != null)
                    hashCode = hashCode * 59 + this.OutputTokenPriceUsd.GetHashCode();
                if (this.StakedOutputTokenAmount != null)
                    hashCode = hashCode * 59 + this.StakedOutputTokenAmount.GetHashCode();
                if (this.RewardTokenEmissionsAmount != null)
                    hashCode = hashCode * 59 + this.RewardTokenEmissionsAmount.GetHashCode();
                if (this.RewardTokenEmissionsUsd != null)
                    hashCode = hashCode * 59 + this.RewardTokenEmissionsUsd.GetHashCode();
                if (this.EvaluatedAsk != null)
                    hashCode = hashCode * 59 + this.EvaluatedAsk.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
