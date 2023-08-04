--[[
  On Chain Dapps - REST API

   This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

-- uniswap_v3_ethereum_account_dto class
local uniswap_v3_ethereum_account_dto = {}
local uniswap_v3_ethereum_account_dto_mt = {
	__name = "uniswap_v3_ethereum_account_dto";
	__index = uniswap_v3_ethereum_account_dto;
}

local function cast_uniswap_v3_ethereum_account_dto(t)
	return setmetatable(t, uniswap_v3_ethereum_account_dto_mt)
end

local function new_uniswap_v3_ethereum_account_dto(entry_time, recv_time, block_number, block_range, id, position_count, open_position_count, closed_position_count, deposit_count, withdraw_count, swap_count)
	return cast_uniswap_v3_ethereum_account_dto({
		["entry_time"] = entry_time;
		["recv_time"] = recv_time;
		["block_number"] = block_number;
		["block_range"] = block_range;
		["id"] = id;
		["position_count"] = position_count;
		["open_position_count"] = open_position_count;
		["closed_position_count"] = closed_position_count;
		["deposit_count"] = deposit_count;
		["withdraw_count"] = withdraw_count;
		["swap_count"] = swap_count;
	})
end

return {
	cast = cast_uniswap_v3_ethereum_account_dto;
	new = new_uniswap_v3_ethereum_account_dto;
}
