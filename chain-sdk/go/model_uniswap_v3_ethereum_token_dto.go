/*
On Chain Dapps - REST API

 This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

API version: v1
Contact: support@coinapi.io
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
	"time"
)

// checks if the UNISWAPV3ETHEREUMTokenDTO type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &UNISWAPV3ETHEREUMTokenDTO{}

// UNISWAPV3ETHEREUMTokenDTO Stores aggregated information for a specific token across all pairs that token is included in.
type UNISWAPV3ETHEREUMTokenDTO struct {
	EntryTime *time.Time `json:"entry_time,omitempty"`
	RecvTime *time.Time `json:"recv_time,omitempty"`
	// Number of block in which entity was recorded.
	BlockNumber *int64 `json:"block_number,omitempty"`
	// .
	Vid *int64 `json:"vid,omitempty"`
	// 
	BlockRange NullableString `json:"block_range,omitempty"`
	// Smart contract address of the token.
	Id NullableString `json:"id,omitempty"`
	// Name of the token, mirrored from the smart contract.
	Name NullableString `json:"name,omitempty"`
	// Symbol of the token, mirrored from the smart contract.
	Symbol NullableString `json:"symbol,omitempty"`
	// The number of decimal places this token uses, default to 18.
	Decimals *int32 `json:"decimals,omitempty"`
	// Optional field to track the price of a token, mostly for caching purposes.
	LastPriceUsd NullableString `json:"last_price_usd,omitempty"`
	// Optional field to track the block number of the last token price.
	LastPriceBlockNumber NullableString `json:"last_price_block_number,omitempty"`
	// Last pool that gave this token a price.
	LastPricePool NullableString `json:"last_price_pool,omitempty"`
	// Amount of tokens in the protocol.
	TotalSupply NullableString `json:"total_supply,omitempty"`
	// Total value locked in the protocol.
	TotalValueLockedUsd NullableString `json:"total_value_locked_usd,omitempty"`
	// The buffer for detecting large price changes.
	LargePriceChangeBuffer *int32 `json:"large_price_change_buffer,omitempty"`
	// The buffer for detecting large TVL (Total Value Locked) impact.
	LargeTvlImpactBuffer *int32 `json:"large_tvl_impact_buffer,omitempty"`
	TokenSymbol NullableString `json:"token_symbol,omitempty"`
}

// NewUNISWAPV3ETHEREUMTokenDTO instantiates a new UNISWAPV3ETHEREUMTokenDTO object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewUNISWAPV3ETHEREUMTokenDTO() *UNISWAPV3ETHEREUMTokenDTO {
	this := UNISWAPV3ETHEREUMTokenDTO{}
	return &this
}

// NewUNISWAPV3ETHEREUMTokenDTOWithDefaults instantiates a new UNISWAPV3ETHEREUMTokenDTO object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewUNISWAPV3ETHEREUMTokenDTOWithDefaults() *UNISWAPV3ETHEREUMTokenDTO {
	this := UNISWAPV3ETHEREUMTokenDTO{}
	return &this
}

// GetEntryTime returns the EntryTime field value if set, zero value otherwise.
func (o *UNISWAPV3ETHEREUMTokenDTO) GetEntryTime() time.Time {
	if o == nil || IsNil(o.EntryTime) {
		var ret time.Time
		return ret
	}
	return *o.EntryTime
}

// GetEntryTimeOk returns a tuple with the EntryTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) GetEntryTimeOk() (*time.Time, bool) {
	if o == nil || IsNil(o.EntryTime) {
		return nil, false
	}
	return o.EntryTime, true
}

// HasEntryTime returns a boolean if a field has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) HasEntryTime() bool {
	if o != nil && !IsNil(o.EntryTime) {
		return true
	}

	return false
}

// SetEntryTime gets a reference to the given time.Time and assigns it to the EntryTime field.
func (o *UNISWAPV3ETHEREUMTokenDTO) SetEntryTime(v time.Time) {
	o.EntryTime = &v
}

// GetRecvTime returns the RecvTime field value if set, zero value otherwise.
func (o *UNISWAPV3ETHEREUMTokenDTO) GetRecvTime() time.Time {
	if o == nil || IsNil(o.RecvTime) {
		var ret time.Time
		return ret
	}
	return *o.RecvTime
}

// GetRecvTimeOk returns a tuple with the RecvTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) GetRecvTimeOk() (*time.Time, bool) {
	if o == nil || IsNil(o.RecvTime) {
		return nil, false
	}
	return o.RecvTime, true
}

// HasRecvTime returns a boolean if a field has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) HasRecvTime() bool {
	if o != nil && !IsNil(o.RecvTime) {
		return true
	}

	return false
}

// SetRecvTime gets a reference to the given time.Time and assigns it to the RecvTime field.
func (o *UNISWAPV3ETHEREUMTokenDTO) SetRecvTime(v time.Time) {
	o.RecvTime = &v
}

// GetBlockNumber returns the BlockNumber field value if set, zero value otherwise.
func (o *UNISWAPV3ETHEREUMTokenDTO) GetBlockNumber() int64 {
	if o == nil || IsNil(o.BlockNumber) {
		var ret int64
		return ret
	}
	return *o.BlockNumber
}

// GetBlockNumberOk returns a tuple with the BlockNumber field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) GetBlockNumberOk() (*int64, bool) {
	if o == nil || IsNil(o.BlockNumber) {
		return nil, false
	}
	return o.BlockNumber, true
}

// HasBlockNumber returns a boolean if a field has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) HasBlockNumber() bool {
	if o != nil && !IsNil(o.BlockNumber) {
		return true
	}

	return false
}

// SetBlockNumber gets a reference to the given int64 and assigns it to the BlockNumber field.
func (o *UNISWAPV3ETHEREUMTokenDTO) SetBlockNumber(v int64) {
	o.BlockNumber = &v
}

// GetVid returns the Vid field value if set, zero value otherwise.
func (o *UNISWAPV3ETHEREUMTokenDTO) GetVid() int64 {
	if o == nil || IsNil(o.Vid) {
		var ret int64
		return ret
	}
	return *o.Vid
}

// GetVidOk returns a tuple with the Vid field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) GetVidOk() (*int64, bool) {
	if o == nil || IsNil(o.Vid) {
		return nil, false
	}
	return o.Vid, true
}

// HasVid returns a boolean if a field has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) HasVid() bool {
	if o != nil && !IsNil(o.Vid) {
		return true
	}

	return false
}

// SetVid gets a reference to the given int64 and assigns it to the Vid field.
func (o *UNISWAPV3ETHEREUMTokenDTO) SetVid(v int64) {
	o.Vid = &v
}

// GetBlockRange returns the BlockRange field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UNISWAPV3ETHEREUMTokenDTO) GetBlockRange() string {
	if o == nil || IsNil(o.BlockRange.Get()) {
		var ret string
		return ret
	}
	return *o.BlockRange.Get()
}

// GetBlockRangeOk returns a tuple with the BlockRange field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UNISWAPV3ETHEREUMTokenDTO) GetBlockRangeOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.BlockRange.Get(), o.BlockRange.IsSet()
}

// HasBlockRange returns a boolean if a field has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) HasBlockRange() bool {
	if o != nil && o.BlockRange.IsSet() {
		return true
	}

	return false
}

// SetBlockRange gets a reference to the given NullableString and assigns it to the BlockRange field.
func (o *UNISWAPV3ETHEREUMTokenDTO) SetBlockRange(v string) {
	o.BlockRange.Set(&v)
}
// SetBlockRangeNil sets the value for BlockRange to be an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) SetBlockRangeNil() {
	o.BlockRange.Set(nil)
}

// UnsetBlockRange ensures that no value is present for BlockRange, not even an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) UnsetBlockRange() {
	o.BlockRange.Unset()
}

// GetId returns the Id field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UNISWAPV3ETHEREUMTokenDTO) GetId() string {
	if o == nil || IsNil(o.Id.Get()) {
		var ret string
		return ret
	}
	return *o.Id.Get()
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UNISWAPV3ETHEREUMTokenDTO) GetIdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Id.Get(), o.Id.IsSet()
}

// HasId returns a boolean if a field has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) HasId() bool {
	if o != nil && o.Id.IsSet() {
		return true
	}

	return false
}

// SetId gets a reference to the given NullableString and assigns it to the Id field.
func (o *UNISWAPV3ETHEREUMTokenDTO) SetId(v string) {
	o.Id.Set(&v)
}
// SetIdNil sets the value for Id to be an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) SetIdNil() {
	o.Id.Set(nil)
}

// UnsetId ensures that no value is present for Id, not even an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) UnsetId() {
	o.Id.Unset()
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UNISWAPV3ETHEREUMTokenDTO) GetName() string {
	if o == nil || IsNil(o.Name.Get()) {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UNISWAPV3ETHEREUMTokenDTO) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *UNISWAPV3ETHEREUMTokenDTO) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) UnsetName() {
	o.Name.Unset()
}

// GetSymbol returns the Symbol field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UNISWAPV3ETHEREUMTokenDTO) GetSymbol() string {
	if o == nil || IsNil(o.Symbol.Get()) {
		var ret string
		return ret
	}
	return *o.Symbol.Get()
}

// GetSymbolOk returns a tuple with the Symbol field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UNISWAPV3ETHEREUMTokenDTO) GetSymbolOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Symbol.Get(), o.Symbol.IsSet()
}

// HasSymbol returns a boolean if a field has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) HasSymbol() bool {
	if o != nil && o.Symbol.IsSet() {
		return true
	}

	return false
}

// SetSymbol gets a reference to the given NullableString and assigns it to the Symbol field.
func (o *UNISWAPV3ETHEREUMTokenDTO) SetSymbol(v string) {
	o.Symbol.Set(&v)
}
// SetSymbolNil sets the value for Symbol to be an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) SetSymbolNil() {
	o.Symbol.Set(nil)
}

// UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) UnsetSymbol() {
	o.Symbol.Unset()
}

// GetDecimals returns the Decimals field value if set, zero value otherwise.
func (o *UNISWAPV3ETHEREUMTokenDTO) GetDecimals() int32 {
	if o == nil || IsNil(o.Decimals) {
		var ret int32
		return ret
	}
	return *o.Decimals
}

// GetDecimalsOk returns a tuple with the Decimals field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) GetDecimalsOk() (*int32, bool) {
	if o == nil || IsNil(o.Decimals) {
		return nil, false
	}
	return o.Decimals, true
}

// HasDecimals returns a boolean if a field has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) HasDecimals() bool {
	if o != nil && !IsNil(o.Decimals) {
		return true
	}

	return false
}

// SetDecimals gets a reference to the given int32 and assigns it to the Decimals field.
func (o *UNISWAPV3ETHEREUMTokenDTO) SetDecimals(v int32) {
	o.Decimals = &v
}

// GetLastPriceUsd returns the LastPriceUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UNISWAPV3ETHEREUMTokenDTO) GetLastPriceUsd() string {
	if o == nil || IsNil(o.LastPriceUsd.Get()) {
		var ret string
		return ret
	}
	return *o.LastPriceUsd.Get()
}

// GetLastPriceUsdOk returns a tuple with the LastPriceUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UNISWAPV3ETHEREUMTokenDTO) GetLastPriceUsdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.LastPriceUsd.Get(), o.LastPriceUsd.IsSet()
}

// HasLastPriceUsd returns a boolean if a field has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) HasLastPriceUsd() bool {
	if o != nil && o.LastPriceUsd.IsSet() {
		return true
	}

	return false
}

// SetLastPriceUsd gets a reference to the given NullableString and assigns it to the LastPriceUsd field.
func (o *UNISWAPV3ETHEREUMTokenDTO) SetLastPriceUsd(v string) {
	o.LastPriceUsd.Set(&v)
}
// SetLastPriceUsdNil sets the value for LastPriceUsd to be an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) SetLastPriceUsdNil() {
	o.LastPriceUsd.Set(nil)
}

// UnsetLastPriceUsd ensures that no value is present for LastPriceUsd, not even an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) UnsetLastPriceUsd() {
	o.LastPriceUsd.Unset()
}

// GetLastPriceBlockNumber returns the LastPriceBlockNumber field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UNISWAPV3ETHEREUMTokenDTO) GetLastPriceBlockNumber() string {
	if o == nil || IsNil(o.LastPriceBlockNumber.Get()) {
		var ret string
		return ret
	}
	return *o.LastPriceBlockNumber.Get()
}

// GetLastPriceBlockNumberOk returns a tuple with the LastPriceBlockNumber field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UNISWAPV3ETHEREUMTokenDTO) GetLastPriceBlockNumberOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.LastPriceBlockNumber.Get(), o.LastPriceBlockNumber.IsSet()
}

// HasLastPriceBlockNumber returns a boolean if a field has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) HasLastPriceBlockNumber() bool {
	if o != nil && o.LastPriceBlockNumber.IsSet() {
		return true
	}

	return false
}

// SetLastPriceBlockNumber gets a reference to the given NullableString and assigns it to the LastPriceBlockNumber field.
func (o *UNISWAPV3ETHEREUMTokenDTO) SetLastPriceBlockNumber(v string) {
	o.LastPriceBlockNumber.Set(&v)
}
// SetLastPriceBlockNumberNil sets the value for LastPriceBlockNumber to be an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) SetLastPriceBlockNumberNil() {
	o.LastPriceBlockNumber.Set(nil)
}

// UnsetLastPriceBlockNumber ensures that no value is present for LastPriceBlockNumber, not even an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) UnsetLastPriceBlockNumber() {
	o.LastPriceBlockNumber.Unset()
}

// GetLastPricePool returns the LastPricePool field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UNISWAPV3ETHEREUMTokenDTO) GetLastPricePool() string {
	if o == nil || IsNil(o.LastPricePool.Get()) {
		var ret string
		return ret
	}
	return *o.LastPricePool.Get()
}

// GetLastPricePoolOk returns a tuple with the LastPricePool field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UNISWAPV3ETHEREUMTokenDTO) GetLastPricePoolOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.LastPricePool.Get(), o.LastPricePool.IsSet()
}

// HasLastPricePool returns a boolean if a field has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) HasLastPricePool() bool {
	if o != nil && o.LastPricePool.IsSet() {
		return true
	}

	return false
}

// SetLastPricePool gets a reference to the given NullableString and assigns it to the LastPricePool field.
func (o *UNISWAPV3ETHEREUMTokenDTO) SetLastPricePool(v string) {
	o.LastPricePool.Set(&v)
}
// SetLastPricePoolNil sets the value for LastPricePool to be an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) SetLastPricePoolNil() {
	o.LastPricePool.Set(nil)
}

// UnsetLastPricePool ensures that no value is present for LastPricePool, not even an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) UnsetLastPricePool() {
	o.LastPricePool.Unset()
}

// GetTotalSupply returns the TotalSupply field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UNISWAPV3ETHEREUMTokenDTO) GetTotalSupply() string {
	if o == nil || IsNil(o.TotalSupply.Get()) {
		var ret string
		return ret
	}
	return *o.TotalSupply.Get()
}

// GetTotalSupplyOk returns a tuple with the TotalSupply field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UNISWAPV3ETHEREUMTokenDTO) GetTotalSupplyOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.TotalSupply.Get(), o.TotalSupply.IsSet()
}

// HasTotalSupply returns a boolean if a field has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) HasTotalSupply() bool {
	if o != nil && o.TotalSupply.IsSet() {
		return true
	}

	return false
}

// SetTotalSupply gets a reference to the given NullableString and assigns it to the TotalSupply field.
func (o *UNISWAPV3ETHEREUMTokenDTO) SetTotalSupply(v string) {
	o.TotalSupply.Set(&v)
}
// SetTotalSupplyNil sets the value for TotalSupply to be an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) SetTotalSupplyNil() {
	o.TotalSupply.Set(nil)
}

// UnsetTotalSupply ensures that no value is present for TotalSupply, not even an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) UnsetTotalSupply() {
	o.TotalSupply.Unset()
}

// GetTotalValueLockedUsd returns the TotalValueLockedUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UNISWAPV3ETHEREUMTokenDTO) GetTotalValueLockedUsd() string {
	if o == nil || IsNil(o.TotalValueLockedUsd.Get()) {
		var ret string
		return ret
	}
	return *o.TotalValueLockedUsd.Get()
}

// GetTotalValueLockedUsdOk returns a tuple with the TotalValueLockedUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UNISWAPV3ETHEREUMTokenDTO) GetTotalValueLockedUsdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.TotalValueLockedUsd.Get(), o.TotalValueLockedUsd.IsSet()
}

// HasTotalValueLockedUsd returns a boolean if a field has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) HasTotalValueLockedUsd() bool {
	if o != nil && o.TotalValueLockedUsd.IsSet() {
		return true
	}

	return false
}

// SetTotalValueLockedUsd gets a reference to the given NullableString and assigns it to the TotalValueLockedUsd field.
func (o *UNISWAPV3ETHEREUMTokenDTO) SetTotalValueLockedUsd(v string) {
	o.TotalValueLockedUsd.Set(&v)
}
// SetTotalValueLockedUsdNil sets the value for TotalValueLockedUsd to be an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) SetTotalValueLockedUsdNil() {
	o.TotalValueLockedUsd.Set(nil)
}

// UnsetTotalValueLockedUsd ensures that no value is present for TotalValueLockedUsd, not even an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) UnsetTotalValueLockedUsd() {
	o.TotalValueLockedUsd.Unset()
}

// GetLargePriceChangeBuffer returns the LargePriceChangeBuffer field value if set, zero value otherwise.
func (o *UNISWAPV3ETHEREUMTokenDTO) GetLargePriceChangeBuffer() int32 {
	if o == nil || IsNil(o.LargePriceChangeBuffer) {
		var ret int32
		return ret
	}
	return *o.LargePriceChangeBuffer
}

// GetLargePriceChangeBufferOk returns a tuple with the LargePriceChangeBuffer field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) GetLargePriceChangeBufferOk() (*int32, bool) {
	if o == nil || IsNil(o.LargePriceChangeBuffer) {
		return nil, false
	}
	return o.LargePriceChangeBuffer, true
}

// HasLargePriceChangeBuffer returns a boolean if a field has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) HasLargePriceChangeBuffer() bool {
	if o != nil && !IsNil(o.LargePriceChangeBuffer) {
		return true
	}

	return false
}

// SetLargePriceChangeBuffer gets a reference to the given int32 and assigns it to the LargePriceChangeBuffer field.
func (o *UNISWAPV3ETHEREUMTokenDTO) SetLargePriceChangeBuffer(v int32) {
	o.LargePriceChangeBuffer = &v
}

// GetLargeTvlImpactBuffer returns the LargeTvlImpactBuffer field value if set, zero value otherwise.
func (o *UNISWAPV3ETHEREUMTokenDTO) GetLargeTvlImpactBuffer() int32 {
	if o == nil || IsNil(o.LargeTvlImpactBuffer) {
		var ret int32
		return ret
	}
	return *o.LargeTvlImpactBuffer
}

// GetLargeTvlImpactBufferOk returns a tuple with the LargeTvlImpactBuffer field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) GetLargeTvlImpactBufferOk() (*int32, bool) {
	if o == nil || IsNil(o.LargeTvlImpactBuffer) {
		return nil, false
	}
	return o.LargeTvlImpactBuffer, true
}

// HasLargeTvlImpactBuffer returns a boolean if a field has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) HasLargeTvlImpactBuffer() bool {
	if o != nil && !IsNil(o.LargeTvlImpactBuffer) {
		return true
	}

	return false
}

// SetLargeTvlImpactBuffer gets a reference to the given int32 and assigns it to the LargeTvlImpactBuffer field.
func (o *UNISWAPV3ETHEREUMTokenDTO) SetLargeTvlImpactBuffer(v int32) {
	o.LargeTvlImpactBuffer = &v
}

// GetTokenSymbol returns the TokenSymbol field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UNISWAPV3ETHEREUMTokenDTO) GetTokenSymbol() string {
	if o == nil || IsNil(o.TokenSymbol.Get()) {
		var ret string
		return ret
	}
	return *o.TokenSymbol.Get()
}

// GetTokenSymbolOk returns a tuple with the TokenSymbol field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UNISWAPV3ETHEREUMTokenDTO) GetTokenSymbolOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.TokenSymbol.Get(), o.TokenSymbol.IsSet()
}

// HasTokenSymbol returns a boolean if a field has been set.
func (o *UNISWAPV3ETHEREUMTokenDTO) HasTokenSymbol() bool {
	if o != nil && o.TokenSymbol.IsSet() {
		return true
	}

	return false
}

// SetTokenSymbol gets a reference to the given NullableString and assigns it to the TokenSymbol field.
func (o *UNISWAPV3ETHEREUMTokenDTO) SetTokenSymbol(v string) {
	o.TokenSymbol.Set(&v)
}
// SetTokenSymbolNil sets the value for TokenSymbol to be an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) SetTokenSymbolNil() {
	o.TokenSymbol.Set(nil)
}

// UnsetTokenSymbol ensures that no value is present for TokenSymbol, not even an explicit nil
func (o *UNISWAPV3ETHEREUMTokenDTO) UnsetTokenSymbol() {
	o.TokenSymbol.Unset()
}

func (o UNISWAPV3ETHEREUMTokenDTO) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o UNISWAPV3ETHEREUMTokenDTO) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.EntryTime) {
		toSerialize["entry_time"] = o.EntryTime
	}
	if !IsNil(o.RecvTime) {
		toSerialize["recv_time"] = o.RecvTime
	}
	if !IsNil(o.BlockNumber) {
		toSerialize["block_number"] = o.BlockNumber
	}
	if !IsNil(o.Vid) {
		toSerialize["vid"] = o.Vid
	}
	if o.BlockRange.IsSet() {
		toSerialize["block_range"] = o.BlockRange.Get()
	}
	if o.Id.IsSet() {
		toSerialize["id"] = o.Id.Get()
	}
	if o.Name.IsSet() {
		toSerialize["name"] = o.Name.Get()
	}
	if o.Symbol.IsSet() {
		toSerialize["symbol"] = o.Symbol.Get()
	}
	if !IsNil(o.Decimals) {
		toSerialize["decimals"] = o.Decimals
	}
	if o.LastPriceUsd.IsSet() {
		toSerialize["last_price_usd"] = o.LastPriceUsd.Get()
	}
	if o.LastPriceBlockNumber.IsSet() {
		toSerialize["last_price_block_number"] = o.LastPriceBlockNumber.Get()
	}
	if o.LastPricePool.IsSet() {
		toSerialize["last_price_pool"] = o.LastPricePool.Get()
	}
	if o.TotalSupply.IsSet() {
		toSerialize["total_supply"] = o.TotalSupply.Get()
	}
	if o.TotalValueLockedUsd.IsSet() {
		toSerialize["total_value_locked_usd"] = o.TotalValueLockedUsd.Get()
	}
	if !IsNil(o.LargePriceChangeBuffer) {
		toSerialize["large_price_change_buffer"] = o.LargePriceChangeBuffer
	}
	if !IsNil(o.LargeTvlImpactBuffer) {
		toSerialize["large_tvl_impact_buffer"] = o.LargeTvlImpactBuffer
	}
	if o.TokenSymbol.IsSet() {
		toSerialize["token_symbol"] = o.TokenSymbol.Get()
	}
	return toSerialize, nil
}

type NullableUNISWAPV3ETHEREUMTokenDTO struct {
	value *UNISWAPV3ETHEREUMTokenDTO
	isSet bool
}

func (v NullableUNISWAPV3ETHEREUMTokenDTO) Get() *UNISWAPV3ETHEREUMTokenDTO {
	return v.value
}

func (v *NullableUNISWAPV3ETHEREUMTokenDTO) Set(val *UNISWAPV3ETHEREUMTokenDTO) {
	v.value = val
	v.isSet = true
}

func (v NullableUNISWAPV3ETHEREUMTokenDTO) IsSet() bool {
	return v.isSet
}

func (v *NullableUNISWAPV3ETHEREUMTokenDTO) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableUNISWAPV3ETHEREUMTokenDTO(val *UNISWAPV3ETHEREUMTokenDTO) *NullableUNISWAPV3ETHEREUMTokenDTO {
	return &NullableUNISWAPV3ETHEREUMTokenDTO{value: val, isSet: true}
}

func (v NullableUNISWAPV3ETHEREUMTokenDTO) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableUNISWAPV3ETHEREUMTokenDTO) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


