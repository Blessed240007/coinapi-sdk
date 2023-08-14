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
class SUSHISWAP_V3_ETHEREUM_TOKEN_DTO




feature --Access

    entry_time: detachable DATE_TIME
      
    recv_time: detachable DATE_TIME
      
 	block_number: INTEGER_64
    	 -- Number of block in which entity was recorded.
 	vid: INTEGER_64
    	 -- .
    block_range: detachable STRING_32
      -- 
    id: detachable STRING_32
      -- Smart contract address of the token.
    name: detachable STRING_32
      -- Name of the token, mirrored from the smart contract.
    symbol: detachable STRING_32
      -- Symbol of the token, mirrored from the smart contract.
 	decimals: INTEGER_32
    	 -- The number of decimal places this token uses, default to 18.
    last_price_usd: detachable STRING_32
      -- Optional field to track the price of a token, mostly for caching purposes.
    last_price_block_number: detachable STRING_32
      -- Optional field to track the block number of the last token price.
    last_price_pool: detachable STRING_32
      -- Last pool that gave this token a price.
    total_supply: detachable STRING_32
      -- Amount of tokens in the protocol.
    total_value_locked_usd: detachable STRING_32
      -- Total value locked in the protocol.
 	large_price_change_buffer: INTEGER_32
    	 -- The buffer for detecting large price changes.
 	large_tvl_impact_buffer: INTEGER_32
    	 -- The buffer for detecting large TVL (Total Value Locked) impact.
    token_symbol: detachable STRING_32
      

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

    set_decimals (a_name: like decimals)
        -- Set 'decimals' with 'a_name'.
      do
        decimals := a_name
      ensure
        decimals_set: decimals = a_name
      end

    set_last_price_usd (a_name: like last_price_usd)
        -- Set 'last_price_usd' with 'a_name'.
      do
        last_price_usd := a_name
      ensure
        last_price_usd_set: last_price_usd = a_name
      end

    set_last_price_block_number (a_name: like last_price_block_number)
        -- Set 'last_price_block_number' with 'a_name'.
      do
        last_price_block_number := a_name
      ensure
        last_price_block_number_set: last_price_block_number = a_name
      end

    set_last_price_pool (a_name: like last_price_pool)
        -- Set 'last_price_pool' with 'a_name'.
      do
        last_price_pool := a_name
      ensure
        last_price_pool_set: last_price_pool = a_name
      end

    set_total_supply (a_name: like total_supply)
        -- Set 'total_supply' with 'a_name'.
      do
        total_supply := a_name
      ensure
        total_supply_set: total_supply = a_name
      end

    set_total_value_locked_usd (a_name: like total_value_locked_usd)
        -- Set 'total_value_locked_usd' with 'a_name'.
      do
        total_value_locked_usd := a_name
      ensure
        total_value_locked_usd_set: total_value_locked_usd = a_name
      end

    set_large_price_change_buffer (a_name: like large_price_change_buffer)
        -- Set 'large_price_change_buffer' with 'a_name'.
      do
        large_price_change_buffer := a_name
      ensure
        large_price_change_buffer_set: large_price_change_buffer = a_name
      end

    set_large_tvl_impact_buffer (a_name: like large_tvl_impact_buffer)
        -- Set 'large_tvl_impact_buffer' with 'a_name'.
      do
        large_tvl_impact_buffer := a_name
      ensure
        large_tvl_impact_buffer_set: large_tvl_impact_buffer = a_name
      end

    set_token_symbol (a_name: like token_symbol)
        -- Set 'token_symbol' with 'a_name'.
      do
        token_symbol := a_name
      ensure
        token_symbol_set: token_symbol = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass SUSHISWAP_V3_ETHEREUM_TOKEN_DTO%N")
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
        if attached decimals as l_decimals then
          Result.append ("%Ndecimals:")
          Result.append (l_decimals.out)
          Result.append ("%N")
        end
        if attached last_price_usd as l_last_price_usd then
          Result.append ("%Nlast_price_usd:")
          Result.append (l_last_price_usd.out)
          Result.append ("%N")
        end
        if attached last_price_block_number as l_last_price_block_number then
          Result.append ("%Nlast_price_block_number:")
          Result.append (l_last_price_block_number.out)
          Result.append ("%N")
        end
        if attached last_price_pool as l_last_price_pool then
          Result.append ("%Nlast_price_pool:")
          Result.append (l_last_price_pool.out)
          Result.append ("%N")
        end
        if attached total_supply as l_total_supply then
          Result.append ("%Ntotal_supply:")
          Result.append (l_total_supply.out)
          Result.append ("%N")
        end
        if attached total_value_locked_usd as l_total_value_locked_usd then
          Result.append ("%Ntotal_value_locked_usd:")
          Result.append (l_total_value_locked_usd.out)
          Result.append ("%N")
        end
        if attached large_price_change_buffer as l_large_price_change_buffer then
          Result.append ("%Nlarge_price_change_buffer:")
          Result.append (l_large_price_change_buffer.out)
          Result.append ("%N")
        end
        if attached large_tvl_impact_buffer as l_large_tvl_impact_buffer then
          Result.append ("%Nlarge_tvl_impact_buffer:")
          Result.append (l_large_tvl_impact_buffer.out)
          Result.append ("%N")
        end
        if attached token_symbol as l_token_symbol then
          Result.append ("%Ntoken_symbol:")
          Result.append (l_token_symbol.out)
          Result.append ("%N")
        end
      end
end

