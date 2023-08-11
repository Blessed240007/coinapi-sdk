#
# On Chain Dapps - REST API
#  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
# Version: v1
# Contact: support@coinapi.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Pool-level metadata.

.PARAMETER EntryTime
No description available.
.PARAMETER RecvTime
No description available.
.PARAMETER BlockNumber
Number of block in which entity was recorded.
.PARAMETER Vid
.
.PARAMETER BlockRange
Block range of the liquidity pool.
.PARAMETER Id
Smart contract address of the pool.
.PARAMETER Protocol
Protocol this pool belongs to.
.PARAMETER Name
Name of liquidity pool (e.g. Curve.fi DAI/USDC/USDT).
.PARAMETER Symbol
Symbol of liquidity pool (e.g. 3CRV).
.PARAMETER LiquidityToken
Token that is to represent ownership of liquidity.
.PARAMETER InputTokens
Tokens that need to be deposited to take a position in protocol. e.g. WETH and USDC to deposit into the WETH-USDC pool. Array to account for multi-asset pools like Curve and Balancer.
.PARAMETER RewardTokens
Additional tokens that are given as reward for position in a protocol, usually in liquidity mining programs. e.g. SUSHI in the Onsen program, MATIC for Aave Polygon, usually in liquidity mining programs. e.g. SUSHI in the Onsen program, MATIC for Aave Polygon.
.PARAMETER Fees
Fees per trade incurred to the user. Should include all fees that apply to a pool (e.g. Curve has a trading fee AND an admin fee, which is a portion of the trading fee. Uniswap only has a trading fee and no protocol fee.).
.PARAMETER IsSingleSided
Specifies whether this pool is single-sided (e.g. Bancor, Platypus's Alternative Pool). The specifics of the implementation depends on the protocol.
.PARAMETER CreatedTimestamp
Timestamp when the liquidity pool was created.
.PARAMETER CreatedBlockNumber
Block number when the liquidity pool was created.
.PARAMETER Tick
Current tick representing the price of token0/token1.
.PARAMETER TotalValueLockedUsd
Current TVL (Total Value Locked) of this pool in USD.
.PARAMETER TotalLiquidity
Sum of all active and non-active liquidity for this pool.
.PARAMETER TotalLiquidityUsd
Sum of all active and non-active liquidity in USD for this pool.
.PARAMETER ActiveLiquidity
All liquidity `k` that is active. Will be equal to totalLiquidity except for in concentrated liquidity - where activeLiquidity is all liquidity positions that contain the pools current tick.
.PARAMETER ActiveLiquidityUsd
All liquidity in USD that is active. Will be equal to totalLiquidity except for in concentrated liquidity - where activeLiquidity is all liquidity positions that contain the pools current tick.
.PARAMETER UncollectedProtocolSideTokenAmounts
All protocol-side value locked in token amounts that remains uncollected and unused in the pool.
.PARAMETER UncollectedProtocolSideValuesUsd
All protocol-side value locking in USD that remains uncollected and unused in the pool.
.PARAMETER UncollectedSupplySideTokenAmounts
All supply-side value locked in token amounts that remains uncollected and unused in the pool.
.PARAMETER UncollectedSupplySideValuesUsd
All supply-side value locked in USD that remains uncollected and unused in the pool.
.PARAMETER CumulativeSupplySideRevenueUsd
All revenue generated by the liquidity pool, accrued to the supply side.
.PARAMETER CumulativeProtocolSideRevenueUsd
All revenue generated by the liquidity pool, accrued to the protocol.
.PARAMETER CumulativeTotalRevenueUsd
 All revenue generated by the liquidity pool.
.PARAMETER CumulativeVolumeByTokenAmount
All trade volume occurred for a specific input token, in native amount. The ordering should be the same as the pool's `inputTokens` field.
.PARAMETER CumulativeVolumeByTokenUsd
All trade volume occurred for a specific input token, in USD. The ordering should be the same as the pool's `inputTokens` field.
.PARAMETER CumulativeVolumeUsd
All trade volume occurred for a specific input token, in USD. The ordering should be the same as the pool's `inputTokens` field.
.PARAMETER InputTokenBalances
Amount of input tokens in the pool. The ordering should be the same as the pool's `inputTokens` field.
.PARAMETER InputTokenBalancesUsd
Amount of input tokens in USD in the pool. The ordering should be the same as the pool's `inputTokens` field.
.PARAMETER InputTokenWeights
Weights of input tokens in the liquidity pool in percentage values. For example, 50/50 for Uniswap pools, 48.2/51.8 for a Curve pool, 10/10/80 for a Balancer pool.
.PARAMETER StakedOutputTokenAmount
Total supply of output tokens that are staked (usually in the MasterChef contract). Used to calculate reward APY.
.PARAMETER RewardTokenEmissionsAmount
Per-block reward token emission as of the current block normalized to a day, in token's native amount. This should be ideally calculated as the theoretical rate instead of the realized amount.
.PARAMETER RewardTokenEmissionsUsd
Per-block reward token emission as of the current block normalized to a day, in USD value. This should be ideally calculated as the theoretical rate instead of the realized amount.
.PARAMETER CumulativeDepositCount
Total number of deposits (add liquidity).
.PARAMETER CumulativeWithdrawCount
Total number of withdrawals (remove liquidity).
.PARAMETER CumulativeSwapCount
Total number of trades (swaps).
.PARAMETER PositionCount
Number of positions in this market.
.PARAMETER OpenPositionCount
Number of open positions in this market.
.PARAMETER ClosedPositionCount
Number of closed positions in this market.
.PARAMETER LastSnapshotDayId
Day ID of the most recent daily snapshot.
.PARAMETER LastSnapshotHourId
Hour ID of the most recent hourly snapshot.
.PARAMETER LastUpdateTimestamp
Timestamp of the last time this entity was updated.
.PARAMETER LastUpdateBlockNumber
Block number of the last time this entity was updated.
.PARAMETER EvaluatedAsk
Evaluated ask value of the liquidity pool.
.OUTPUTS

UNISWAPV3ETHEREUMLiquidityPoolDTO<PSCustomObject>
#>

function Initialize-UNISWAPV3ETHEREUMLiquidityPoolDTO {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${EntryTime},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${RecvTime},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${BlockNumber},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Vid},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BlockRange},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Protocol},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Symbol},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LiquidityToken},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${InputTokens},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${RewardTokens},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Fees},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsSingleSided},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CreatedTimestamp},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CreatedBlockNumber},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Tick},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TotalValueLockedUsd},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TotalLiquidity},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TotalLiquidityUsd},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ActiveLiquidity},
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ActiveLiquidityUsd},
        [Parameter(Position = 22, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${UncollectedProtocolSideTokenAmounts},
        [Parameter(Position = 23, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${UncollectedProtocolSideValuesUsd},
        [Parameter(Position = 24, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${UncollectedSupplySideTokenAmounts},
        [Parameter(Position = 25, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${UncollectedSupplySideValuesUsd},
        [Parameter(Position = 26, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CumulativeSupplySideRevenueUsd},
        [Parameter(Position = 27, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CumulativeProtocolSideRevenueUsd},
        [Parameter(Position = 28, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CumulativeTotalRevenueUsd},
        [Parameter(Position = 29, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${CumulativeVolumeByTokenAmount},
        [Parameter(Position = 30, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${CumulativeVolumeByTokenUsd},
        [Parameter(Position = 31, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CumulativeVolumeUsd},
        [Parameter(Position = 32, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${InputTokenBalances},
        [Parameter(Position = 33, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${InputTokenBalancesUsd},
        [Parameter(Position = 34, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${InputTokenWeights},
        [Parameter(Position = 35, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StakedOutputTokenAmount},
        [Parameter(Position = 36, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${RewardTokenEmissionsAmount},
        [Parameter(Position = 37, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${RewardTokenEmissionsUsd},
        [Parameter(Position = 38, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${CumulativeDepositCount},
        [Parameter(Position = 39, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${CumulativeWithdrawCount},
        [Parameter(Position = 40, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${CumulativeSwapCount},
        [Parameter(Position = 41, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PositionCount},
        [Parameter(Position = 42, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${OpenPositionCount},
        [Parameter(Position = 43, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ClosedPositionCount},
        [Parameter(Position = 44, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${LastSnapshotDayId},
        [Parameter(Position = 45, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${LastSnapshotHourId},
        [Parameter(Position = 46, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastUpdateTimestamp},
        [Parameter(Position = 47, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastUpdateBlockNumber},
        [Parameter(Position = 48, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${EvaluatedAsk}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => UNISWAPV3ETHEREUMLiquidityPoolDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "entry_time" = ${EntryTime}
            "recv_time" = ${RecvTime}
            "block_number" = ${BlockNumber}
            "vid" = ${Vid}
            "block_range" = ${BlockRange}
            "id" = ${Id}
            "protocol" = ${Protocol}
            "name" = ${Name}
            "symbol" = ${Symbol}
            "liquidity_token" = ${LiquidityToken}
            "input_tokens" = ${InputTokens}
            "reward_tokens" = ${RewardTokens}
            "fees" = ${Fees}
            "is_single_sided" = ${IsSingleSided}
            "created_timestamp" = ${CreatedTimestamp}
            "created_block_number" = ${CreatedBlockNumber}
            "tick" = ${Tick}
            "total_value_locked_usd" = ${TotalValueLockedUsd}
            "total_liquidity" = ${TotalLiquidity}
            "total_liquidity_usd" = ${TotalLiquidityUsd}
            "active_liquidity" = ${ActiveLiquidity}
            "active_liquidity_usd" = ${ActiveLiquidityUsd}
            "uncollected_protocol_side_token_amounts" = ${UncollectedProtocolSideTokenAmounts}
            "uncollected_protocol_side_values_usd" = ${UncollectedProtocolSideValuesUsd}
            "uncollected_supply_side_token_amounts" = ${UncollectedSupplySideTokenAmounts}
            "uncollected_supply_side_values_usd" = ${UncollectedSupplySideValuesUsd}
            "cumulative_supply_side_revenue_usd" = ${CumulativeSupplySideRevenueUsd}
            "cumulative_protocol_side_revenue_usd" = ${CumulativeProtocolSideRevenueUsd}
            "cumulative_total_revenue_usd" = ${CumulativeTotalRevenueUsd}
            "cumulative_volume_by_token_amount" = ${CumulativeVolumeByTokenAmount}
            "cumulative_volume_by_token_usd" = ${CumulativeVolumeByTokenUsd}
            "cumulative_volume_usd" = ${CumulativeVolumeUsd}
            "input_token_balances" = ${InputTokenBalances}
            "input_token_balances_usd" = ${InputTokenBalancesUsd}
            "input_token_weights" = ${InputTokenWeights}
            "staked_output_token_amount" = ${StakedOutputTokenAmount}
            "reward_token_emissions_amount" = ${RewardTokenEmissionsAmount}
            "reward_token_emissions_usd" = ${RewardTokenEmissionsUsd}
            "cumulative_deposit_count" = ${CumulativeDepositCount}
            "cumulative_withdraw_count" = ${CumulativeWithdrawCount}
            "cumulative_swap_count" = ${CumulativeSwapCount}
            "position_count" = ${PositionCount}
            "open_position_count" = ${OpenPositionCount}
            "closed_position_count" = ${ClosedPositionCount}
            "last_snapshot_day_id" = ${LastSnapshotDayId}
            "last_snapshot_hour_id" = ${LastSnapshotHourId}
            "last_update_timestamp" = ${LastUpdateTimestamp}
            "last_update_block_number" = ${LastUpdateBlockNumber}
            "evaluated_ask" = ${EvaluatedAsk}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UNISWAPV3ETHEREUMLiquidityPoolDTO<PSCustomObject>

.DESCRIPTION

Convert from JSON to UNISWAPV3ETHEREUMLiquidityPoolDTO<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UNISWAPV3ETHEREUMLiquidityPoolDTO<PSCustomObject>
#>
function ConvertFrom-JsonToUNISWAPV3ETHEREUMLiquidityPoolDTO {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => UNISWAPV3ETHEREUMLiquidityPoolDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UNISWAPV3ETHEREUMLiquidityPoolDTO
        $AllProperties = ("entry_time", "recv_time", "block_number", "vid", "block_range", "id", "protocol", "name", "symbol", "liquidity_token", "input_tokens", "reward_tokens", "fees", "is_single_sided", "created_timestamp", "created_block_number", "tick", "total_value_locked_usd", "total_liquidity", "total_liquidity_usd", "active_liquidity", "active_liquidity_usd", "uncollected_protocol_side_token_amounts", "uncollected_protocol_side_values_usd", "uncollected_supply_side_token_amounts", "uncollected_supply_side_values_usd", "cumulative_supply_side_revenue_usd", "cumulative_protocol_side_revenue_usd", "cumulative_total_revenue_usd", "cumulative_volume_by_token_amount", "cumulative_volume_by_token_usd", "cumulative_volume_usd", "input_token_balances", "input_token_balances_usd", "input_token_weights", "staked_output_token_amount", "reward_token_emissions_amount", "reward_token_emissions_usd", "cumulative_deposit_count", "cumulative_withdraw_count", "cumulative_swap_count", "position_count", "open_position_count", "closed_position_count", "last_snapshot_day_id", "last_snapshot_hour_id", "last_update_timestamp", "last_update_block_number", "evaluated_ask")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entry_time"))) { #optional property not found
            $EntryTime = $null
        } else {
            $EntryTime = $JsonParameters.PSobject.Properties["entry_time"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recv_time"))) { #optional property not found
            $RecvTime = $null
        } else {
            $RecvTime = $JsonParameters.PSobject.Properties["recv_time"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "block_number"))) { #optional property not found
            $BlockNumber = $null
        } else {
            $BlockNumber = $JsonParameters.PSobject.Properties["block_number"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "vid"))) { #optional property not found
            $Vid = $null
        } else {
            $Vid = $JsonParameters.PSobject.Properties["vid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "block_range"))) { #optional property not found
            $BlockRange = $null
        } else {
            $BlockRange = $JsonParameters.PSobject.Properties["block_range"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "protocol"))) { #optional property not found
            $Protocol = $null
        } else {
            $Protocol = $JsonParameters.PSobject.Properties["protocol"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "symbol"))) { #optional property not found
            $Symbol = $null
        } else {
            $Symbol = $JsonParameters.PSobject.Properties["symbol"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "liquidity_token"))) { #optional property not found
            $LiquidityToken = $null
        } else {
            $LiquidityToken = $JsonParameters.PSobject.Properties["liquidity_token"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "input_tokens"))) { #optional property not found
            $InputTokens = $null
        } else {
            $InputTokens = $JsonParameters.PSobject.Properties["input_tokens"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reward_tokens"))) { #optional property not found
            $RewardTokens = $null
        } else {
            $RewardTokens = $JsonParameters.PSobject.Properties["reward_tokens"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fees"))) { #optional property not found
            $Fees = $null
        } else {
            $Fees = $JsonParameters.PSobject.Properties["fees"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "is_single_sided"))) { #optional property not found
            $IsSingleSided = $null
        } else {
            $IsSingleSided = $JsonParameters.PSobject.Properties["is_single_sided"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created_timestamp"))) { #optional property not found
            $CreatedTimestamp = $null
        } else {
            $CreatedTimestamp = $JsonParameters.PSobject.Properties["created_timestamp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created_block_number"))) { #optional property not found
            $CreatedBlockNumber = $null
        } else {
            $CreatedBlockNumber = $JsonParameters.PSobject.Properties["created_block_number"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tick"))) { #optional property not found
            $Tick = $null
        } else {
            $Tick = $JsonParameters.PSobject.Properties["tick"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "total_value_locked_usd"))) { #optional property not found
            $TotalValueLockedUsd = $null
        } else {
            $TotalValueLockedUsd = $JsonParameters.PSobject.Properties["total_value_locked_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "total_liquidity"))) { #optional property not found
            $TotalLiquidity = $null
        } else {
            $TotalLiquidity = $JsonParameters.PSobject.Properties["total_liquidity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "total_liquidity_usd"))) { #optional property not found
            $TotalLiquidityUsd = $null
        } else {
            $TotalLiquidityUsd = $JsonParameters.PSobject.Properties["total_liquidity_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "active_liquidity"))) { #optional property not found
            $ActiveLiquidity = $null
        } else {
            $ActiveLiquidity = $JsonParameters.PSobject.Properties["active_liquidity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "active_liquidity_usd"))) { #optional property not found
            $ActiveLiquidityUsd = $null
        } else {
            $ActiveLiquidityUsd = $JsonParameters.PSobject.Properties["active_liquidity_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uncollected_protocol_side_token_amounts"))) { #optional property not found
            $UncollectedProtocolSideTokenAmounts = $null
        } else {
            $UncollectedProtocolSideTokenAmounts = $JsonParameters.PSobject.Properties["uncollected_protocol_side_token_amounts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uncollected_protocol_side_values_usd"))) { #optional property not found
            $UncollectedProtocolSideValuesUsd = $null
        } else {
            $UncollectedProtocolSideValuesUsd = $JsonParameters.PSobject.Properties["uncollected_protocol_side_values_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uncollected_supply_side_token_amounts"))) { #optional property not found
            $UncollectedSupplySideTokenAmounts = $null
        } else {
            $UncollectedSupplySideTokenAmounts = $JsonParameters.PSobject.Properties["uncollected_supply_side_token_amounts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uncollected_supply_side_values_usd"))) { #optional property not found
            $UncollectedSupplySideValuesUsd = $null
        } else {
            $UncollectedSupplySideValuesUsd = $JsonParameters.PSobject.Properties["uncollected_supply_side_values_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cumulative_supply_side_revenue_usd"))) { #optional property not found
            $CumulativeSupplySideRevenueUsd = $null
        } else {
            $CumulativeSupplySideRevenueUsd = $JsonParameters.PSobject.Properties["cumulative_supply_side_revenue_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cumulative_protocol_side_revenue_usd"))) { #optional property not found
            $CumulativeProtocolSideRevenueUsd = $null
        } else {
            $CumulativeProtocolSideRevenueUsd = $JsonParameters.PSobject.Properties["cumulative_protocol_side_revenue_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cumulative_total_revenue_usd"))) { #optional property not found
            $CumulativeTotalRevenueUsd = $null
        } else {
            $CumulativeTotalRevenueUsd = $JsonParameters.PSobject.Properties["cumulative_total_revenue_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cumulative_volume_by_token_amount"))) { #optional property not found
            $CumulativeVolumeByTokenAmount = $null
        } else {
            $CumulativeVolumeByTokenAmount = $JsonParameters.PSobject.Properties["cumulative_volume_by_token_amount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cumulative_volume_by_token_usd"))) { #optional property not found
            $CumulativeVolumeByTokenUsd = $null
        } else {
            $CumulativeVolumeByTokenUsd = $JsonParameters.PSobject.Properties["cumulative_volume_by_token_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cumulative_volume_usd"))) { #optional property not found
            $CumulativeVolumeUsd = $null
        } else {
            $CumulativeVolumeUsd = $JsonParameters.PSobject.Properties["cumulative_volume_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "input_token_balances"))) { #optional property not found
            $InputTokenBalances = $null
        } else {
            $InputTokenBalances = $JsonParameters.PSobject.Properties["input_token_balances"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "input_token_balances_usd"))) { #optional property not found
            $InputTokenBalancesUsd = $null
        } else {
            $InputTokenBalancesUsd = $JsonParameters.PSobject.Properties["input_token_balances_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "input_token_weights"))) { #optional property not found
            $InputTokenWeights = $null
        } else {
            $InputTokenWeights = $JsonParameters.PSobject.Properties["input_token_weights"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "staked_output_token_amount"))) { #optional property not found
            $StakedOutputTokenAmount = $null
        } else {
            $StakedOutputTokenAmount = $JsonParameters.PSobject.Properties["staked_output_token_amount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reward_token_emissions_amount"))) { #optional property not found
            $RewardTokenEmissionsAmount = $null
        } else {
            $RewardTokenEmissionsAmount = $JsonParameters.PSobject.Properties["reward_token_emissions_amount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reward_token_emissions_usd"))) { #optional property not found
            $RewardTokenEmissionsUsd = $null
        } else {
            $RewardTokenEmissionsUsd = $JsonParameters.PSobject.Properties["reward_token_emissions_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cumulative_deposit_count"))) { #optional property not found
            $CumulativeDepositCount = $null
        } else {
            $CumulativeDepositCount = $JsonParameters.PSobject.Properties["cumulative_deposit_count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cumulative_withdraw_count"))) { #optional property not found
            $CumulativeWithdrawCount = $null
        } else {
            $CumulativeWithdrawCount = $JsonParameters.PSobject.Properties["cumulative_withdraw_count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cumulative_swap_count"))) { #optional property not found
            $CumulativeSwapCount = $null
        } else {
            $CumulativeSwapCount = $JsonParameters.PSobject.Properties["cumulative_swap_count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "position_count"))) { #optional property not found
            $PositionCount = $null
        } else {
            $PositionCount = $JsonParameters.PSobject.Properties["position_count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "open_position_count"))) { #optional property not found
            $OpenPositionCount = $null
        } else {
            $OpenPositionCount = $JsonParameters.PSobject.Properties["open_position_count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "closed_position_count"))) { #optional property not found
            $ClosedPositionCount = $null
        } else {
            $ClosedPositionCount = $JsonParameters.PSobject.Properties["closed_position_count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "last_snapshot_day_id"))) { #optional property not found
            $LastSnapshotDayId = $null
        } else {
            $LastSnapshotDayId = $JsonParameters.PSobject.Properties["last_snapshot_day_id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "last_snapshot_hour_id"))) { #optional property not found
            $LastSnapshotHourId = $null
        } else {
            $LastSnapshotHourId = $JsonParameters.PSobject.Properties["last_snapshot_hour_id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "last_update_timestamp"))) { #optional property not found
            $LastUpdateTimestamp = $null
        } else {
            $LastUpdateTimestamp = $JsonParameters.PSobject.Properties["last_update_timestamp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "last_update_block_number"))) { #optional property not found
            $LastUpdateBlockNumber = $null
        } else {
            $LastUpdateBlockNumber = $JsonParameters.PSobject.Properties["last_update_block_number"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "evaluated_ask"))) { #optional property not found
            $EvaluatedAsk = $null
        } else {
            $EvaluatedAsk = $JsonParameters.PSobject.Properties["evaluated_ask"].value
        }

        $PSO = [PSCustomObject]@{
            "entry_time" = ${EntryTime}
            "recv_time" = ${RecvTime}
            "block_number" = ${BlockNumber}
            "vid" = ${Vid}
            "block_range" = ${BlockRange}
            "id" = ${Id}
            "protocol" = ${Protocol}
            "name" = ${Name}
            "symbol" = ${Symbol}
            "liquidity_token" = ${LiquidityToken}
            "input_tokens" = ${InputTokens}
            "reward_tokens" = ${RewardTokens}
            "fees" = ${Fees}
            "is_single_sided" = ${IsSingleSided}
            "created_timestamp" = ${CreatedTimestamp}
            "created_block_number" = ${CreatedBlockNumber}
            "tick" = ${Tick}
            "total_value_locked_usd" = ${TotalValueLockedUsd}
            "total_liquidity" = ${TotalLiquidity}
            "total_liquidity_usd" = ${TotalLiquidityUsd}
            "active_liquidity" = ${ActiveLiquidity}
            "active_liquidity_usd" = ${ActiveLiquidityUsd}
            "uncollected_protocol_side_token_amounts" = ${UncollectedProtocolSideTokenAmounts}
            "uncollected_protocol_side_values_usd" = ${UncollectedProtocolSideValuesUsd}
            "uncollected_supply_side_token_amounts" = ${UncollectedSupplySideTokenAmounts}
            "uncollected_supply_side_values_usd" = ${UncollectedSupplySideValuesUsd}
            "cumulative_supply_side_revenue_usd" = ${CumulativeSupplySideRevenueUsd}
            "cumulative_protocol_side_revenue_usd" = ${CumulativeProtocolSideRevenueUsd}
            "cumulative_total_revenue_usd" = ${CumulativeTotalRevenueUsd}
            "cumulative_volume_by_token_amount" = ${CumulativeVolumeByTokenAmount}
            "cumulative_volume_by_token_usd" = ${CumulativeVolumeByTokenUsd}
            "cumulative_volume_usd" = ${CumulativeVolumeUsd}
            "input_token_balances" = ${InputTokenBalances}
            "input_token_balances_usd" = ${InputTokenBalancesUsd}
            "input_token_weights" = ${InputTokenWeights}
            "staked_output_token_amount" = ${StakedOutputTokenAmount}
            "reward_token_emissions_amount" = ${RewardTokenEmissionsAmount}
            "reward_token_emissions_usd" = ${RewardTokenEmissionsUsd}
            "cumulative_deposit_count" = ${CumulativeDepositCount}
            "cumulative_withdraw_count" = ${CumulativeWithdrawCount}
            "cumulative_swap_count" = ${CumulativeSwapCount}
            "position_count" = ${PositionCount}
            "open_position_count" = ${OpenPositionCount}
            "closed_position_count" = ${ClosedPositionCount}
            "last_snapshot_day_id" = ${LastSnapshotDayId}
            "last_snapshot_hour_id" = ${LastSnapshotHourId}
            "last_update_timestamp" = ${LastUpdateTimestamp}
            "last_update_block_number" = ${LastUpdateBlockNumber}
            "evaluated_ask" = ${EvaluatedAsk}
        }

        return $PSO
    }

}

