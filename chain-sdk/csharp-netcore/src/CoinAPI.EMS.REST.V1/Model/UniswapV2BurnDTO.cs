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
    /// Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned LP tokens, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
    /// </summary>
    [DataContract(Name = "UniswapV2.BurnDTO")]
    public partial class UniswapV2BurnDTO : IEquatable<UniswapV2BurnDTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UniswapV2BurnDTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="id">Transaction hash plus index in the transaction burn array.</param>
        /// <param name="transaction">Reference to the transaction Burn was included in..</param>
        /// <param name="timestamp">Timestamp of Burn, used to sort recent liquidity removals..</param>
        /// <param name="pair">Reference to pair..</param>
        /// <param name="liquidity">Amount of liquidity tokens burned..</param>
        /// <param name="sender">Address that initiated the liquidity removal..</param>
        /// <param name="amount0">Amount of token0 removed..</param>
        /// <param name="amount1">Amount of token1 removed..</param>
        /// <param name="to">Recipient of tokens..</param>
        /// <param name="logIndex">Index in the transaction event was emitted..</param>
        /// <param name="amountUsd">Derived USD value of token0 amount plus token1 amount..</param>
        /// <param name="needsComplete">needsComplete.</param>
        /// <param name="feeTo">Address of fee recipient (if fee is on)..</param>
        /// <param name="feeLiquidity">Amount of tokens sent to fee recipient (if fee is on)..</param>
        /// <param name="vid">vid.</param>
        public UniswapV2BurnDTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), string id = default(string), string transaction = default(string), string timestamp = default(string), string pair = default(string), string liquidity = default(string), string sender = default(string), string amount0 = default(string), string amount1 = default(string), string to = default(string), string logIndex = default(string), string amountUsd = default(string), bool needsComplete = default(bool), string feeTo = default(string), string feeLiquidity = default(string), long vid = default(long))
        {
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Id = id;
            this.Transaction = transaction;
            this.Timestamp = timestamp;
            this.Pair = pair;
            this.Liquidity = liquidity;
            this.Sender = sender;
            this.Amount0 = amount0;
            this.Amount1 = amount1;
            this.To = to;
            this.LogIndex = logIndex;
            this.AmountUsd = amountUsd;
            this.NeedsComplete = needsComplete;
            this.FeeTo = feeTo;
            this.FeeLiquidity = feeLiquidity;
            this.Vid = vid;
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
        /// Transaction hash plus index in the transaction burn array
        /// </summary>
        /// <value>Transaction hash plus index in the transaction burn array</value>
        [DataMember(Name = "id", EmitDefaultValue = true)]
        public string Id { get; set; }

        /// <summary>
        /// Reference to the transaction Burn was included in.
        /// </summary>
        /// <value>Reference to the transaction Burn was included in.</value>
        [DataMember(Name = "transaction", EmitDefaultValue = true)]
        public string Transaction { get; set; }

        /// <summary>
        /// Timestamp of Burn, used to sort recent liquidity removals.
        /// </summary>
        /// <value>Timestamp of Burn, used to sort recent liquidity removals.</value>
        [DataMember(Name = "timestamp", EmitDefaultValue = true)]
        public string Timestamp { get; set; }

        /// <summary>
        /// Reference to pair.
        /// </summary>
        /// <value>Reference to pair.</value>
        [DataMember(Name = "pair", EmitDefaultValue = true)]
        public string Pair { get; set; }

        /// <summary>
        /// Amount of liquidity tokens burned.
        /// </summary>
        /// <value>Amount of liquidity tokens burned.</value>
        [DataMember(Name = "liquidity", EmitDefaultValue = true)]
        public string Liquidity { get; set; }

        /// <summary>
        /// Address that initiated the liquidity removal.
        /// </summary>
        /// <value>Address that initiated the liquidity removal.</value>
        [DataMember(Name = "sender", EmitDefaultValue = true)]
        public string Sender { get; set; }

        /// <summary>
        /// Amount of token0 removed.
        /// </summary>
        /// <value>Amount of token0 removed.</value>
        [DataMember(Name = "amount_0", EmitDefaultValue = true)]
        public string Amount0 { get; set; }

        /// <summary>
        /// Amount of token1 removed.
        /// </summary>
        /// <value>Amount of token1 removed.</value>
        [DataMember(Name = "amount_1", EmitDefaultValue = true)]
        public string Amount1 { get; set; }

        /// <summary>
        /// Recipient of tokens.
        /// </summary>
        /// <value>Recipient of tokens.</value>
        [DataMember(Name = "to", EmitDefaultValue = true)]
        public string To { get; set; }

        /// <summary>
        /// Index in the transaction event was emitted.
        /// </summary>
        /// <value>Index in the transaction event was emitted.</value>
        [DataMember(Name = "log_index", EmitDefaultValue = true)]
        public string LogIndex { get; set; }

        /// <summary>
        /// Derived USD value of token0 amount plus token1 amount.
        /// </summary>
        /// <value>Derived USD value of token0 amount plus token1 amount.</value>
        [DataMember(Name = "amount_usd", EmitDefaultValue = true)]
        public string AmountUsd { get; set; }

        /// <summary>
        /// Gets or Sets NeedsComplete
        /// </summary>
        [DataMember(Name = "needs_complete", EmitDefaultValue = true)]
        public bool NeedsComplete { get; set; }

        /// <summary>
        /// Address of fee recipient (if fee is on).
        /// </summary>
        /// <value>Address of fee recipient (if fee is on).</value>
        [DataMember(Name = "fee_to", EmitDefaultValue = true)]
        public string FeeTo { get; set; }

        /// <summary>
        /// Amount of tokens sent to fee recipient (if fee is on).
        /// </summary>
        /// <value>Amount of tokens sent to fee recipient (if fee is on).</value>
        [DataMember(Name = "fee_liquidity", EmitDefaultValue = true)]
        public string FeeLiquidity { get; set; }

        /// <summary>
        /// Gets or Sets Vid
        /// </summary>
        [DataMember(Name = "vid", EmitDefaultValue = false)]
        public long Vid { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class UniswapV2BurnDTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Transaction: ").Append(Transaction).Append("\n");
            sb.Append("  Timestamp: ").Append(Timestamp).Append("\n");
            sb.Append("  Pair: ").Append(Pair).Append("\n");
            sb.Append("  Liquidity: ").Append(Liquidity).Append("\n");
            sb.Append("  Sender: ").Append(Sender).Append("\n");
            sb.Append("  Amount0: ").Append(Amount0).Append("\n");
            sb.Append("  Amount1: ").Append(Amount1).Append("\n");
            sb.Append("  To: ").Append(To).Append("\n");
            sb.Append("  LogIndex: ").Append(LogIndex).Append("\n");
            sb.Append("  AmountUsd: ").Append(AmountUsd).Append("\n");
            sb.Append("  NeedsComplete: ").Append(NeedsComplete).Append("\n");
            sb.Append("  FeeTo: ").Append(FeeTo).Append("\n");
            sb.Append("  FeeLiquidity: ").Append(FeeLiquidity).Append("\n");
            sb.Append("  Vid: ").Append(Vid).Append("\n");
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
            return this.Equals(input as UniswapV2BurnDTO);
        }

        /// <summary>
        /// Returns true if UniswapV2BurnDTO instances are equal
        /// </summary>
        /// <param name="input">Instance of UniswapV2BurnDTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(UniswapV2BurnDTO input)
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
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.Transaction == input.Transaction ||
                    (this.Transaction != null &&
                    this.Transaction.Equals(input.Transaction))
                ) && 
                (
                    this.Timestamp == input.Timestamp ||
                    (this.Timestamp != null &&
                    this.Timestamp.Equals(input.Timestamp))
                ) && 
                (
                    this.Pair == input.Pair ||
                    (this.Pair != null &&
                    this.Pair.Equals(input.Pair))
                ) && 
                (
                    this.Liquidity == input.Liquidity ||
                    (this.Liquidity != null &&
                    this.Liquidity.Equals(input.Liquidity))
                ) && 
                (
                    this.Sender == input.Sender ||
                    (this.Sender != null &&
                    this.Sender.Equals(input.Sender))
                ) && 
                (
                    this.Amount0 == input.Amount0 ||
                    (this.Amount0 != null &&
                    this.Amount0.Equals(input.Amount0))
                ) && 
                (
                    this.Amount1 == input.Amount1 ||
                    (this.Amount1 != null &&
                    this.Amount1.Equals(input.Amount1))
                ) && 
                (
                    this.To == input.To ||
                    (this.To != null &&
                    this.To.Equals(input.To))
                ) && 
                (
                    this.LogIndex == input.LogIndex ||
                    (this.LogIndex != null &&
                    this.LogIndex.Equals(input.LogIndex))
                ) && 
                (
                    this.AmountUsd == input.AmountUsd ||
                    (this.AmountUsd != null &&
                    this.AmountUsd.Equals(input.AmountUsd))
                ) && 
                (
                    this.NeedsComplete == input.NeedsComplete ||
                    this.NeedsComplete.Equals(input.NeedsComplete)
                ) && 
                (
                    this.FeeTo == input.FeeTo ||
                    (this.FeeTo != null &&
                    this.FeeTo.Equals(input.FeeTo))
                ) && 
                (
                    this.FeeLiquidity == input.FeeLiquidity ||
                    (this.FeeLiquidity != null &&
                    this.FeeLiquidity.Equals(input.FeeLiquidity))
                ) && 
                (
                    this.Vid == input.Vid ||
                    this.Vid.Equals(input.Vid)
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
                if (this.Id != null)
                {
                    hashCode = (hashCode * 59) + this.Id.GetHashCode();
                }
                if (this.Transaction != null)
                {
                    hashCode = (hashCode * 59) + this.Transaction.GetHashCode();
                }
                if (this.Timestamp != null)
                {
                    hashCode = (hashCode * 59) + this.Timestamp.GetHashCode();
                }
                if (this.Pair != null)
                {
                    hashCode = (hashCode * 59) + this.Pair.GetHashCode();
                }
                if (this.Liquidity != null)
                {
                    hashCode = (hashCode * 59) + this.Liquidity.GetHashCode();
                }
                if (this.Sender != null)
                {
                    hashCode = (hashCode * 59) + this.Sender.GetHashCode();
                }
                if (this.Amount0 != null)
                {
                    hashCode = (hashCode * 59) + this.Amount0.GetHashCode();
                }
                if (this.Amount1 != null)
                {
                    hashCode = (hashCode * 59) + this.Amount1.GetHashCode();
                }
                if (this.To != null)
                {
                    hashCode = (hashCode * 59) + this.To.GetHashCode();
                }
                if (this.LogIndex != null)
                {
                    hashCode = (hashCode * 59) + this.LogIndex.GetHashCode();
                }
                if (this.AmountUsd != null)
                {
                    hashCode = (hashCode * 59) + this.AmountUsd.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.NeedsComplete.GetHashCode();
                if (this.FeeTo != null)
                {
                    hashCode = (hashCode * 59) + this.FeeTo.GetHashCode();
                }
                if (this.FeeLiquidity != null)
                {
                    hashCode = (hashCode * 59) + this.FeeLiquidity.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.Vid.GetHashCode();
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
