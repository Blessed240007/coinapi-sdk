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
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = CoinAPI.EMS.REST.V1.Client.OpenAPIDateConverter;

namespace CoinAPI.EMS.REST.V1.Model
{
    /// <summary>
    /// UNISWAPV3ETHEREUMLiquidityPoolAmountDTO
    /// </summary>
    [DataContract(Name = "UNISWAP_V3_ETHEREUM.LiquidityPoolAmountDTO")]
    public partial class UNISWAPV3ETHEREUMLiquidityPoolAmountDTO : IEquatable<UNISWAPV3ETHEREUMLiquidityPoolAmountDTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UNISWAPV3ETHEREUMLiquidityPoolAmountDTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="vid">..</param>
        /// <param name="blockRange">blockRange.</param>
        /// <param name="id">Smart contract address of the pool..</param>
        /// <param name="inputTokens">Input tokens of the pool (not input tokens of the event/transaction). E.g. WETH and USDC from a WETH-USDC pool..</param>
        /// <param name="inputTokenBalances">Amount of input tokens in the pool. The ordering should be the same as the pool&#39;s &#x60;inputTokens&#x60; field..</param>
        /// <param name="tokenPrices">tokenPrices.</param>
        public UNISWAPV3ETHEREUMLiquidityPoolAmountDTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), long vid = default(long), string blockRange = default(string), string id = default(string), List<string> inputTokens = default(List<string>), List<string> inputTokenBalances = default(List<string>), List<string> tokenPrices = default(List<string>))
        {
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Vid = vid;
            this.BlockRange = blockRange;
            this.Id = id;
            this.InputTokens = inputTokens;
            this.InputTokenBalances = inputTokenBalances;
            this.TokenPrices = tokenPrices;
        }

        /// <summary>
        /// Gets or Sets EntryTime
        /// </summary>
        [DataMember(Name = "entry_time", EmitDefaultValue = false)]
        public DateTime EntryTime { get; set; }

        /// <summary>
        /// Gets or Sets RecvTime
        /// </summary>
        [DataMember(Name = "recv_time", EmitDefaultValue = false)]
        public DateTime RecvTime { get; set; }

        /// <summary>
        /// Number of block in which entity was recorded.
        /// </summary>
        /// <value>Number of block in which entity was recorded.</value>
        [DataMember(Name = "block_number", EmitDefaultValue = false)]
        public long BlockNumber { get; set; }

        /// <summary>
        /// .
        /// </summary>
        /// <value>.</value>
        [DataMember(Name = "vid", EmitDefaultValue = false)]
        public long Vid { get; set; }

        /// <summary>
        /// Gets or Sets BlockRange
        /// </summary>
        [DataMember(Name = "block_range", EmitDefaultValue = true)]
        public string BlockRange { get; set; }

        /// <summary>
        /// Smart contract address of the pool.
        /// </summary>
        /// <value>Smart contract address of the pool.</value>
        [DataMember(Name = "id", EmitDefaultValue = true)]
        public string Id { get; set; }

        /// <summary>
        /// Input tokens of the pool (not input tokens of the event/transaction). E.g. WETH and USDC from a WETH-USDC pool.
        /// </summary>
        /// <value>Input tokens of the pool (not input tokens of the event/transaction). E.g. WETH and USDC from a WETH-USDC pool.</value>
        [DataMember(Name = "input_tokens", EmitDefaultValue = true)]
        public List<string> InputTokens { get; set; }

        /// <summary>
        /// Amount of input tokens in the pool. The ordering should be the same as the pool&#39;s &#x60;inputTokens&#x60; field.
        /// </summary>
        /// <value>Amount of input tokens in the pool. The ordering should be the same as the pool&#39;s &#x60;inputTokens&#x60; field.</value>
        [DataMember(Name = "input_token_balances", EmitDefaultValue = true)]
        public List<string> InputTokenBalances { get; set; }

        /// <summary>
        /// Gets or Sets TokenPrices
        /// </summary>
        [DataMember(Name = "token_prices", EmitDefaultValue = true)]
        public List<string> TokenPrices { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class UNISWAPV3ETHEREUMLiquidityPoolAmountDTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Vid: ").Append(Vid).Append("\n");
            sb.Append("  BlockRange: ").Append(BlockRange).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  InputTokens: ").Append(InputTokens).Append("\n");
            sb.Append("  InputTokenBalances: ").Append(InputTokenBalances).Append("\n");
            sb.Append("  TokenPrices: ").Append(TokenPrices).Append("\n");
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
            return this.Equals(input as UNISWAPV3ETHEREUMLiquidityPoolAmountDTO);
        }

        /// <summary>
        /// Returns true if UNISWAPV3ETHEREUMLiquidityPoolAmountDTO instances are equal
        /// </summary>
        /// <param name="input">Instance of UNISWAPV3ETHEREUMLiquidityPoolAmountDTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(UNISWAPV3ETHEREUMLiquidityPoolAmountDTO input)
        {
            if (input == null)
            {
                return false;
            }
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
                    this.BlockNumber.Equals(input.BlockNumber)
                ) && 
                (
                    this.Vid == input.Vid ||
                    this.Vid.Equals(input.Vid)
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
                    this.InputTokens == input.InputTokens ||
                    this.InputTokens != null &&
                    input.InputTokens != null &&
                    this.InputTokens.SequenceEqual(input.InputTokens)
                ) && 
                (
                    this.InputTokenBalances == input.InputTokenBalances ||
                    this.InputTokenBalances != null &&
                    input.InputTokenBalances != null &&
                    this.InputTokenBalances.SequenceEqual(input.InputTokenBalances)
                ) && 
                (
                    this.TokenPrices == input.TokenPrices ||
                    this.TokenPrices != null &&
                    input.TokenPrices != null &&
                    this.TokenPrices.SequenceEqual(input.TokenPrices)
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
                {
                    hashCode = (hashCode * 59) + this.EntryTime.GetHashCode();
                }
                if (this.RecvTime != null)
                {
                    hashCode = (hashCode * 59) + this.RecvTime.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.BlockNumber.GetHashCode();
                hashCode = (hashCode * 59) + this.Vid.GetHashCode();
                if (this.BlockRange != null)
                {
                    hashCode = (hashCode * 59) + this.BlockRange.GetHashCode();
                }
                if (this.Id != null)
                {
                    hashCode = (hashCode * 59) + this.Id.GetHashCode();
                }
                if (this.InputTokens != null)
                {
                    hashCode = (hashCode * 59) + this.InputTokens.GetHashCode();
                }
                if (this.InputTokenBalances != null)
                {
                    hashCode = (hashCode * 59) + this.InputTokenBalances.GetHashCode();
                }
                if (this.TokenPrices != null)
                {
                    hashCode = (hashCode * 59) + this.TokenPrices.GetHashCode();
                }
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
