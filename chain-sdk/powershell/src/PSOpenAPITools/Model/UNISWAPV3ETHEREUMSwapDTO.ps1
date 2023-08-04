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

Trade (swap) event occurred in a pool.

.PARAMETER EntryTime
No description available.
.PARAMETER RecvTime
No description available.
.PARAMETER BlockNumber
Number of block in which entity was recorded.
.PARAMETER Block
Block number in which the swap operation was recorded.
.PARAMETER Id
Unique string identifier of the swap operation, format: (transaction hash)-(log index).
.PARAMETER Hash
Transaction hash of the transaction that emitted this event.
.PARAMETER Nonce
Nonce of the transaction that emitted this event.
.PARAMETER LogIndex
Event log index. For transactions that don't emit event, create arbitrary index starting from 0.
.PARAMETER GasLimit
Gas limit of the transaction that emitted this event.
.PARAMETER GasUsed
Gas used in this transaction.
.PARAMETER GasPrice
Gas price of the transaction that emitted this event.
.PARAMETER Protocol
The protocol this transaction belongs to.
.PARAMETER Account
Account that emitted this event.
.PARAMETER Pool
The pool involving this event.
.PARAMETER Timestamp
Timestamp of this event.
.PARAMETER Tick
Tick of the swap operation.
.PARAMETER TokenIn
Token deposited into pool.
.PARAMETER AmountIn
Amount of token deposited into pool in native units.
.PARAMETER AmountInUsd
Amount of token deposited into pool in USD.
.PARAMETER TokenOut
Token withdrawn from pool.
.PARAMETER AmountOut
Amount of token withdrawn from pool in native units.
.PARAMETER AmountOutUsd
Amount of token withdrawn from pool in USD.
.PARAMETER ReserveAmounts
Amount of input tokens in the liquidity pool.
.PARAMETER PoolId
No description available.
.PARAMETER TransactionId
No description available.
.PARAMETER EvaluatedPrice
No description available.
.PARAMETER EvaluatedAmount
No description available.
.PARAMETER EvaluatedAggressor
No description available.
.OUTPUTS

UNISWAPV3ETHEREUMSwapDTO<PSCustomObject>
#>

