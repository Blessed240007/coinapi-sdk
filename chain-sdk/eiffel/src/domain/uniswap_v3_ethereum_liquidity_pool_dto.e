note
 description:"[
		On Chain Dapps - REST API
 		 This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
  		The version of the OpenAPI document: v1
 	    Contact: support@coinapi.io

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class UNISWAP_V3_ETHEREUM_LIQUIDITY_POOL_DTO




feature --Access

    entry_time: detachable DATE_TIME
      
    recv_time: detachable DATE_TIME
      
 	block_number: INTEGER_64
    	 -- Number of block in which entity was recorded.
 	vid: INTEGER_64
    	 -- .
    block_range: detachable STRING_32
      -- Block range of the liquidity pool.
    id: detachable STRING_32
      -- Smart contract address of the pool.
    protocol: detachable STRING_32
      -- Protocol this pool belongs to.
    name: detachable STRING_32
      -- Name of liquidity pool (e.g. Curve.fi DAI/USDC/USDT).
    symbol: detachable STRING_32
      -- Symbol of liquidity pool (e.g. 3CRV).
    liquidity_token: detachable STRING_32
      -- Token that is to represent ownership of liquidity.
    input_tokens: detachable LIST [STRING_32]
      -- Tokens that need to be deposited to take a position in protocol. e.g. WETH and USDC to deposit into the WETH-USDC pool. Array to account for multi-asset pools like Curve and Balancer.
    reward_tokens: detachable LIST [STRING_32]
      -- Additional tokens that are given as reward for position in a protocol, usually in liquidity mining programs. e.g. SUSHI in the Onsen program, MATIC for Aave Polygon, usually in liquidity mining programs. e.g. SUSHI in the Onsen program, MATIC for Aave Polygon.
    fees: detachable LIST [STRING_32]
      -- Fees per trade incurred to the user. Should include all fees that apply to a pool (e.g. Curve has a trading fee AND an admin fee, which is a portion of the trading fee. Uniswap only has a trading fee and no protocol fee.).
 	is_single_sided: BOOLEAN
    	 -- Specifies whether this pool is single-sided (e.g. Bancor, Platypus's Alternative Pool). The specifics of the implementation depends on the protocol.
    created_timestamp: detachable STRING_32
      -- Timestamp when the liquidity pool was created.
    created_block_number: detachable STRING_32
      -- Block number when the liquidity pool was created.
    tick: detachable STRING_32
      -- Current tick representing the price of token0/token1.
    total_value_locked_usd: detachable STRING_32
      -- Current TVL (Total Value Locked) of this pool in USD.
    total_liquidity: detachable STRING_32
      -- Sum of all active and non-active liquidity for this pool.
    total_liquidity_usd: detachable STRING_32
      -- Sum of all active and non-active liquidity in USD for this pool.
    active_liquidity: detachable STRING_32
      -- All liquidity `k` that is active. Will be equal to totalLiquidity except for in concentrated liquidity - where activeLiquidity is all liquidity positions that contain the pools current tick.
    active_liquidity_usd: detachable STRING_32
      -- All liquidity in USD that is active. Will be equal to totalLiquidity except for in concentrated liquidity - where activeLiquidity is all liquidity positions that contain the pools current tick.
    uncollected_protocol_side_token_amounts: detachable LIST [STRING_32]
      -- All protocol-side value locked in token amounts that remains uncollected and unused in the pool.
    uncollected_protocol_side_values_usd: detachable LIST [STRING_32]
      -- All protocol-side value locking in USD that remains uncollected and unused in the pool.
    uncollected_supply_side_token_amounts: detachable LIST [STRING_32]
      -- All supply-side value locked in token amounts that remains uncollected and unused in the pool.
    uncollected_supply_side_values_usd: detachable LIST [STRING_32]
      -- All supply-side value locked in USD that remains uncollected and unused in the pool.
    cumulative_supply_side_revenue_usd: detachable STRING_32
      -- All revenue generated by the liquidity pool, accrued to the supply side.
    cumulative_protocol_side_revenue_usd: detachable STRING_32
      -- All revenue generated by the liquidity pool, accrued to the protocol.
    cumulative_total_revenue_usd: detachable STRING_32
      --  All revenue generated by the liquidity pool.
    cumulative_volume_by_token_amount: detachable LIST [STRING_32]
      -- All trade volume occurred for a specific input token, in native amount. The ordering should be the same as the pool's `inputTokens` field.
    cumulative_volume_by_token_usd: detachable LIST [STRING_32]
      -- All trade volume occurred for a specific input token, in USD. The ordering should be the same as the pool's `inputTokens` field.
    cumulative_volume_usd: detachable STRING_32
      -- All trade volume occurred for a specific input token, in USD. The ordering should be the same as the pool's `inputTokens` field.
    input_token_balances: detachable LIST [STRING_32]
      -- Amount of input tokens in the pool. The ordering should be the same as the pool's `inputTokens` field.
    input_token_balances_usd: detachable LIST [STRING_32]
      -- Amount of input tokens in USD in the pool. The ordering should be the same as the pool's `inputTokens` field.
    input_token_weights: detachable LIST [STRING_32]
      -- Weights of input tokens in the liquidity pool in percentage values. For example, 50/50 for Uniswap pools, 48.2/51.8 for a Curve pool, 10/10/80 for a Balancer pool.
    staked_output_token_amount: detachable STRING_32
      -- Total supply of output tokens that are staked (usually in the MasterChef contract). Used to calculate reward APY.
    reward_token_emissions_amount: detachable LIST [STRING_32]
      -- Per-block reward token emission as of the current block normalized to a day, in token's native amount. This should be ideally calculated as the theoretical rate instead of the realized amount.
    reward_token_emissions_usd: detachable LIST [STRING_32]
      -- Per-block reward token emission as of the current block normalized to a day, in USD value. This should be ideally calculated as the theoretical rate instead of the realized amount.
 	cumulative_deposit_count: INTEGER_32
    	 -- Total number of deposits (add liquidity).
 	cumulative_withdraw_count: INTEGER_32
    	 -- Total number of withdrawals (remove liquidity).
 	cumulative_swap_count: INTEGER_32
    	 -- Total number of trades (swaps).
 	position_count: INTEGER_32
    	 -- Number of positions in this market.
 	open_position_count: INTEGER_32
    	 -- Number of open positions in this market.
 	closed_position_count: INTEGER_32
    	 -- Number of closed positions in this market.
 	last_snapshot_day_id: INTEGER_32
    	 -- Day ID of the most recent daily snapshot.
 	last_snapshot_hour_id: INTEGER_32
    	 -- Hour ID of the most recent hourly snapshot.
    last_update_timestamp: detachable STRING_32
      -- Timestamp of the last time this entity was updated.
    last_update_block_number: detachable STRING_32
      -- Block number of the last time this entity was updated.
 	evaluated_ask: REAL_64
    	 -- Evaluated ask value of the liquidity pool.

feature -- Change Element

    set_entry_time (a_name: like entry_time)
        -- Set 'entry_time' with 'a_name'.
      do
        entry_time := a_name
      ensure
        entry_time_set: entry_time = a_name
      end

    set_recv_time (a_name: like recv_time)
        -- Set 'recv_time' with 'a_name'.
      do
        recv_time := a_name
      ensure
        recv_time_set: recv_time = a_name
      end

    set_block_number (a_name: like block_number)
        -- Set 'block_number' with 'a_name'.
      do
        block_number := a_name
      ensure
        block_number_set: block_number = a_name
      end

    set_vid (a_name: like vid)
        -- Set 'vid' with 'a_name'.
      do
        vid := a_name
      ensure
        vid_set: vid = a_name
      end

    set_block_range (a_name: like block_range)
        -- Set 'block_range' with 'a_name'.
      do
        block_range := a_name
      ensure
        block_range_set: block_range = a_name
      end

    set_id (a_name: like id)
        -- Set 'id' with 'a_name'.
      do
        id := a_name
      ensure
        id_set: id = a_name
      end

    set_protocol (a_name: like protocol)
        -- Set 'protocol' with 'a_name'.
      do
        protocol := a_name
      ensure
        protocol_set: protocol = a_name
      end

    set_name (a_name: like name)
        -- Set 'name' with 'a_name'.
      do
        name := a_name
      ensure
        name_set: name = a_name
      end

    set_symbol (a_name: like symbol)
        -- Set 'symbol' with 'a_name'.
      do
        symbol := a_name
      ensure
        symbol_set: symbol = a_name
      end

    set_liquidity_token (a_name: like liquidity_token)
        -- Set 'liquidity_token' with 'a_name'.
      do
        liquidity_token := a_name
      ensure
        liquidity_token_set: liquidity_token = a_name
      end

    set_input_tokens (a_name: like input_tokens)
        -- Set 'input_tokens' with 'a_name'.
      do
        input_tokens := a_name
      ensure
        input_tokens_set: input_tokens = a_name
      end

    set_reward_tokens (a_name: like reward_tokens)
        -- Set 'reward_tokens' with 'a_name'.
      do
        reward_tokens := a_name
      ensure
        reward_tokens_set: reward_tokens = a_name
      end

    set_fees (a_name: like fees)
        -- Set 'fees' with 'a_name'.
      do
        fees := a_name
      ensure
        fees_set: fees = a_name
      end

    set_is_single_sided (a_name: like is_single_sided)
        -- Set 'is_single_sided' with 'a_name'.
      do
        is_single_sided := a_name
      ensure
        is_single_sided_set: is_single_sided = a_name
      end

    set_created_timestamp (a_name: like created_timestamp)
        -- Set 'created_timestamp' with 'a_name'.
      do
        created_timestamp := a_name
      ensure
        created_timestamp_set: created_timestamp = a_name
      end

    set_created_block_number (a_name: like created_block_number)
        -- Set 'created_block_number' with 'a_name'.
      do
        created_block_number := a_name
      ensure
        created_block_number_set: created_block_number = a_name
      end

    set_tick (a_name: like tick)
        -- Set 'tick' with 'a_name'.
      do
        tick := a_name
      ensure
        tick_set: tick = a_name
      end

    set_total_value_locked_usd (a_name: like total_value_locked_usd)
        -- Set 'total_value_locked_usd' with 'a_name'.
      do
        total_value_locked_usd := a_name
      ensure
        total_value_locked_usd_set: total_value_locked_usd = a_name
      end

    set_total_liquidity (a_name: like total_liquidity)
        -- Set 'total_liquidity' with 'a_name'.
      do
        total_liquidity := a_name
      ensure
        total_liquidity_set: total_liquidity = a_name
      end

    set_total_liquidity_usd (a_name: like total_liquidity_usd)
        -- Set 'total_liquidity_usd' with 'a_name'.
      do
        total_liquidity_usd := a_name
      ensure
        total_liquidity_usd_set: total_liquidity_usd = a_name
      end

    set_active_liquidity (a_name: like active_liquidity)
        -- Set 'active_liquidity' with 'a_name'.
      do
        active_liquidity := a_name
      ensure
        active_liquidity_set: active_liquidity = a_name
      end

    set_active_liquidity_usd (a_name: like active_liquidity_usd)
        -- Set 'active_liquidity_usd' with 'a_name'.
      do
        active_liquidity_usd := a_name
      ensure
        active_liquidity_usd_set: active_liquidity_usd = a_name
      end

    set_uncollected_protocol_side_token_amounts (a_name: like uncollected_protocol_side_token_amounts)
        -- Set 'uncollected_protocol_side_token_amounts' with 'a_name'.
      do
        uncollected_protocol_side_token_amounts := a_name
      ensure
        uncollected_protocol_side_token_amounts_set: uncollected_protocol_side_token_amounts = a_name
      end

    set_uncollected_protocol_side_values_usd (a_name: like uncollected_protocol_side_values_usd)
        -- Set 'uncollected_protocol_side_values_usd' with 'a_name'.
      do
        uncollected_protocol_side_values_usd := a_name
      ensure
        uncollected_protocol_side_values_usd_set: uncollected_protocol_side_values_usd = a_name
      end

    set_uncollected_supply_side_token_amounts (a_name: like uncollected_supply_side_token_amounts)
        -- Set 'uncollected_supply_side_token_amounts' with 'a_name'.
      do
        uncollected_supply_side_token_amounts := a_name
      ensure
        uncollected_supply_side_token_amounts_set: uncollected_supply_side_token_amounts = a_name
      end

    set_uncollected_supply_side_values_usd (a_name: like uncollected_supply_side_values_usd)
        -- Set 'uncollected_supply_side_values_usd' with 'a_name'.
      do
        uncollected_supply_side_values_usd := a_name
      ensure
        uncollected_supply_side_values_usd_set: uncollected_supply_side_values_usd = a_name
      end

    set_cumulative_supply_side_revenue_usd (a_name: like cumulative_supply_side_revenue_usd)
        -- Set 'cumulative_supply_side_revenue_usd' with 'a_name'.
      do
        cumulative_supply_side_revenue_usd := a_name
      ensure
        cumulative_supply_side_revenue_usd_set: cumulative_supply_side_revenue_usd = a_name
      end

    set_cumulative_protocol_side_revenue_usd (a_name: like cumulative_protocol_side_revenue_usd)
        -- Set 'cumulative_protocol_side_revenue_usd' with 'a_name'.
      do
        cumulative_protocol_side_revenue_usd := a_name
      ensure
        cumulative_protocol_side_revenue_usd_set: cumulative_protocol_side_revenue_usd = a_name
      end

    set_cumulative_total_revenue_usd (a_name: like cumulative_total_revenue_usd)
        -- Set 'cumulative_total_revenue_usd' with 'a_name'.
      do
        cumulative_total_revenue_usd := a_name
      ensure
        cumulative_total_revenue_usd_set: cumulative_total_revenue_usd = a_name
      end

    set_cumulative_volume_by_token_amount (a_name: like cumulative_volume_by_token_amount)
        -- Set 'cumulative_volume_by_token_amount' with 'a_name'.
      do
        cumulative_volume_by_token_amount := a_name
      ensure
        cumulative_volume_by_token_amount_set: cumulative_volume_by_token_amount = a_name
      end

    set_cumulative_volume_by_token_usd (a_name: like cumulative_volume_by_token_usd)
        -- Set 'cumulative_volume_by_token_usd' with 'a_name'.
      do
        cumulative_volume_by_token_usd := a_name
      ensure
        cumulative_volume_by_token_usd_set: cumulative_volume_by_token_usd = a_name
      end

    set_cumulative_volume_usd (a_name: like cumulative_volume_usd)
        -- Set 'cumulative_volume_usd' with 'a_name'.
      do
        cumulative_volume_usd := a_name
      ensure
        cumulative_volume_usd_set: cumulative_volume_usd = a_name
      end

    set_input_token_balances (a_name: like input_token_balances)
        -- Set 'input_token_balances' with 'a_name'.
      do
        input_token_balances := a_name
      ensure
        input_token_balances_set: input_token_balances = a_name
      end

    set_input_token_balances_usd (a_name: like input_token_balances_usd)
        -- Set 'input_token_balances_usd' with 'a_name'.
      do
        input_token_balances_usd := a_name
      ensure
        input_token_balances_usd_set: input_token_balances_usd = a_name
      end

    set_input_token_weights (a_name: like input_token_weights)
        -- Set 'input_token_weights' with 'a_name'.
      do
        input_token_weights := a_name
      ensure
        input_token_weights_set: input_token_weights = a_name
      end

    set_staked_output_token_amount (a_name: like staked_output_token_amount)
        -- Set 'staked_output_token_amount' with 'a_name'.
      do
        staked_output_token_amount := a_name
      ensure
        staked_output_token_amount_set: staked_output_token_amount = a_name
      end

    set_reward_token_emissions_amount (a_name: like reward_token_emissions_amount)
        -- Set 'reward_token_emissions_amount' with 'a_name'.
      do
        reward_token_emissions_amount := a_name
      ensure
        reward_token_emissions_amount_set: reward_token_emissions_amount = a_name
      end

    set_reward_token_emissions_usd (a_name: like reward_token_emissions_usd)
        -- Set 'reward_token_emissions_usd' with 'a_name'.
      do
        reward_token_emissions_usd := a_name
      ensure
        reward_token_emissions_usd_set: reward_token_emissions_usd = a_name
      end

    set_cumulative_deposit_count (a_name: like cumulative_deposit_count)
        -- Set 'cumulative_deposit_count' with 'a_name'.
      do
        cumulative_deposit_count := a_name
      ensure
        cumulative_deposit_count_set: cumulative_deposit_count = a_name
      end

    set_cumulative_withdraw_count (a_name: like cumulative_withdraw_count)
        -- Set 'cumulative_withdraw_count' with 'a_name'.
      do
        cumulative_withdraw_count := a_name
      ensure
        cumulative_withdraw_count_set: cumulative_withdraw_count = a_name
      end

    set_cumulative_swap_count (a_name: like cumulative_swap_count)
        -- Set 'cumulative_swap_count' with 'a_name'.
      do
        cumulative_swap_count := a_name
      ensure
        cumulative_swap_count_set: cumulative_swap_count = a_name
      end

    set_position_count (a_name: like position_count)
        -- Set 'position_count' with 'a_name'.
      do
        position_count := a_name
      ensure
        position_count_set: position_count = a_name
      end

    set_open_position_count (a_name: like open_position_count)
        -- Set 'open_position_count' with 'a_name'.
      do
        open_position_count := a_name
      ensure
        open_position_count_set: open_position_count = a_name
      end

    set_closed_position_count (a_name: like closed_position_count)
        -- Set 'closed_position_count' with 'a_name'.
      do
        closed_position_count := a_name
      ensure
        closed_position_count_set: closed_position_count = a_name
      end

    set_last_snapshot_day_id (a_name: like last_snapshot_day_id)
        -- Set 'last_snapshot_day_id' with 'a_name'.
      do
        last_snapshot_day_id := a_name
      ensure
        last_snapshot_day_id_set: last_snapshot_day_id = a_name
      end

    set_last_snapshot_hour_id (a_name: like last_snapshot_hour_id)
        -- Set 'last_snapshot_hour_id' with 'a_name'.
      do
        last_snapshot_hour_id := a_name
      ensure
        last_snapshot_hour_id_set: last_snapshot_hour_id = a_name
      end

    set_last_update_timestamp (a_name: like last_update_timestamp)
        -- Set 'last_update_timestamp' with 'a_name'.
      do
        last_update_timestamp := a_name
      ensure
        last_update_timestamp_set: last_update_timestamp = a_name
      end

    set_last_update_block_number (a_name: like last_update_block_number)
        -- Set 'last_update_block_number' with 'a_name'.
      do
        last_update_block_number := a_name
      ensure
        last_update_block_number_set: last_update_block_number = a_name
      end

    set_evaluated_ask (a_name: like evaluated_ask)
        -- Set 'evaluated_ask' with 'a_name'.
      do
        evaluated_ask := a_name
      ensure
        evaluated_ask_set: evaluated_ask = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass UNISWAP_V3_ETHEREUM_LIQUIDITY_POOL_DTO%N")
        if attached entry_time as l_entry_time then
          Result.append ("%Nentry_time:")
          Result.append (l_entry_time.out)
          Result.append ("%N")
        end
        if attached recv_time as l_recv_time then
          Result.append ("%Nrecv_time:")
          Result.append (l_recv_time.out)
          Result.append ("%N")
        end
        if attached block_number as l_block_number then
          Result.append ("%Nblock_number:")
          Result.append (l_block_number.out)
          Result.append ("%N")
        end
        if attached vid as l_vid then
          Result.append ("%Nvid:")
          Result.append (l_vid.out)
          Result.append ("%N")
        end
        if attached block_range as l_block_range then
          Result.append ("%Nblock_range:")
          Result.append (l_block_range.out)
          Result.append ("%N")
        end
        if attached id as l_id then
          Result.append ("%Nid:")
          Result.append (l_id.out)
          Result.append ("%N")
        end
        if attached protocol as l_protocol then
          Result.append ("%Nprotocol:")
          Result.append (l_protocol.out)
          Result.append ("%N")
        end
        if attached name as l_name then
          Result.append ("%Nname:")
          Result.append (l_name.out)
          Result.append ("%N")
        end
        if attached symbol as l_symbol then
          Result.append ("%Nsymbol:")
          Result.append (l_symbol.out)
          Result.append ("%N")
        end
        if attached liquidity_token as l_liquidity_token then
          Result.append ("%Nliquidity_token:")
          Result.append (l_liquidity_token.out)
          Result.append ("%N")
        end
        if attached input_tokens as l_input_tokens then
          across l_input_tokens as ic loop
            Result.append ("%N input_tokens:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached reward_tokens as l_reward_tokens then
          across l_reward_tokens as ic loop
            Result.append ("%N reward_tokens:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached fees as l_fees then
          across l_fees as ic loop
            Result.append ("%N fees:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached is_single_sided as l_is_single_sided then
          Result.append ("%Nis_single_sided:")
          Result.append (l_is_single_sided.out)
          Result.append ("%N")
        end
        if attached created_timestamp as l_created_timestamp then
          Result.append ("%Ncreated_timestamp:")
          Result.append (l_created_timestamp.out)
          Result.append ("%N")
        end
        if attached created_block_number as l_created_block_number then
          Result.append ("%Ncreated_block_number:")
          Result.append (l_created_block_number.out)
          Result.append ("%N")
        end
        if attached tick as l_tick then
          Result.append ("%Ntick:")
          Result.append (l_tick.out)
          Result.append ("%N")
        end
        if attached total_value_locked_usd as l_total_value_locked_usd then
          Result.append ("%Ntotal_value_locked_usd:")
          Result.append (l_total_value_locked_usd.out)
          Result.append ("%N")
        end
        if attached total_liquidity as l_total_liquidity then
          Result.append ("%Ntotal_liquidity:")
          Result.append (l_total_liquidity.out)
          Result.append ("%N")
        end
        if attached total_liquidity_usd as l_total_liquidity_usd then
          Result.append ("%Ntotal_liquidity_usd:")
          Result.append (l_total_liquidity_usd.out)
          Result.append ("%N")
        end
        if attached active_liquidity as l_active_liquidity then
          Result.append ("%Nactive_liquidity:")
          Result.append (l_active_liquidity.out)
          Result.append ("%N")
        end
        if attached active_liquidity_usd as l_active_liquidity_usd then
          Result.append ("%Nactive_liquidity_usd:")
          Result.append (l_active_liquidity_usd.out)
          Result.append ("%N")
        end
        if attached uncollected_protocol_side_token_amounts as l_uncollected_protocol_side_token_amounts then
          across l_uncollected_protocol_side_token_amounts as ic loop
            Result.append ("%N uncollected_protocol_side_token_amounts:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached uncollected_protocol_side_values_usd as l_uncollected_protocol_side_values_usd then
          across l_uncollected_protocol_side_values_usd as ic loop
            Result.append ("%N uncollected_protocol_side_values_usd:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached uncollected_supply_side_token_amounts as l_uncollected_supply_side_token_amounts then
          across l_uncollected_supply_side_token_amounts as ic loop
            Result.append ("%N uncollected_supply_side_token_amounts:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached uncollected_supply_side_values_usd as l_uncollected_supply_side_values_usd then
          across l_uncollected_supply_side_values_usd as ic loop
            Result.append ("%N uncollected_supply_side_values_usd:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached cumulative_supply_side_revenue_usd as l_cumulative_supply_side_revenue_usd then
          Result.append ("%Ncumulative_supply_side_revenue_usd:")
          Result.append (l_cumulative_supply_side_revenue_usd.out)
          Result.append ("%N")
        end
        if attached cumulative_protocol_side_revenue_usd as l_cumulative_protocol_side_revenue_usd then
          Result.append ("%Ncumulative_protocol_side_revenue_usd:")
          Result.append (l_cumulative_protocol_side_revenue_usd.out)
          Result.append ("%N")
        end
        if attached cumulative_total_revenue_usd as l_cumulative_total_revenue_usd then
          Result.append ("%Ncumulative_total_revenue_usd:")
          Result.append (l_cumulative_total_revenue_usd.out)
          Result.append ("%N")
        end
        if attached cumulative_volume_by_token_amount as l_cumulative_volume_by_token_amount then
          across l_cumulative_volume_by_token_amount as ic loop
            Result.append ("%N cumulative_volume_by_token_amount:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached cumulative_volume_by_token_usd as l_cumulative_volume_by_token_usd then
          across l_cumulative_volume_by_token_usd as ic loop
            Result.append ("%N cumulative_volume_by_token_usd:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached cumulative_volume_usd as l_cumulative_volume_usd then
          Result.append ("%Ncumulative_volume_usd:")
          Result.append (l_cumulative_volume_usd.out)
          Result.append ("%N")
        end
        if attached input_token_balances as l_input_token_balances then
          across l_input_token_balances as ic loop
            Result.append ("%N input_token_balances:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached input_token_balances_usd as l_input_token_balances_usd then
          across l_input_token_balances_usd as ic loop
            Result.append ("%N input_token_balances_usd:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached input_token_weights as l_input_token_weights then
          across l_input_token_weights as ic loop
            Result.append ("%N input_token_weights:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached staked_output_token_amount as l_staked_output_token_amount then
          Result.append ("%Nstaked_output_token_amount:")
          Result.append (l_staked_output_token_amount.out)
          Result.append ("%N")
        end
        if attached reward_token_emissions_amount as l_reward_token_emissions_amount then
          across l_reward_token_emissions_amount as ic loop
            Result.append ("%N reward_token_emissions_amount:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached reward_token_emissions_usd as l_reward_token_emissions_usd then
          across l_reward_token_emissions_usd as ic loop
            Result.append ("%N reward_token_emissions_usd:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached cumulative_deposit_count as l_cumulative_deposit_count then
          Result.append ("%Ncumulative_deposit_count:")
          Result.append (l_cumulative_deposit_count.out)
          Result.append ("%N")
        end
        if attached cumulative_withdraw_count as l_cumulative_withdraw_count then
          Result.append ("%Ncumulative_withdraw_count:")
          Result.append (l_cumulative_withdraw_count.out)
          Result.append ("%N")
        end
        if attached cumulative_swap_count as l_cumulative_swap_count then
          Result.append ("%Ncumulative_swap_count:")
          Result.append (l_cumulative_swap_count.out)
          Result.append ("%N")
        end
        if attached position_count as l_position_count then
          Result.append ("%Nposition_count:")
          Result.append (l_position_count.out)
          Result.append ("%N")
        end
        if attached open_position_count as l_open_position_count then
          Result.append ("%Nopen_position_count:")
          Result.append (l_open_position_count.out)
          Result.append ("%N")
        end
        if attached closed_position_count as l_closed_position_count then
          Result.append ("%Nclosed_position_count:")
          Result.append (l_closed_position_count.out)
          Result.append ("%N")
        end
        if attached last_snapshot_day_id as l_last_snapshot_day_id then
          Result.append ("%Nlast_snapshot_day_id:")
          Result.append (l_last_snapshot_day_id.out)
          Result.append ("%N")
        end
        if attached last_snapshot_hour_id as l_last_snapshot_hour_id then
          Result.append ("%Nlast_snapshot_hour_id:")
          Result.append (l_last_snapshot_hour_id.out)
          Result.append ("%N")
        end
        if attached last_update_timestamp as l_last_update_timestamp then
          Result.append ("%Nlast_update_timestamp:")
          Result.append (l_last_update_timestamp.out)
          Result.append ("%N")
        end
        if attached last_update_block_number as l_last_update_block_number then
          Result.append ("%Nlast_update_block_number:")
          Result.append (l_last_update_block_number.out)
          Result.append ("%N")
        end
        if attached evaluated_ask as l_evaluated_ask then
          Result.append ("%Nevaluated_ask:")
          Result.append (l_evaluated_ask.out)
          Result.append ("%N")
        end
      end
end

