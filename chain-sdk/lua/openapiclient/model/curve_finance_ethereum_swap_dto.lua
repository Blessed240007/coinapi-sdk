--[[
  On Chain Dapps - REST API

   This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

-- curve_finance_ethereum_swap_dto class
local curve_finance_ethereum_swap_dto = {}
local curve_finance_ethereum_swap_dto_mt = {
	__name = "curve_finance_ethereum_swap_dto";
	__index = curve_finance_ethereum_swap_dto;
}

local function cast_curve_finance_ethereum_swap_dto(t)
	return setmetatable(t, curve_finance_ethereum_swap_dto_mt)
end

local function new_curve_finance_ethereum_swap_dto(entry_time, recv_time, block_number, id, hash, log_index, protocol, to, from, timestamp, token_in, amount_in, amount_in_usd, token_out, amount_out, amount_out_usd, pool, pool_id, transaction_id, evaluated_price, evaluated_amount, evaluated_aggressor)
	return cast_curve_finance_ethereum_swap_dto({
		["entry_time"] = entry_time;
		["recv_time"] = recv_time;
		["block_number"] = block_number;
		["id"] = id;
		["hash"] = hash;
		["log_index"] = log_index;
		["protocol"] = protocol;
		["to"] = to;
		["from"] = from;
		["timestamp"] = timestamp;
		["token_in"] = token_in;
		["amount_in"] = amount_in;
		["amount_in_usd"] = amount_in_usd;
		["token_out"] = token_out;
		["amount_out"] = amount_out;
		["amount_out_usd"] = amount_out_usd;
		["pool"] = pool;
		["pool_id"] = pool_id;
		["transaction_id"] = transaction_id;
		["evaluated_price"] = evaluated_price;
		["evaluated_amount"] = evaluated_amount;
		["evaluated_aggressor"] = evaluated_aggressor;
	})
end

return {
	cast = cast_curve_finance_ethereum_swap_dto;
	new = new_curve_finance_ethereum_swap_dto;
}
