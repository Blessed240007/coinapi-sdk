--[[
  On Chain Dapps - REST API

   This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

-- uniswap_v3_ethereum_usage_metrics_hourly_snapshot_dto class
local uniswap_v3_ethereum_usage_metrics_hourly_snapshot_dto = {}
local uniswap_v3_ethereum_usage_metrics_hourly_snapshot_dto_mt = {
	__name = "uniswap_v3_ethereum_usage_metrics_hourly_snapshot_dto";
	__index = uniswap_v3_ethereum_usage_metrics_hourly_snapshot_dto;
}

local function cast_uniswap_v3_ethereum_usage_metrics_hourly_snapshot_dto(t)
	return setmetatable(t, uniswap_v3_ethereum_usage_metrics_hourly_snapshot_dto_mt)
end

local function new_uniswap_v3_ethereum_usage_metrics_hourly_snapshot_dto(entry_time, recv_time, block_number, id, hour, protocol, hourly_active_users, cumulative_unique_users, hourly_transaction_count, hourly_deposit_count, hourly_withdraw_count, hourly_swap_count, timestamp)
	return cast_uniswap_v3_ethereum_usage_metrics_hourly_snapshot_dto({
		["entry_time"] = entry_time;
		["recv_time"] = recv_time;
		["block_number"] = block_number;
		["id"] = id;
		["hour"] = hour;
		["protocol"] = protocol;
		["hourly_active_users"] = hourly_active_users;
		["cumulative_unique_users"] = cumulative_unique_users;
		["hourly_transaction_count"] = hourly_transaction_count;
		["hourly_deposit_count"] = hourly_deposit_count;
		["hourly_withdraw_count"] = hourly_withdraw_count;
		["hourly_swap_count"] = hourly_swap_count;
		["timestamp"] = timestamp;
	})
end

return {
	cast = cast_uniswap_v3_ethereum_usage_metrics_hourly_snapshot_dto;
	new = new_uniswap_v3_ethereum_usage_metrics_hourly_snapshot_dto;
}
