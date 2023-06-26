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
    /// Transaction entities are created for each Ethereum transaction that contains an interaction within Sushiswap contracts. Each transaction contains 3 arrays, and at least one of these arrays has a length of 1.
    /// </summary>
    [DataContract]
    public partial class SushiswapTransactionDTO :  IEquatable<SushiswapTransactionDTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SushiswapTransactionDTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="id">Ethereum transaction hash..</param>
        /// <param name="timestamp">Timestamp..</param>
        /// <param name="mints">Array of Mint events within the transaction, 0 or greater..</param>
        /// <param name="burns">Array of Burn events within transaction, 0 or greater..</param>
        /// <param name="swaps">Array of Swap events within transaction, 0 or greater..</param>
        /// <param name="vid">vid.</param>
        public SushiswapTransactionDTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), string id = default(string), string timestamp = default(string), List<string> mints = default(List<string>), List<string> burns = default(List<string>), List<string> swaps = default(List<string>), long vid = default(long))
        {
            this.Id = id;
            this.Timestamp = timestamp;
            this.Mints = mints;
            this.Burns = burns;
            this.Swaps = swaps;
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Id = id;
            this.Timestamp = timestamp;
            this.Mints = mints;
            this.Burns = burns;
            this.Swaps = swaps;
            this.Vid = vid;
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
        /// Ethereum transaction hash.
        /// </summary>
        /// <value>Ethereum transaction hash.</value>
        [DataMember(Name="id", EmitDefaultValue=true)]
        public string Id { get; set; }

        /// <summary>
        /// Timestamp.
        /// </summary>
        /// <value>Timestamp.</value>
        [DataMember(Name="timestamp", EmitDefaultValue=true)]
        public string Timestamp { get; set; }

        /// <summary>
        /// Array of Mint events within the transaction, 0 or greater.
        /// </summary>
        /// <value>Array of Mint events within the transaction, 0 or greater.</value>
        [DataMember(Name="mints", EmitDefaultValue=true)]
        public List<string> Mints { get; set; }

        /// <summary>
        /// Array of Burn events within transaction, 0 or greater.
        /// </summary>
        /// <value>Array of Burn events within transaction, 0 or greater.</value>
        [DataMember(Name="burns", EmitDefaultValue=true)]
        public List<string> Burns { get; set; }

        /// <summary>
        /// Array of Swap events within transaction, 0 or greater.
        /// </summary>
        /// <value>Array of Swap events within transaction, 0 or greater.</value>
        [DataMember(Name="swaps", EmitDefaultValue=true)]
        public List<string> Swaps { get; set; }

        /// <summary>
        /// Gets or Sets Vid
        /// </summary>
        [DataMember(Name="vid", EmitDefaultValue=false)]
        public long Vid { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class SushiswapTransactionDTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Timestamp: ").Append(Timestamp).Append("\n");
            sb.Append("  Mints: ").Append(Mints).Append("\n");
            sb.Append("  Burns: ").Append(Burns).Append("\n");
            sb.Append("  Swaps: ").Append(Swaps).Append("\n");
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
            return this.Equals(input as SushiswapTransactionDTO);
        }

        /// <summary>
        /// Returns true if SushiswapTransactionDTO instances are equal
        /// </summary>
        /// <param name="input">Instance of SushiswapTransactionDTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SushiswapTransactionDTO input)
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
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.Timestamp == input.Timestamp ||
                    (this.Timestamp != null &&
                    this.Timestamp.Equals(input.Timestamp))
                ) && 
                (
                    this.Mints == input.Mints ||
                    this.Mints != null &&
                    input.Mints != null &&
                    this.Mints.SequenceEqual(input.Mints)
                ) && 
                (
                    this.Burns == input.Burns ||
                    this.Burns != null &&
                    input.Burns != null &&
                    this.Burns.SequenceEqual(input.Burns)
                ) && 
                (
                    this.Swaps == input.Swaps ||
                    this.Swaps != null &&
                    input.Swaps != null &&
                    this.Swaps.SequenceEqual(input.Swaps)
                ) && 
                (
                    this.Vid == input.Vid ||
                    (this.Vid != null &&
                    this.Vid.Equals(input.Vid))
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
                if (this.Id != null)
                    hashCode = hashCode * 59 + this.Id.GetHashCode();
                if (this.Timestamp != null)
                    hashCode = hashCode * 59 + this.Timestamp.GetHashCode();
                if (this.Mints != null)
                    hashCode = hashCode * 59 + this.Mints.GetHashCode();
                if (this.Burns != null)
                    hashCode = hashCode * 59 + this.Burns.GetHashCode();
                if (this.Swaps != null)
                    hashCode = hashCode * 59 + this.Swaps.GetHashCode();
                if (this.Vid != null)
                    hashCode = hashCode * 59 + this.Vid.GetHashCode();
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
