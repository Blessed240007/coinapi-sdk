#
# On Chain Dapps - REST API
#  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
# Version: v1
# Contact: support@coinapi.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSOpenAPITools' -name 'UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO' {
    Context 'UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO' {
        It 'Initialize-UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO' {
            # a simple test to create an object
            #$NewObject = Initialize-UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO -EntryTime "TEST_VALUE" -RecvTime "TEST_VALUE" -BlockNumber "TEST_VALUE" -Id "TEST_VALUE" -Hour "TEST_VALUE" -Protocol "TEST_VALUE" -Pool "TEST_VALUE" -Tick "TEST_VALUE" -TotalValueLockedUsd "TEST_VALUE" -TotalLiquidity "TEST_VALUE" -TotalLiquidityUsd "TEST_VALUE" -ActiveLiquidity "TEST_VALUE" -ActiveLiquidityUsd "TEST_VALUE" -UncollectedProtocolSideTokenAmounts "TEST_VALUE" -UncollectedProtocolSideValuesUsd "TEST_VALUE" -UncollectedSupplySideTokenAmounts "TEST_VALUE" -UncollectedSupplySideValuesUsd "TEST_VALUE" -CumulativeSupplySideRevenueUsd "TEST_VALUE" -HourlySupplySideRevenueUsd "TEST_VALUE" -CumulativeProtocolSideRevenueUsd "TEST_VALUE" -HourlyProtocolSideRevenueUsd "TEST_VALUE" -CumulativeTotalRevenueUsd "TEST_VALUE" -HourlyTotalRevenueUsd "TEST_VALUE" -CumulativeVolumeUsd "TEST_VALUE" -HourlyVolumeUsd "TEST_VALUE" -CumulativeVolumeByTokenAmount "TEST_VALUE" -HourlyVolumeByTokenAmount "TEST_VALUE" -CumulativeVolumeByTokenUsd "TEST_VALUE" -HourlyVolumeByTokenUsd "TEST_VALUE" -InputTokenBalances "TEST_VALUE" -InputTokenBalancesUsd "TEST_VALUE" -InputTokenWeights "TEST_VALUE" -StakedOutputTokenAmount "TEST_VALUE" -RewardTokenEmissionsAmount "TEST_VALUE" -RewardTokenEmissionsUsd "TEST_VALUE" -CumulativeDepositCount "TEST_VALUE" -HourlyDepositCount "TEST_VALUE" -CumulativeWithdrawCount "TEST_VALUE" -HourlyWithdrawCount "TEST_VALUE" -CumulativeSwapCount "TEST_VALUE" -HourlySwapCount "TEST_VALUE" -PositionCount "TEST_VALUE" -OpenPositionCount "TEST_VALUE" -ClosedPositionCount "TEST_VALUE" -Timestamp "TEST_VALUE"
            #$NewObject | Should -BeOfType UNISWAPV3ETHEREUMLiquidityPoolHourlySnapshotDTO
            #$NewObject.property | Should -Be 0
        }
    }
}
