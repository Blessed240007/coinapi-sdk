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
class UNISWAP_V3_ETHEREUM_WITHDRAW_DTO




feature --Access

    entry_time: detachable DATE_TIME
      
    recv_time: detachable DATE_TIME
      
 	block_number: INTEGER_64
    	 -- Number of block in which entity was recorded.
    id: detachable STRING_32
      -- (transaction hash)-(log index)
    hash: detachable STRING_32
      -- Transaction hash of the transaction that emitted this event
    nonce: detachable STRING_32
      -- Nonce of the transaction that emitted this event
 	log_index: INTEGER_32
    	 -- Event log index. For transactions that don't emit event, create arbitrary index starting from 0
    gas_limit: detachable STRING_32
      -- Gas limit of the transaction that emitted this event
    gas_used: detachable STRING_32
      -- Gas used in this transaction. (Optional because not every chain will support this)
    gas_price: detachable STRING_32
      -- Gas price of the transaction that emitted this event
    protocol: detachable STRING_32
      -- The protocol this transaction belongs to
    account: detachable STRING_32
      -- Account that emitted this event
    position: detachable STRING_32
      -- The user position changed by this event
    tick_lower: detachable STRING_32
      -- lower tick of position
    tick_upper: detachable STRING_32
      -- upper tick of position
    pool: detachable STRING_32
      -- The pool involving this event
    timestamp: detachable STRING_32
      -- Timestamp of this event
    liquidity: detachable STRING_32
      -- Amount of liquidity burned
    input_tokens: detachable LIST [STRING_32]
      -- Input tokens of the pool (not input tokens of the event/transaction). E.g. WETH and USDC from a WETH-USDC pool
    input_token_amounts: detachable LIST [STRING_32]
      -- Amount of input tokens in the token's native unit
    reserve_amounts: detachable LIST [STRING_32]
      -- Amount of input tokens in the liquidity pool
    amount_usd: detachable STRING_32
      -- USD-normalized value of the transaction of the underlying (e.g. sum of tokens withdrawn from a pool)

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

    set_id (a_name: like id)
        -- Set 'id' with 'a_name'.
      do
        id := a_name
      ensure
        id_set: id = a_name
      end

    set_hash (a_name: like hash)
        -- Set 'hash' with 'a_name'.
      do
        hash := a_name
      ensure
        hash_set: hash = a_name
      end

    set_nonce (a_name: like nonce)
        -- Set 'nonce' with 'a_name'.
      do
        nonce := a_name
      ensure
        nonce_set: nonce = a_name
      end

    set_log_index (a_name: like log_index)
        -- Set 'log_index' with 'a_name'.
      do
        log_index := a_name
      ensure
        log_index_set: log_index = a_name
      end

    set_gas_limit (a_name: like gas_limit)
        -- Set 'gas_limit' with 'a_name'.
      do
        gas_limit := a_name
      ensure
        gas_limit_set: gas_limit = a_name
      end

    set_gas_used (a_name: like gas_used)
        -- Set 'gas_used' with 'a_name'.
      do
        gas_used := a_name
      ensure
        gas_used_set: gas_used = a_name
      end

    set_gas_price (a_name: like gas_price)
        -- Set 'gas_price' with 'a_name'.
      do
        gas_price := a_name
      ensure
        gas_price_set: gas_price = a_name
      end

    set_protocol (a_name: like protocol)
        -- Set 'protocol' with 'a_name'.
      do
        protocol := a_name
      ensure
        protocol_set: protocol = a_name
      end

    set_account (a_name: like account)
        -- Set 'account' with 'a_name'.
      do
        account := a_name
      ensure
        account_set: account = a_name
      end

    set_position (a_name: like position)
        -- Set 'position' with 'a_name'.
      do
        position := a_name
      ensure
        position_set: position = a_name
      end

    set_tick_lower (a_name: like tick_lower)
        -- Set 'tick_lower' with 'a_name'.
      do
        tick_lower := a_name
      ensure
        tick_lower_set: tick_lower = a_name
      end

    set_tick_upper (a_name: like tick_upper)
        -- Set 'tick_upper' with 'a_name'.
      do
        tick_upper := a_name
      ensure
        tick_upper_set: tick_upper = a_name
      end

    set_pool (a_name: like pool)
        -- Set 'pool' with 'a_name'.
      do
        pool := a_name
      ensure
        pool_set: pool = a_name
      end

    set_timestamp (a_name: like timestamp)
        -- Set 'timestamp' with 'a_name'.
      do
        timestamp := a_name
      ensure
        timestamp_set: timestamp = a_name
      end

    set_liquidity (a_name: like liquidity)
        -- Set 'liquidity' with 'a_name'.
      do
        liquidity := a_name
      ensure
        liquidity_set: liquidity = a_name
      end

    set_input_tokens (a_name: like input_tokens)
        -- Set 'input_tokens' with 'a_name'.
      do
        input_tokens := a_name
      ensure
        input_tokens_set: input_tokens = a_name
      end

    set_input_token_amounts (a_name: like input_token_amounts)
        -- Set 'input_token_amounts' with 'a_name'.
      do
        input_token_amounts := a_name
      ensure
        input_token_amounts_set: input_token_amounts = a_name
      end

    set_reserve_amounts (a_name: like reserve_amounts)
        -- Set 'reserve_amounts' with 'a_name'.
      do
        reserve_amounts := a_name
      ensure
        reserve_amounts_set: reserve_amounts = a_name
      end

    set_amount_usd (a_name: like amount_usd)
        -- Set 'amount_usd' with 'a_name'.
      do
        amount_usd := a_name
      ensure
        amount_usd_set: amount_usd = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass UNISWAP_V3_ETHEREUM_WITHDRAW_DTO%N")
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
        if attached id as l_id then
          Result.append ("%Nid:")
          Result.append (l_id.out)
          Result.append ("%N")
        end
        if attached hash as l_hash then
          Result.append ("%Nhash:")
          Result.append (l_hash.out)
          Result.append ("%N")
        end
        if attached nonce as l_nonce then
          Result.append ("%Nnonce:")
          Result.append (l_nonce.out)
          Result.append ("%N")
        end
        if attached log_index as l_log_index then
          Result.append ("%Nlog_index:")
          Result.append (l_log_index.out)
          Result.append ("%N")
        end
        if attached gas_limit as l_gas_limit then
          Result.append ("%Ngas_limit:")
          Result.append (l_gas_limit.out)
          Result.append ("%N")
        end
        if attached gas_used as l_gas_used then
          Result.append ("%Ngas_used:")
          Result.append (l_gas_used.out)
          Result.append ("%N")
        end
        if attached gas_price as l_gas_price then
          Result.append ("%Ngas_price:")
          Result.append (l_gas_price.out)
          Result.append ("%N")
        end
        if attached protocol as l_protocol then
          Result.append ("%Nprotocol:")
          Result.append (l_protocol.out)
          Result.append ("%N")
        end
        if attached account as l_account then
          Result.append ("%Naccount:")
          Result.append (l_account.out)
          Result.append ("%N")
        end
        if attached position as l_position then
          Result.append ("%Nposition:")
          Result.append (l_position.out)
          Result.append ("%N")
        end
        if attached tick_lower as l_tick_lower then
          Result.append ("%Ntick_lower:")
          Result.append (l_tick_lower.out)
          Result.append ("%N")
        end
        if attached tick_upper as l_tick_upper then
          Result.append ("%Ntick_upper:")
          Result.append (l_tick_upper.out)
          Result.append ("%N")
        end
        if attached pool as l_pool then
          Result.append ("%Npool:")
          Result.append (l_pool.out)
          Result.append ("%N")
        end
        if attached timestamp as l_timestamp then
          Result.append ("%Ntimestamp:")
          Result.append (l_timestamp.out)
          Result.append ("%N")
        end
        if attached liquidity as l_liquidity then
          Result.append ("%Nliquidity:")
          Result.append (l_liquidity.out)
          Result.append ("%N")
        end
        if attached input_tokens as l_input_tokens then
          across l_input_tokens as ic loop
            Result.append ("%N input_tokens:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached input_token_amounts as l_input_token_amounts then
          across l_input_token_amounts as ic loop
            Result.append ("%N input_token_amounts:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached reserve_amounts as l_reserve_amounts then
          across l_reserve_amounts as ic loop
            Result.append ("%N reserve_amounts:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached amount_usd as l_amount_usd then
          Result.append ("%Namount_usd:")
          Result.append (l_amount_usd.out)
          Result.append ("%N")
        end
      end
end

