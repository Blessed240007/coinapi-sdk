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
    /// Stores aggregated information for a specific token across all pairs that token is included in.
    /// </summary>
    [DataContract]
    public partial class UNISWAPV3ETHEREUMTokenDTO :  IEquatable<UNISWAPV3ETHEREUMTokenDTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UNISWAPV3ETHEREUMTokenDTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="vid">..</param>
        /// <param name="blockRange">blockRange.</param>
        /// <param name="id">Smart contract address of the token..</param>
        /// <param name="name">Name of the token, mirrored from the smart contract..</param>
        /// <param name="symbol">Symbol of the token, mirrored from the smart contract..</param>
        /// <param name="decimals">The number of decimal places this token uses, default to 18..</param>
        /// <param name="lastPriceUsd">Optional field to track the price of a token, mostly for caching purposes..</param>
        /// <param name="lastPriceBlockNumber">Optional field to track the block number of the last token price..</param>
        /// <param name="lastPricePool">Last pool that gave this token a price..</param>
        /// <param name="totalSupply">Amount of tokens in the protocol..</param>
        /// <param name="totalValueLockedUsd">Total value locked in the protocol..</param>
        /// <param name="largePriceChangeBuffer">The buffer for detecting large price changes..</param>
        /// <param name="largeTvlImpactBuffer">The buffer for detecting large TVL (Total Value Locked) impact..</param>
        public UNISWAPV3ETHEREUMTokenDTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), long vid = default(long), string blockRange = default(string), string id = default(string), string name = default(string), string symbol = default(string), int decimals = default(int), string lastPriceUsd = default(string), string lastPriceBlockNumber = default(string), string lastPricePool = default(string), string totalSupply = default(string), string totalValueLockedUsd = default(string), int largePriceChangeBuffer = default(int), int largeTvlImpactBuffer = default(int))
        {
            this.BlockRange = blockRange;
            this.Id = id;
            this.Name = name;
            this.Symbol = symbol;
            this.LastPriceUsd = lastPriceUsd;
            this.LastPriceBlockNumber = lastPriceBlockNumber;
            this.LastPricePool = lastPricePool;
            this.TotalSupply = totalSupply;
            this.TotalValueLockedUsd = totalValueLockedUsd;
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Vid = vid;
            this.BlockRange = blockRange;
            this.Id = id;
            this.Name = name;
            this.Symbol = symbol;
            this.Decimals = decimals;
            this.LastPriceUsd = lastPriceUsd;
            this.LastPriceBlockNumber = lastPriceBlockNumber;
            this.LastPricePool = lastPricePool;
            this.TotalSupply = totalSupply;
            this.TotalValueLockedUsd = totalValueLockedUsd;
            this.LargePriceChangeBuffer = largePriceChangeBuffer;
            this.LargeTvlImpactBuffer = largeTvlImpactBuffer;
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
        /// Gets or Sets BlockRange
        /// </summary>
        [DataMember(Name="block_range", EmitDefaultValue=true)]
        public string BlockRange { get; set; }

        /// <summary>
        /// Smart contract address of the token.
        /// </summary>
        /// <value>Smart contract address of the token.</value>
        [DataMember(Name="id", EmitDefaultValue=true)]
        public string Id { get; set; }

        /// <summary>
        /// Name of the token, mirrored from the smart contract.
        /// </summary>
        /// <value>Name of the token, mirrored from the smart contract.</value>
        [DataMember(Name="name", EmitDefaultValue=true)]
        public string Name { get; set; }

        /// <summary>
        /// Symbol of the token, mirrored from the smart contract.
        /// </summary>
        /// <value>Symbol of the token, mirrored from the smart contract.</value>
        [DataMember(Name="symbol", EmitDefaultValue=true)]
        public string Symbol { get; set; }

        /// <summary>
        /// The number of decimal places this token uses, default to 18.
        /// </summary>
        /// <value>The number of decimal places this token uses, default to 18.</value>
        [DataMember(Name="decimals", EmitDefaultValue=false)]
        public int Decimals { get; set; }

        /// <summary>
        /// Optional field to track the price of a token, mostly for caching purposes.
        /// </summary>
        /// <value>Optional field to track the price of a token, mostly for caching purposes.</value>
        [DataMember(Name="last_price_usd", EmitDefaultValue=true)]
        public string LastPriceUsd { get; set; }

        /// <summary>
        /// Optional field to track the block number of the last token price.
        /// </summary>
        /// <value>Optional field to track the block number of the last token price.</value>
        [DataMember(Name="last_price_block_number", EmitDefaultValue=true)]
        public string LastPriceBlockNumber { get; set; }

        /// <summary>
        /// Last pool that gave this token a price.
        /// </summary>
        /// <value>Last pool that gave this token a price.</value>
        [DataMember(Name="last_price_pool", EmitDefaultValue=true)]
        public string LastPricePool { get; set; }

        /// <summary>
        /// Amount of tokens in the protocol.
        /// </summary>
        /// <value>Amount of tokens in the protocol.</value>
        [DataMember(Name="total_supply", EmitDefaultValue=true)]
        public string TotalSupply { get; set; }

        /// <summary>
        /// Total value locked in the protocol.
        /// </summary>
        /// <value>Total value locked in the protocol.</value>
        [DataMember(Name="total_value_locked_usd", EmitDefaultValue=true)]
        public string TotalValueLockedUsd { get; set; }

        /// <summary>
        /// The buffer for detecting large price changes.
        /// </summary>
        /// <value>The buffer for detecting large price changes.</value>
        [DataMember(Name="large_price_change_buffer", EmitDefaultValue=false)]
        public int LargePriceChangeBuffer { get; set; }

        /// <summary>
        /// The buffer for detecting large TVL (Total Value Locked) impact.
        /// </summary>
        /// <value>The buffer for detecting large TVL (Total Value Locked) impact.</value>
        [DataMember(Name="large_tvl_impact_buffer", EmitDefaultValue=false)]
        public int LargeTvlImpactBuffer { get; set; }

        /// <summary>
        /// Gets or Sets TokenSymbol
        /// </summary>
        [DataMember(Name="token_symbol", EmitDefaultValue=true)]
        public string TokenSymbol { get; private set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class UNISWAPV3ETHEREUMTokenDTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Vid: ").Append(Vid).Append("\n");
            sb.Append("  BlockRange: ").Append(BlockRange).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Symbol: ").Append(Symbol).Append("\n");
            sb.Append("  Decimals: ").Append(Decimals).Append("\n");
            sb.Append("  LastPriceUsd: ").Append(LastPriceUsd).Append("\n");
            sb.Append("  LastPriceBlockNumber: ").Append(LastPriceBlockNumber).Append("\n");
            sb.Append("  LastPricePool: ").Append(LastPricePool).Append("\n");
            sb.Append("  TotalSupply: ").Append(TotalSupply).Append("\n");
            sb.Append("  TotalValueLockedUsd: ").Append(TotalValueLockedUsd).Append("\n");
            sb.Append("  LargePriceChangeBuffer: ").Append(LargePriceChangeBuffer).Append("\n");
            sb.Append("  LargeTvlImpactBuffer: ").Append(LargeTvlImpactBuffer).Append("\n");
            sb.Append("  TokenSymbol: ").Append(TokenSymbol).Append("\n");
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
            return this.Equals(input as UNISWAPV3ETHEREUMTokenDTO);
        }

        /// <summary>
        /// Returns true if UNISWAPV3ETHEREUMTokenDTO instances are equal
        /// </summary>
        /// <param name="input">Instance of UNISWAPV3ETHEREUMTokenDTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(UNISWAPV3ETHEREUMTokenDTO input)
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
                    this.BlockRange == input.BlockRange ||
                    (this.BlockRange != null &&
                    this.BlockRange.Equals(input.BlockRange))
                ) && 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
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
                    this.Decimals == input.Decimals ||
                    (this.Decimals != null &&
                    this.Decimals.Equals(input.Decimals))
                ) && 
                (
                    this.LastPriceUsd == input.LastPriceUsd ||
                    (this.LastPriceUsd != null &&
                    this.LastPriceUsd.Equals(input.LastPriceUsd))
                ) && 
                (
                    this.LastPriceBlockNumber == input.LastPriceBlockNumber ||
                    (this.LastPriceBlockNumber != null &&
                    this.LastPriceBlockNumber.Equals(input.LastPriceBlockNumber))
                ) && 
                (
                    this.LastPricePool == input.LastPricePool ||
                    (this.LastPricePool != null &&
                    this.LastPricePool.Equals(input.LastPricePool))
                ) && 
                (
                    this.TotalSupply == input.TotalSupply ||
                    (this.TotalSupply != null &&
                    this.TotalSupply.Equals(input.TotalSupply))
                ) && 
                (
                    this.TotalValueLockedUsd == input.TotalValueLockedUsd ||
                    (this.TotalValueLockedUsd != null &&
                    this.TotalValueLockedUsd.Equals(input.TotalValueLockedUsd))
                ) && 
                (
                    this.LargePriceChangeBuffer == input.LargePriceChangeBuffer ||
                    (this.LargePriceChangeBuffer != null &&
                    this.LargePriceChangeBuffer.Equals(input.LargePriceChangeBuffer))
                ) && 
                (
                    this.LargeTvlImpactBuffer == input.LargeTvlImpactBuffer ||
                    (this.LargeTvlImpactBuffer != null &&
                    this.LargeTvlImpactBuffer.Equals(input.LargeTvlImpactBuffer))
                ) && 
                (
                    this.TokenSymbol == input.TokenSymbol ||
                    (this.TokenSymbol != null &&
                    this.TokenSymbol.Equals(input.TokenSymbol))
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
                if (this.BlockRange != null)
                    hashCode = hashCode * 59 + this.BlockRange.GetHashCode();
                if (this.Id != null)
                    hashCode = hashCode * 59 + this.Id.GetHashCode();
                if (this.Name != null)
                    hashCode = hashCode * 59 + this.Name.GetHashCode();
                if (this.Symbol != null)
                    hashCode = hashCode * 59 + this.Symbol.GetHashCode();
                if (this.Decimals != null)
                    hashCode = hashCode * 59 + this.Decimals.GetHashCode();
                if (this.LastPriceUsd != null)
                    hashCode = hashCode * 59 + this.LastPriceUsd.GetHashCode();
                if (this.LastPriceBlockNumber != null)
                    hashCode = hashCode * 59 + this.LastPriceBlockNumber.GetHashCode();
                if (this.LastPricePool != null)
                    hashCode = hashCode * 59 + this.LastPricePool.GetHashCode();
                if (this.TotalSupply != null)
                    hashCode = hashCode * 59 + this.TotalSupply.GetHashCode();
                if (this.TotalValueLockedUsd != null)
                    hashCode = hashCode * 59 + this.TotalValueLockedUsd.GetHashCode();
                if (this.LargePriceChangeBuffer != null)
                    hashCode = hashCode * 59 + this.LargePriceChangeBuffer.GetHashCode();
                if (this.LargeTvlImpactBuffer != null)
                    hashCode = hashCode * 59 + this.LargeTvlImpactBuffer.GetHashCode();
                if (this.TokenSymbol != null)
                    hashCode = hashCode * 59 + this.TokenSymbol.GetHashCode();
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
