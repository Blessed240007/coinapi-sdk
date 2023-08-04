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
.PARAMETER BlockRange

.PARAMETER Id
Identifier, format: (fee type)-(pool address)
.PARAMETER FeePercentage
Fee as a percentage of the trade (swap) amount. Does not always apply 
.OUTPUTS

UNISWAPV3ETHEREUMLiquidityPoolFeeDTO<PSCustomObject>
#>

function Initialize-UNISWAPV3ETHEREUMLiquidityPoolFeeDTO {
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
        ${BlockRange},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FeePercentage}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => UNISWAPV3ETHEREUMLiquidityPoolFeeDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "entry_time" = ${EntryTime}
            "recv_time" = ${RecvTime}
            "block_number" = ${BlockNumber}
            "block_range" = ${BlockRange}
            "id" = ${Id}
            "fee_percentage" = ${FeePercentage}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UNISWAPV3ETHEREUMLiquidityPoolFeeDTO<PSCustomObject>

.DESCRIPTION

Convert from JSON to UNISWAPV3ETHEREUMLiquidityPoolFeeDTO<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UNISWAPV3ETHEREUMLiquidityPoolFeeDTO<PSCustomObject>
#>
function ConvertFrom-JsonToUNISWAPV3ETHEREUMLiquidityPoolFeeDTO {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => UNISWAPV3ETHEREUMLiquidityPoolFeeDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UNISWAPV3ETHEREUMLiquidityPoolFeeDTO
        $AllProperties = ("entry_time", "recv_time", "block_number", "block_range", "id", "fee_percentage")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fee_percentage"))) { #optional property not found
            $FeePercentage = $null
        } else {
            $FeePercentage = $JsonParameters.PSobject.Properties["fee_percentage"].value
        }

        $PSO = [PSCustomObject]@{
            "entry_time" = ${EntryTime}
            "recv_time" = ${RecvTime}
            "block_number" = ${BlockNumber}
            "block_range" = ${BlockRange}
            "id" = ${Id}
            "fee_percentage" = ${FeePercentage}
        }

        return $PSO
    }

}

