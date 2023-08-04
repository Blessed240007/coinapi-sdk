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



.PARAMETER EntryTime
No description available.
.PARAMETER RecvTime
No description available.
.PARAMETER BlockNumber
Number of block in which entity was recorded.
.PARAMETER Id
ID is # of days since Unix epoch time
.PARAMETER Day
Number of days since Unix epoch time
.PARAMETER Protocol
Protocol this snapshot is associated with
.PARAMETER DailyActiveUsers
Number of unique daily active users
.PARAMETER CumulativeUniqueUsers
Number of cumulative unique users
.PARAMETER DailyTransactionCount
Total number of transactions occurred in a day. Transactions include all entities that implement the Event interface.
.PARAMETER TotalPoolCount
Total number of pools
.PARAMETER DailyDepositCount
Total number of deposits (add liquidity) in an day
.PARAMETER DailyWithdrawCount
Total number of withdrawals (remove liquidity) in an day
.PARAMETER DailySwapCount
Total number of trades (swaps) in an day
.PARAMETER Timestamp
Timestamp of when this snapshot was taken/last modified (May be taken after interval has passed)
.OUTPUTS

UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO<PSCustomObject>
#>

function Initialize-UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO {
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
        [String]
        ${Id},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Day},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Protocol},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${DailyActiveUsers},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${CumulativeUniqueUsers},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${DailyTransactionCount},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${TotalPoolCount},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${DailyDepositCount},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${DailyWithdrawCount},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${DailySwapCount},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Timestamp}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "entry_time" = ${EntryTime}
            "recv_time" = ${RecvTime}
            "block_number" = ${BlockNumber}
            "id" = ${Id}
            "day" = ${Day}
            "protocol" = ${Protocol}
            "daily_active_users" = ${DailyActiveUsers}
            "cumulative_unique_users" = ${CumulativeUniqueUsers}
            "daily_transaction_count" = ${DailyTransactionCount}
            "total_pool_count" = ${TotalPoolCount}
            "daily_deposit_count" = ${DailyDepositCount}
            "daily_withdraw_count" = ${DailyWithdrawCount}
            "daily_swap_count" = ${DailySwapCount}
            "timestamp" = ${Timestamp}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO<PSCustomObject>

.DESCRIPTION

Convert from JSON to UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO<PSCustomObject>
#>
function ConvertFrom-JsonToUNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UNISWAPV3ETHEREUMUsageMetricsDailySnapshotDTO
        $AllProperties = ("entry_time", "recv_time", "block_number", "id", "day", "protocol", "daily_active_users", "cumulative_unique_users", "daily_transaction_count", "total_pool_count", "daily_deposit_count", "daily_withdraw_count", "daily_swap_count", "timestamp")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "day"))) { #optional property not found
            $Day = $null
        } else {
            $Day = $JsonParameters.PSobject.Properties["day"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "protocol"))) { #optional property not found
            $Protocol = $null
        } else {
            $Protocol = $JsonParameters.PSobject.Properties["protocol"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "daily_active_users"))) { #optional property not found
            $DailyActiveUsers = $null
        } else {
            $DailyActiveUsers = $JsonParameters.PSobject.Properties["daily_active_users"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cumulative_unique_users"))) { #optional property not found
            $CumulativeUniqueUsers = $null
        } else {
            $CumulativeUniqueUsers = $JsonParameters.PSobject.Properties["cumulative_unique_users"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "daily_transaction_count"))) { #optional property not found
            $DailyTransactionCount = $null
        } else {
            $DailyTransactionCount = $JsonParameters.PSobject.Properties["daily_transaction_count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "total_pool_count"))) { #optional property not found
            $TotalPoolCount = $null
        } else {
            $TotalPoolCount = $JsonParameters.PSobject.Properties["total_pool_count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "daily_deposit_count"))) { #optional property not found
            $DailyDepositCount = $null
        } else {
            $DailyDepositCount = $JsonParameters.PSobject.Properties["daily_deposit_count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "daily_withdraw_count"))) { #optional property not found
            $DailyWithdrawCount = $null
        } else {
            $DailyWithdrawCount = $JsonParameters.PSobject.Properties["daily_withdraw_count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "daily_swap_count"))) { #optional property not found
            $DailySwapCount = $null
        } else {
            $DailySwapCount = $JsonParameters.PSobject.Properties["daily_swap_count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timestamp"))) { #optional property not found
            $Timestamp = $null
        } else {
            $Timestamp = $JsonParameters.PSobject.Properties["timestamp"].value
        }

        $PSO = [PSCustomObject]@{
            "entry_time" = ${EntryTime}
            "recv_time" = ${RecvTime}
            "block_number" = ${BlockNumber}
            "id" = ${Id}
            "day" = ${Day}
            "protocol" = ${Protocol}
            "daily_active_users" = ${DailyActiveUsers}
            "cumulative_unique_users" = ${CumulativeUniqueUsers}
            "daily_transaction_count" = ${DailyTransactionCount}
            "total_pool_count" = ${TotalPoolCount}
            "daily_deposit_count" = ${DailyDepositCount}
            "daily_withdraw_count" = ${DailyWithdrawCount}
            "daily_swap_count" = ${DailySwapCount}
            "timestamp" = ${Timestamp}
        }

        return $PSO
    }

}

