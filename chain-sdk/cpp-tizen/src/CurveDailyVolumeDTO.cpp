#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Curve.DailyVolumeDTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Curve.DailyVolumeDTO::Curve.DailyVolumeDTO()
{
	//__init();
}

Curve.DailyVolumeDTO::~Curve.DailyVolumeDTO()
{
	//__cleanup();
}

void
Curve.DailyVolumeDTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = long(0);
	//id = std::string();
	//pool = std::string();
	//timestamp = std::string();
	//volume = std::string();
	//vid = long(0);
	//block_range = std::string();
}

void
Curve.DailyVolumeDTO::__cleanup()
{
	//if(entry_time != NULL) {
	//
	//delete entry_time;
	//entry_time = NULL;
	//}
	//if(recv_time != NULL) {
	//
	//delete recv_time;
	//recv_time = NULL;
	//}
	//if(block_number != NULL) {
	//
	//delete block_number;
	//block_number = NULL;
	//}
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(pool != NULL) {
	//
	//delete pool;
	//pool = NULL;
	//}
	//if(timestamp != NULL) {
	//
	//delete timestamp;
	//timestamp = NULL;
	//}
	//if(volume != NULL) {
	//
	//delete volume;
	//volume = NULL;
	//}
	//if(vid != NULL) {
	//
	//delete vid;
	//vid = NULL;
	//}
	//if(block_range != NULL) {
	//
	//delete block_range;
	//block_range = NULL;
	//}
	//
}

void
Curve.DailyVolumeDTO::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *entry_timeKey = "entry_time";
	node = json_object_get_member(pJsonObject, entry_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&entry_time, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *recv_timeKey = "recv_time";
	node = json_object_get_member(pJsonObject, recv_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&recv_time, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *block_numberKey = "block_number";
	node = json_object_get_member(pJsonObject, block_numberKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&block_number, node, "long long", "");
		} else {
			
		}
	}
	const gchar *idKey = "id";
	node = json_object_get_member(pJsonObject, idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *poolKey = "pool";
	node = json_object_get_member(pJsonObject, poolKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&pool, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *timestampKey = "timestamp";
	node = json_object_get_member(pJsonObject, timestampKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&timestamp, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *volumeKey = "volume";
	node = json_object_get_member(pJsonObject, volumeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&volume, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *vidKey = "vid";
	node = json_object_get_member(pJsonObject, vidKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&vid, node, "long long", "");
		} else {
			
		}
	}
	const gchar *block_rangeKey = "block_range";
	node = json_object_get_member(pJsonObject, block_rangeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&block_range, node, "std::string", "");
		} else {
			
		}
	}
}

Curve.DailyVolumeDTO::Curve.DailyVolumeDTO(char* json)
{
	this->fromJson(json);
}

char*
Curve.DailyVolumeDTO::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getEntryTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *entry_timeKey = "entry_time";
	json_object_set_member(pJsonObject, entry_timeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRecvTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *recv_timeKey = "recv_time";
	json_object_set_member(pJsonObject, recv_timeKey, node);
	if (isprimitive("long long")) {
		long long obj = getBlockNumber();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *block_numberKey = "block_number";
	json_object_set_member(pJsonObject, block_numberKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPool();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *poolKey = "pool";
	json_object_set_member(pJsonObject, poolKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimestamp();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timestampKey = "timestamp";
	json_object_set_member(pJsonObject, timestampKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVolume();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *volumeKey = "volume";
	json_object_set_member(pJsonObject, volumeKey, node);
	if (isprimitive("long long")) {
		long long obj = getVid();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *vidKey = "vid";
	json_object_set_member(pJsonObject, vidKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getBlockRange();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *block_rangeKey = "block_range";
	json_object_set_member(pJsonObject, block_rangeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Curve.DailyVolumeDTO::getEntryTime()
{
	return entry_time;
}

void
Curve.DailyVolumeDTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
Curve.DailyVolumeDTO::getRecvTime()
{
	return recv_time;
}

void
Curve.DailyVolumeDTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

long long
Curve.DailyVolumeDTO::getBlockNumber()
{
	return block_number;
}

void
Curve.DailyVolumeDTO::setBlockNumber(long long  block_number)
{
	this->block_number = block_number;
}

std::string
Curve.DailyVolumeDTO::getId()
{
	return id;
}

void
Curve.DailyVolumeDTO::setId(std::string  id)
{
	this->id = id;
}

std::string
Curve.DailyVolumeDTO::getPool()
{
	return pool;
}

void
Curve.DailyVolumeDTO::setPool(std::string  pool)
{
	this->pool = pool;
}

std::string
Curve.DailyVolumeDTO::getTimestamp()
{
	return timestamp;
}

void
Curve.DailyVolumeDTO::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

std::string
Curve.DailyVolumeDTO::getVolume()
{
	return volume;
}

void
Curve.DailyVolumeDTO::setVolume(std::string  volume)
{
	this->volume = volume;
}

long long
Curve.DailyVolumeDTO::getVid()
{
	return vid;
}

void
Curve.DailyVolumeDTO::setVid(long long  vid)
{
	this->vid = vid;
}

std::string
Curve.DailyVolumeDTO::getBlockRange()
{
	return block_range;
}

void
Curve.DailyVolumeDTO::setBlockRange(std::string  block_range)
{
	this->block_range = block_range;
}