function Initialize-UNISWAPV3ETHEREUMSwapDTO {
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
        [System.Nullable[Int32]]
        ${Block},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Hash},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Nonce},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${LogIndex},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GasLimit},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GasUsed},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GasPrice},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Protocol},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Account},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Pool},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Timestamp},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Tick},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TokenIn},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AmountIn},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AmountInUsd},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TokenOut},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AmountOut},
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AmountOutUsd},
        [Parameter(Position = 22, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ReserveAmounts},
        [Parameter(Position = 23, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PoolId},
        [Parameter(Position = 24, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TransactionId},
        [Parameter(Position = 25, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${EvaluatedPrice},
        [Parameter(Position = 26, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${EvaluatedAmount},
        [Parameter(Position = 27, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Buy", "Sell", "EstimatedBuy", "EstimatedSell", "Unknown")]
        [PSCustomObject]
        ${EvaluatedAggressor}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => UNISWAPV3ETHEREUMSwapDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "entry_time" = ${EntryTime}
            "recv_time" = ${RecvTime}
            "block_number" = ${BlockNumber}
            "block_" = ${Block}
            "id" = ${Id}
            "hash" = ${Hash}
            "nonce" = ${Nonce}
            "log_index" = ${LogIndex}
            "gas_limit" = ${GasLimit}
            "gas_used" = ${GasUsed}
            "gas_price" = ${GasPrice}
            "protocol" = ${Protocol}
            "account" = ${Account}
            "pool" = ${Pool}
            "timestamp" = ${Timestamp}
            "tick" = ${Tick}
            "token_in" = ${TokenIn}
            "amount_in" = ${AmountIn}
            "amount_in_usd" = ${AmountInUsd}
            "token_out" = ${TokenOut}
            "amount_out" = ${AmountOut}
            "amount_out_usd" = ${AmountOutUsd}
            "reserve_amounts" = ${ReserveAmounts}
            "pool_id" = ${PoolId}
            "transaction_id" = ${TransactionId}
            "evaluated_price" = ${EvaluatedPrice}
            "evaluated_amount" = ${EvaluatedAmount}
            "evaluated_aggressor" = ${EvaluatedAggressor}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UNISWAPV3ETHEREUMSwapDTO<PSCustomObject>

.DESCRIPTION

Convert from JSON to UNISWAPV3ETHEREUMSwapDTO<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UNISWAPV3ETHEREUMSwapDTO<PSCustomObject>
#>
function ConvertFrom-JsonToUNISWAPV3ETHEREUMSwapDTO {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => UNISWAPV3ETHEREUMSwapDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UNISWAPV3ETHEREUMSwapDTO
        $AllProperties = ("entry_time", "recv_time", "block_number", "block_", "id", "hash", "nonce", "log_index", "gas_limit", "gas_used", "gas_price", "protocol", "account", "pool", "timestamp", "tick", "token_in", "amount_in", "amount_in_usd", "token_out", "amount_out", "amount_out_usd", "reserve_amounts", "pool_id", "transaction_id", "evaluated_price", "evaluated_amount", "evaluated_aggressor")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "block_"))) { #optional property not found
            $Block = $null
        } else {
            $Block = $JsonParameters.PSobject.Properties["block_"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hash"))) { #optional property not found
            $Hash = $null
        } else {
            $Hash = $JsonParameters.PSobject.Properties["hash"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nonce"))) { #optional property not found
            $Nonce = $null
        } else {
            $Nonce = $JsonParameters.PSobject.Properties["nonce"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "log_index"))) { #optional property not found
            $LogIndex = $null
        } else {
            $LogIndex = $JsonParameters.PSobject.Properties["log_index"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "gas_limit"))) { #optional property not found
            $GasLimit = $null
        } else {
            $GasLimit = $JsonParameters.PSobject.Properties["gas_limit"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "gas_used"))) { #optional property not found
            $GasUsed = $null
        } else {
            $GasUsed = $JsonParameters.PSobject.Properties["gas_used"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "gas_price"))) { #optional property not found
            $GasPrice = $null
        } else {
            $GasPrice = $JsonParameters.PSobject.Properties["gas_price"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "protocol"))) { #optional property not found
            $Protocol = $null
        } else {
            $Protocol = $JsonParameters.PSobject.Properties["protocol"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "account"))) { #optional property not found
            $Account = $null
        } else {
            $Account = $JsonParameters.PSobject.Properties["account"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pool"))) { #optional property not found
            $Pool = $null
        } else {
            $Pool = $JsonParameters.PSobject.Properties["pool"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timestamp"))) { #optional property not found
            $Timestamp = $null
        } else {
            $Timestamp = $JsonParameters.PSobject.Properties["timestamp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tick"))) { #optional property not found
            $Tick = $null
        } else {
            $Tick = $JsonParameters.PSobject.Properties["tick"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "token_in"))) { #optional property not found
            $TokenIn = $null
        } else {
            $TokenIn = $JsonParameters.PSobject.Properties["token_in"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "amount_in"))) { #optional property not found
            $AmountIn = $null
        } else {
            $AmountIn = $JsonParameters.PSobject.Properties["amount_in"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "amount_in_usd"))) { #optional property not found
            $AmountInUsd = $null
        } else {
            $AmountInUsd = $JsonParameters.PSobject.Properties["amount_in_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "token_out"))) { #optional property not found
            $TokenOut = $null
        } else {
            $TokenOut = $JsonParameters.PSobject.Properties["token_out"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "amount_out"))) { #optional property not found
            $AmountOut = $null
        } else {
            $AmountOut = $JsonParameters.PSobject.Properties["amount_out"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "amount_out_usd"))) { #optional property not found
            $AmountOutUsd = $null
        } else {
            $AmountOutUsd = $JsonParameters.PSobject.Properties["amount_out_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reserve_amounts"))) { #optional property not found
            $ReserveAmounts = $null
        } else {
            $ReserveAmounts = $JsonParameters.PSobject.Properties["reserve_amounts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pool_id"))) { #optional property not found
            $PoolId = $null
        } else {
            $PoolId = $JsonParameters.PSobject.Properties["pool_id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "transaction_id"))) { #optional property not found
            $TransactionId = $null
        } else {
            $TransactionId = $JsonParameters.PSobject.Properties["transaction_id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "evaluated_price"))) { #optional property not found
            $EvaluatedPrice = $null
        } else {
            $EvaluatedPrice = $JsonParameters.PSobject.Properties["evaluated_price"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "evaluated_amount"))) { #optional property not found
            $EvaluatedAmount = $null
        } else {
            $EvaluatedAmount = $JsonParameters.PSobject.Properties["evaluated_amount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "evaluated_aggressor"))) { #optional property not found
            $EvaluatedAggressor = $null
        } else {
            $EvaluatedAggressor = $JsonParameters.PSobject.Properties["evaluated_aggressor"].value
        }

        $PSO = [PSCustomObject]@{
            "entry_time" = ${EntryTime}
            "recv_time" = ${RecvTime}
            "block_number" = ${BlockNumber}
            "block_" = ${Block}
            "id" = ${Id}
            "hash" = ${Hash}
            "nonce" = ${Nonce}
            "log_index" = ${LogIndex}
            "gas_limit" = ${GasLimit}
            "gas_used" = ${GasUsed}
            "gas_price" = ${GasPrice}
            "protocol" = ${Protocol}
            "account" = ${Account}
            "pool" = ${Pool}
            "timestamp" = ${Timestamp}
            "tick" = ${Tick}
            "token_in" = ${TokenIn}
            "amount_in" = ${AmountIn}
            "amount_in_usd" = ${AmountInUsd}
            "token_out" = ${TokenOut}
            "amount_out" = ${AmountOut}
            "amount_out_usd" = ${AmountOutUsd}
            "reserve_amounts" = ${ReserveAmounts}
            "pool_id" = ${PoolId}
            "transaction_id" = ${TransactionId}
            "evaluated_price" = ${EvaluatedPrice}
            "evaluated_amount" = ${EvaluatedAmount}
            "evaluated_aggressor" = ${EvaluatedAggressor}
        }

        return $PSO
    }

}

