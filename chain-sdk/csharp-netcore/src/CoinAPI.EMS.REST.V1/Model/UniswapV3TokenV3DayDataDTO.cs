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
    /// Token data aggregated across all pairs that include token.
    /// </summary>
    [DataContract(Name = "UniswapV3.TokenV3DayDataDTO")]
    public partial class UniswapV3TokenV3DayDataDTO : IEquatable<UniswapV3TokenV3DayDataDTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UniswapV3TokenV3DayDataDTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="vid">vid.</param>
        /// <param name="id">Token address concatendated with date..</param>
        /// <param name="date">Timestamp rounded to current day by dividing by 86400..</param>
        /// <param name="token">Pointer to token..</param>
        /// <param name="volume">Volume in token units..</param>
        /// <param name="volumeUsd">Volume in derived USD..</param>
        /// <param name="untrackedVolumeUsd">Volume in USD even on pools with less reliable USD values..</param>
        /// <param name="totalValueLocked">Liquidity across all pools in token units..</param>
        /// <param name="totalValueLockedUsd">Liquidity across all pools in derived USD..</param>
        /// <param name="priceUsd">Price at end of period in USD..</param>
        /// <param name="feesUsd">Fees in USD..</param>
        /// <param name="open">Opening price USD..</param>
        /// <param name="high">High price USD..</param>
        /// <param name="low">Low price USD..</param>
        /// <param name="close">Close price USD..</param>
        public UniswapV3TokenV3DayDataDTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), long vid = default(long), string id = default(string), int date = default(int), string token = default(string), string volume = default(string), string volumeUsd = default(string), string untrackedVolumeUsd = default(string), string totalValueLocked = default(string), string totalValueLockedUsd = default(string), string priceUsd = default(string), string feesUsd = default(string), string open = default(string), string high = default(string), string low = default(string), string close = default(string))
        {
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Vid = vid;
            this.Id = id;
            this.Date = date;
            this.Token = token;
            this.Volume = volume;
            this.VolumeUsd = volumeUsd;
            this.UntrackedVolumeUsd = untrackedVolumeUsd;
            this.TotalValueLocked = totalValueLocked;
            this.TotalValueLockedUsd = totalValueLockedUsd;
            this.PriceUsd = priceUsd;
            this.FeesUsd = feesUsd;
            this.Open = open;
            this.High = high;
            this.Low = low;
            this.Close = close;
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
        /// Gets or Sets Vid
        /// </summary>
        [DataMember(Name = "vid", EmitDefaultValue = false)]
        public long Vid { get; set; }

        /// <summary>
        /// Token address concatendated with date.
        /// </summary>
        /// <value>Token address concatendated with date.</value>
        [DataMember(Name = "id", EmitDefaultValue = true)]
        public string Id { get; set; }

        /// <summary>
        /// Timestamp rounded to current day by dividing by 86400.
        /// </summary>
        /// <value>Timestamp rounded to current day by dividing by 86400.</value>
        [DataMember(Name = "date", EmitDefaultValue = false)]
        public int Date { get; set; }

        /// <summary>
        /// Pointer to token.
        /// </summary>
        /// <value>Pointer to token.</value>
        [DataMember(Name = "token", EmitDefaultValue = true)]
        public string Token { get; set; }

        /// <summary>
        /// Volume in token units.
        /// </summary>
        /// <value>Volume in token units.</value>
        [DataMember(Name = "volume", EmitDefaultValue = true)]
        public string Volume { get; set; }

        /// <summary>
        /// Volume in derived USD.
        /// </summary>
        /// <value>Volume in derived USD.</value>
        [DataMember(Name = "volume_usd", EmitDefaultValue = true)]
        public string VolumeUsd { get; set; }

        /// <summary>
        /// Volume in USD even on pools with less reliable USD values.
        /// </summary>
        /// <value>Volume in USD even on pools with less reliable USD values.</value>
        [DataMember(Name = "untracked_volume_usd", EmitDefaultValue = true)]
        public string UntrackedVolumeUsd { get; set; }

        /// <summary>
        /// Liquidity across all pools in token units.
        /// </summary>
        /// <value>Liquidity across all pools in token units.</value>
        [DataMember(Name = "total_value_locked", EmitDefaultValue = true)]
        public string TotalValueLocked { get; set; }

        /// <summary>
        /// Liquidity across all pools in derived USD.
        /// </summary>
        /// <value>Liquidity across all pools in derived USD.</value>
        [DataMember(Name = "total_value_locked_usd", EmitDefaultValue = true)]
        public string TotalValueLockedUsd { get; set; }

        /// <summary>
        /// Price at end of period in USD.
        /// </summary>
        /// <value>Price at end of period in USD.</value>
        [DataMember(Name = "price_usd", EmitDefaultValue = true)]
        public string PriceUsd { get; set; }

        /// <summary>
        /// Fees in USD.
        /// </summary>
        /// <value>Fees in USD.</value>
        [DataMember(Name = "fees_usd", EmitDefaultValue = true)]
        public string FeesUsd { get; set; }

        /// <summary>
        /// Opening price USD.
        /// </summary>
        /// <value>Opening price USD.</value>
        [DataMember(Name = "open", EmitDefaultValue = true)]
        public string Open { get; set; }

        /// <summary>
        /// High price USD.
        /// </summary>
        /// <value>High price USD.</value>
        [DataMember(Name = "high", EmitDefaultValue = true)]
        public string High { get; set; }

        /// <summary>
        /// Low price USD.
        /// </summary>
        /// <value>Low price USD.</value>
        [DataMember(Name = "low", EmitDefaultValue = true)]
        public string Low { get; set; }

        /// <summary>
        /// Close price USD.
        /// </summary>
        /// <value>Close price USD.</value>
        [DataMember(Name = "close", EmitDefaultValue = true)]
        public string Close { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class UniswapV3TokenV3DayDataDTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Vid: ").Append(Vid).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Date: ").Append(Date).Append("\n");
            sb.Append("  Token: ").Append(Token).Append("\n");
            sb.Append("  Volume: ").Append(Volume).Append("\n");
            sb.Append("  VolumeUsd: ").Append(VolumeUsd).Append("\n");
            sb.Append("  UntrackedVolumeUsd: ").Append(UntrackedVolumeUsd).Append("\n");
            sb.Append("  TotalValueLocked: ").Append(TotalValueLocked).Append("\n");
            sb.Append("  TotalValueLockedUsd: ").Append(TotalValueLockedUsd).Append("\n");
            sb.Append("  PriceUsd: ").Append(PriceUsd).Append("\n");
            sb.Append("  FeesUsd: ").Append(FeesUsd).Append("\n");
            sb.Append("  Open: ").Append(Open).Append("\n");
            sb.Append("  High: ").Append(High).Append("\n");
            sb.Append("  Low: ").Append(Low).Append("\n");
            sb.Append("  Close: ").Append(Close).Append("\n");
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
            return this.Equals(input as UniswapV3TokenV3DayDataDTO);
        }

        /// <summary>
        /// Returns true if UniswapV3TokenV3DayDataDTO instances are equal
        /// </summary>
        /// <param name="input">Instance of UniswapV3TokenV3DayDataDTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(UniswapV3TokenV3DayDataDTO input)
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
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.Date == input.Date ||
                    this.Date.Equals(input.Date)
                ) && 
                (
                    this.Token == input.Token ||
                    (this.Token != null &&
                    this.Token.Equals(input.Token))
                ) && 
                (
                    this.Volume == input.Volume ||
                    (this.Volume != null &&
                    this.Volume.Equals(input.Volume))
                ) && 
                (
                    this.VolumeUsd == input.VolumeUsd ||
                    (this.VolumeUsd != null &&
                    this.VolumeUsd.Equals(input.VolumeUsd))
                ) && 
                (
                    this.UntrackedVolumeUsd == input.UntrackedVolumeUsd ||
                    (this.UntrackedVolumeUsd != null &&
                    this.UntrackedVolumeUsd.Equals(input.UntrackedVolumeUsd))
                ) && 
                (
                    this.TotalValueLocked == input.TotalValueLocked ||
                    (this.TotalValueLocked != null &&
                    this.TotalValueLocked.Equals(input.TotalValueLocked))
                ) && 
                (
                    this.TotalValueLockedUsd == input.TotalValueLockedUsd ||
                    (this.TotalValueLockedUsd != null &&
                    this.TotalValueLockedUsd.Equals(input.TotalValueLockedUsd))
                ) && 
                (
                    this.PriceUsd == input.PriceUsd ||
                    (this.PriceUsd != null &&
                    this.PriceUsd.Equals(input.PriceUsd))
                ) && 
                (
                    this.FeesUsd == input.FeesUsd ||
                    (this.FeesUsd != null &&
                    this.FeesUsd.Equals(input.FeesUsd))
                ) && 
                (
                    this.Open == input.Open ||
                    (this.Open != null &&
                    this.Open.Equals(input.Open))
                ) && 
                (
                    this.High == input.High ||
                    (this.High != null &&
                    this.High.Equals(input.High))
                ) && 
                (
                    this.Low == input.Low ||
                    (this.Low != null &&
                    this.Low.Equals(input.Low))
                ) && 
                (
                    this.Close == input.Close ||
                    (this.Close != null &&
                    this.Close.Equals(input.Close))
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
                if (this.Id != null)
                {
                    hashCode = (hashCode * 59) + this.Id.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.Date.GetHashCode();
                if (this.Token != null)
                {
                    hashCode = (hashCode * 59) + this.Token.GetHashCode();
                }
                if (this.Volume != null)
                {
                    hashCode = (hashCode * 59) + this.Volume.GetHashCode();
                }
                if (this.VolumeUsd != null)
                {
                    hashCode = (hashCode * 59) + this.VolumeUsd.GetHashCode();
                }
                if (this.UntrackedVolumeUsd != null)
                {
                    hashCode = (hashCode * 59) + this.UntrackedVolumeUsd.GetHashCode();
                }
                if (this.TotalValueLocked != null)
                {
                    hashCode = (hashCode * 59) + this.TotalValueLocked.GetHashCode();
                }
                if (this.TotalValueLockedUsd != null)
                {
                    hashCode = (hashCode * 59) + this.TotalValueLockedUsd.GetHashCode();
                }
                if (this.PriceUsd != null)
                {
                    hashCode = (hashCode * 59) + this.PriceUsd.GetHashCode();
                }
                if (this.FeesUsd != null)
                {
                    hashCode = (hashCode * 59) + this.FeesUsd.GetHashCode();
                }
                if (this.Open != null)
                {
                    hashCode = (hashCode * 59) + this.Open.GetHashCode();
                }
                if (this.High != null)
                {
                    hashCode = (hashCode * 59) + this.High.GetHashCode();
                }
                if (this.Low != null)
                {
                    hashCode = (hashCode * 59) + this.Low.GetHashCode();
                }
                if (this.Close != null)
                {
                    hashCode = (hashCode * 59) + this.Close.GetHashCode();
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
