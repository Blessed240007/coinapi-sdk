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
    /// Entity represents a user action in the protocol involving the addition of funds to a liquidity pool.
    /// </summary>
    [DataContract(Name = "UNISWAP_V3_ETHEREUM.DepositDTO")]
    public partial class UNISWAPV3ETHEREUMDepositDTO : IEquatable<UNISWAPV3ETHEREUMDepositDTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UNISWAPV3ETHEREUMDepositDTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="block">block.</param>
        /// <param name="id">Identifier, format: (transaction hash)-(log index).</param>
        /// <param name="hash">Transaction hash of the transaction that emitted this event..</param>
        /// <param name="nonce">Nonce of the transaction that emitted this event..</param>
        /// <param name="logIndex">Event log index. For transactions that don&#39;t emit event, create arbitrary index starting from 0..</param>
        /// <param name="gasLimit">Gas limit of the transaction that emitted this event..</param>
        /// <param name="gasUsed">Gas used in this transaction. (Optional because not every chain will support this)..</param>
        /// <param name="gasPrice">Gas price of the transaction that emitted this event..</param>
        /// <param name="protocol">The protocol this transaction belongs to..</param>
        /// <param name="account">Account that emitted this event..</param>
        /// <param name="position">The user position changed by this event..</param>
        /// <param name="pool">The pool involving this event..</param>
        /// <param name="tickLower">Lower tick of position..</param>
        /// <param name="tickUpper">Upper tick of position..</param>
        /// <param name="timestamp">Timestamp of this event..</param>
        /// <param name="liquidity">Amount of liquidity minted..</param>
        /// <param name="inputTokens">Input tokens of the pool. E.g. WETH and USDC to a WETH-USDC pool..</param>
        /// <param name="inputTokenAmounts">Amount of input tokens in the token&#39;s native unit..</param>
        /// <param name="reserveAmounts">Amount of input tokens in the liquidity pool..</param>
        /// <param name="amountUsd">USD-normalized value of the transaction of the underlying (e.g. sum of tokens deposited into a pool)..</param>
        /// <param name="blockRange">blockRange.</param>
        public UNISWAPV3ETHEREUMDepositDTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), int block = default(int), string id = default(string), string hash = default(string), string nonce = default(string), int logIndex = default(int), string gasLimit = default(string), string gasUsed = default(string), string gasPrice = default(string), string protocol = default(string), string account = default(string), string position = default(string), string pool = default(string), string tickLower = default(string), string tickUpper = default(string), string timestamp = default(string), string liquidity = default(string), List<string> inputTokens = default(List<string>), List<string> inputTokenAmounts = default(List<string>), List<string> reserveAmounts = default(List<string>), string amountUsd = default(string), string blockRange = default(string))
        {
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Block = block;
            this.Id = id;
            this.Hash = hash;
            this.Nonce = nonce;
            this.LogIndex = logIndex;
            this.GasLimit = gasLimit;
            this.GasUsed = gasUsed;
            this.GasPrice = gasPrice;
            this.Protocol = protocol;
            this.Account = account;
            this.Position = position;
            this.Pool = pool;
            this.TickLower = tickLower;
            this.TickUpper = tickUpper;
            this.Timestamp = timestamp;
            this.Liquidity = liquidity;
            this.InputTokens = inputTokens;
            this.InputTokenAmounts = inputTokenAmounts;
            this.ReserveAmounts = reserveAmounts;
            this.AmountUsd = amountUsd;
            this.BlockRange = blockRange;
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
        /// Gets or Sets Block
        /// </summary>
        [DataMember(Name = "block_", EmitDefaultValue = false)]
        public int Block { get; set; }

        /// <summary>
        /// Identifier, format: (transaction hash)-(log index)
        /// </summary>
        /// <value>Identifier, format: (transaction hash)-(log index)</value>
        [DataMember(Name = "id", EmitDefaultValue = true)]
        public string Id { get; set; }

        /// <summary>
        /// Transaction hash of the transaction that emitted this event.
        /// </summary>
        /// <value>Transaction hash of the transaction that emitted this event.</value>
        [DataMember(Name = "hash", EmitDefaultValue = true)]
        public string Hash { get; set; }

        /// <summary>
        /// Nonce of the transaction that emitted this event.
        /// </summary>
        /// <value>Nonce of the transaction that emitted this event.</value>
        [DataMember(Name = "nonce", EmitDefaultValue = true)]
        public string Nonce { get; set; }

        /// <summary>
        /// Event log index. For transactions that don&#39;t emit event, create arbitrary index starting from 0.
        /// </summary>
        /// <value>Event log index. For transactions that don&#39;t emit event, create arbitrary index starting from 0.</value>
        [DataMember(Name = "log_index", EmitDefaultValue = false)]
        public int LogIndex { get; set; }

        /// <summary>
        /// Gas limit of the transaction that emitted this event.
        /// </summary>
        /// <value>Gas limit of the transaction that emitted this event.</value>
        [DataMember(Name = "gas_limit", EmitDefaultValue = true)]
        public string GasLimit { get; set; }

        /// <summary>
        /// Gas used in this transaction. (Optional because not every chain will support this).
        /// </summary>
        /// <value>Gas used in this transaction. (Optional because not every chain will support this).</value>
        [DataMember(Name = "gas_used", EmitDefaultValue = true)]
        public string GasUsed { get; set; }

        /// <summary>
        /// Gas price of the transaction that emitted this event.
        /// </summary>
        /// <value>Gas price of the transaction that emitted this event.</value>
        [DataMember(Name = "gas_price", EmitDefaultValue = true)]
        public string GasPrice { get; set; }

        /// <summary>
        /// The protocol this transaction belongs to.
        /// </summary>
        /// <value>The protocol this transaction belongs to.</value>
        [DataMember(Name = "protocol", EmitDefaultValue = true)]
        public string Protocol { get; set; }

        /// <summary>
        /// Account that emitted this event.
        /// </summary>
        /// <value>Account that emitted this event.</value>
        [DataMember(Name = "account", EmitDefaultValue = true)]
        public string Account { get; set; }

        /// <summary>
        /// The user position changed by this event.
        /// </summary>
        /// <value>The user position changed by this event.</value>
        [DataMember(Name = "position", EmitDefaultValue = true)]
        public string Position { get; set; }

        /// <summary>
        /// The pool involving this event.
        /// </summary>
        /// <value>The pool involving this event.</value>
        [DataMember(Name = "pool", EmitDefaultValue = true)]
        public string Pool { get; set; }

        /// <summary>
        /// Lower tick of position.
        /// </summary>
        /// <value>Lower tick of position.</value>
        [DataMember(Name = "tick_lower", EmitDefaultValue = true)]
        public string TickLower { get; set; }

        /// <summary>
        /// Upper tick of position.
        /// </summary>
        /// <value>Upper tick of position.</value>
        [DataMember(Name = "tick_upper", EmitDefaultValue = true)]
        public string TickUpper { get; set; }

        /// <summary>
        /// Timestamp of this event.
        /// </summary>
        /// <value>Timestamp of this event.</value>
        [DataMember(Name = "timestamp", EmitDefaultValue = true)]
        public string Timestamp { get; set; }

        /// <summary>
        /// Amount of liquidity minted.
        /// </summary>
        /// <value>Amount of liquidity minted.</value>
        [DataMember(Name = "liquidity", EmitDefaultValue = true)]
        public string Liquidity { get; set; }

        /// <summary>
        /// Input tokens of the pool. E.g. WETH and USDC to a WETH-USDC pool.
        /// </summary>
        /// <value>Input tokens of the pool. E.g. WETH and USDC to a WETH-USDC pool.</value>
        [DataMember(Name = "input_tokens", EmitDefaultValue = true)]
        public List<string> InputTokens { get; set; }

        /// <summary>
        /// Amount of input tokens in the token&#39;s native unit.
        /// </summary>
        /// <value>Amount of input tokens in the token&#39;s native unit.</value>
        [DataMember(Name = "input_token_amounts", EmitDefaultValue = true)]
        public List<string> InputTokenAmounts { get; set; }

        /// <summary>
        /// Amount of input tokens in the liquidity pool.
        /// </summary>
        /// <value>Amount of input tokens in the liquidity pool.</value>
        [DataMember(Name = "reserve_amounts", EmitDefaultValue = true)]
        public List<string> ReserveAmounts { get; set; }

        /// <summary>
        /// USD-normalized value of the transaction of the underlying (e.g. sum of tokens deposited into a pool).
        /// </summary>
        /// <value>USD-normalized value of the transaction of the underlying (e.g. sum of tokens deposited into a pool).</value>
        [DataMember(Name = "amount_usd", EmitDefaultValue = true)]
        public string AmountUsd { get; set; }

        /// <summary>
        /// Gets or Sets BlockRange
        /// </summary>
        [DataMember(Name = "block_range", EmitDefaultValue = true)]
        public string BlockRange { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class UNISWAPV3ETHEREUMDepositDTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Block: ").Append(Block).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Hash: ").Append(Hash).Append("\n");
            sb.Append("  Nonce: ").Append(Nonce).Append("\n");
            sb.Append("  LogIndex: ").Append(LogIndex).Append("\n");
            sb.Append("  GasLimit: ").Append(GasLimit).Append("\n");
            sb.Append("  GasUsed: ").Append(GasUsed).Append("\n");
            sb.Append("  GasPrice: ").Append(GasPrice).Append("\n");
            sb.Append("  Protocol: ").Append(Protocol).Append("\n");
            sb.Append("  Account: ").Append(Account).Append("\n");
            sb.Append("  Position: ").Append(Position).Append("\n");
            sb.Append("  Pool: ").Append(Pool).Append("\n");
            sb.Append("  TickLower: ").Append(TickLower).Append("\n");
            sb.Append("  TickUpper: ").Append(TickUpper).Append("\n");
            sb.Append("  Timestamp: ").Append(Timestamp).Append("\n");
            sb.Append("  Liquidity: ").Append(Liquidity).Append("\n");
            sb.Append("  InputTokens: ").Append(InputTokens).Append("\n");
            sb.Append("  InputTokenAmounts: ").Append(InputTokenAmounts).Append("\n");
            sb.Append("  ReserveAmounts: ").Append(ReserveAmounts).Append("\n");
            sb.Append("  AmountUsd: ").Append(AmountUsd).Append("\n");
            sb.Append("  BlockRange: ").Append(BlockRange).Append("\n");
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
            return this.Equals(input as UNISWAPV3ETHEREUMDepositDTO);
        }

        /// <summary>
        /// Returns true if UNISWAPV3ETHEREUMDepositDTO instances are equal
        /// </summary>
        /// <param name="input">Instance of UNISWAPV3ETHEREUMDepositDTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(UNISWAPV3ETHEREUMDepositDTO input)
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
                    this.Block == input.Block ||
                    this.Block.Equals(input.Block)
                ) && 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.Hash == input.Hash ||
                    (this.Hash != null &&
                    this.Hash.Equals(input.Hash))
                ) && 
                (
                    this.Nonce == input.Nonce ||
                    (this.Nonce != null &&
                    this.Nonce.Equals(input.Nonce))
                ) && 
                (
                    this.LogIndex == input.LogIndex ||
                    this.LogIndex.Equals(input.LogIndex)
                ) && 
                (
                    this.GasLimit == input.GasLimit ||
                    (this.GasLimit != null &&
                    this.GasLimit.Equals(input.GasLimit))
                ) && 
                (
                    this.GasUsed == input.GasUsed ||
                    (this.GasUsed != null &&
                    this.GasUsed.Equals(input.GasUsed))
                ) && 
                (
                    this.GasPrice == input.GasPrice ||
                    (this.GasPrice != null &&
                    this.GasPrice.Equals(input.GasPrice))
                ) && 
                (
                    this.Protocol == input.Protocol ||
                    (this.Protocol != null &&
                    this.Protocol.Equals(input.Protocol))
                ) && 
                (
                    this.Account == input.Account ||
                    (this.Account != null &&
                    this.Account.Equals(input.Account))
                ) && 
                (
                    this.Position == input.Position ||
                    (this.Position != null &&
                    this.Position.Equals(input.Position))
                ) && 
                (
                    this.Pool == input.Pool ||
                    (this.Pool != null &&
                    this.Pool.Equals(input.Pool))
                ) && 
                (
                    this.TickLower == input.TickLower ||
                    (this.TickLower != null &&
                    this.TickLower.Equals(input.TickLower))
                ) && 
                (
                    this.TickUpper == input.TickUpper ||
                    (this.TickUpper != null &&
                    this.TickUpper.Equals(input.TickUpper))
                ) && 
                (
                    this.Timestamp == input.Timestamp ||
                    (this.Timestamp != null &&
                    this.Timestamp.Equals(input.Timestamp))
                ) && 
                (
                    this.Liquidity == input.Liquidity ||
                    (this.Liquidity != null &&
                    this.Liquidity.Equals(input.Liquidity))
                ) && 
                (
                    this.InputTokens == input.InputTokens ||
                    this.InputTokens != null &&
                    input.InputTokens != null &&
                    this.InputTokens.SequenceEqual(input.InputTokens)
                ) && 
                (
                    this.InputTokenAmounts == input.InputTokenAmounts ||
                    this.InputTokenAmounts != null &&
                    input.InputTokenAmounts != null &&
                    this.InputTokenAmounts.SequenceEqual(input.InputTokenAmounts)
                ) && 
                (
                    this.ReserveAmounts == input.ReserveAmounts ||
                    this.ReserveAmounts != null &&
                    input.ReserveAmounts != null &&
                    this.ReserveAmounts.SequenceEqual(input.ReserveAmounts)
                ) && 
                (
                    this.AmountUsd == input.AmountUsd ||
                    (this.AmountUsd != null &&
                    this.AmountUsd.Equals(input.AmountUsd))
                ) && 
                (
                    this.BlockRange == input.BlockRange ||
                    (this.BlockRange != null &&
                    this.BlockRange.Equals(input.BlockRange))
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
                hashCode = (hashCode * 59) + this.Block.GetHashCode();
                if (this.Id != null)
                {
                    hashCode = (hashCode * 59) + this.Id.GetHashCode();
                }
                if (this.Hash != null)
                {
                    hashCode = (hashCode * 59) + this.Hash.GetHashCode();
                }
                if (this.Nonce != null)
                {
                    hashCode = (hashCode * 59) + this.Nonce.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.LogIndex.GetHashCode();
                if (this.GasLimit != null)
                {
                    hashCode = (hashCode * 59) + this.GasLimit.GetHashCode();
                }
                if (this.GasUsed != null)
                {
                    hashCode = (hashCode * 59) + this.GasUsed.GetHashCode();
                }
                if (this.GasPrice != null)
                {
                    hashCode = (hashCode * 59) + this.GasPrice.GetHashCode();
                }
                if (this.Protocol != null)
                {
                    hashCode = (hashCode * 59) + this.Protocol.GetHashCode();
                }
                if (this.Account != null)
                {
                    hashCode = (hashCode * 59) + this.Account.GetHashCode();
                }
                if (this.Position != null)
                {
                    hashCode = (hashCode * 59) + this.Position.GetHashCode();
                }
                if (this.Pool != null)
                {
                    hashCode = (hashCode * 59) + this.Pool.GetHashCode();
                }
                if (this.TickLower != null)
                {
                    hashCode = (hashCode * 59) + this.TickLower.GetHashCode();
                }
                if (this.TickUpper != null)
                {
                    hashCode = (hashCode * 59) + this.TickUpper.GetHashCode();
                }
                if (this.Timestamp != null)
                {
                    hashCode = (hashCode * 59) + this.Timestamp.GetHashCode();
                }
                if (this.Liquidity != null)
                {
                    hashCode = (hashCode * 59) + this.Liquidity.GetHashCode();
                }
                if (this.InputTokens != null)
                {
                    hashCode = (hashCode * 59) + this.InputTokens.GetHashCode();
                }
                if (this.InputTokenAmounts != null)
                {
                    hashCode = (hashCode * 59) + this.InputTokenAmounts.GetHashCode();
                }
                if (this.ReserveAmounts != null)
                {
                    hashCode = (hashCode * 59) + this.ReserveAmounts.GetHashCode();
                }
                if (this.AmountUsd != null)
                {
                    hashCode = (hashCode * 59) + this.AmountUsd.GetHashCode();
                }
                if (this.BlockRange != null)
                {
                    hashCode = (hashCode * 59) + this.BlockRange.GetHashCode();
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
