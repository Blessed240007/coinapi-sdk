#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "MetadataManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


MetadataManager::MetadataManager()
{

}

MetadataManager::~MetadataManager()
{

}

static gboolean __MetadataManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __MetadataManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__MetadataManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool metadataChainsChainIdGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool metadataChainsChainIdGetHelper(char * accessToken,
	std::string chainId, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/metadata/chains/{chainId}");
	int pos;

	string s_chainId("{");
	s_chainId.append("chainId");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = metadataChainsChainIdGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), metadataChainsChainIdGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetadataManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetadataManager::metadataChainsChainIdGetAsync(char * accessToken,
	std::string chainId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return metadataChainsChainIdGetHelper(accessToken,
	chainId, 
	handler, userData, true);
}

bool MetadataManager::metadataChainsChainIdGetSync(char * accessToken,
	std::string chainId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return metadataChainsChainIdGetHelper(accessToken,
	chainId, 
	handler, userData, false);
}

static bool metadataChainsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool metadataChainsGetHelper(char * accessToken,
	
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/metadata/chains");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = metadataChainsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), metadataChainsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetadataManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetadataManager::metadataChainsGetAsync(char * accessToken,
	
	
	void(* handler)(Error, void* ) , void* userData)
{
	return metadataChainsGetHelper(accessToken,
	
	handler, userData, true);
}

bool MetadataManager::metadataChainsGetSync(char * accessToken,
	
	
	void(* handler)(Error, void* ) , void* userData)
{
	return metadataChainsGetHelper(accessToken,
	
	handler, userData, false);
}

static bool metadataDappsDappIdGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool metadataDappsDappIdGetHelper(char * accessToken,
	std::string dappId, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/metadata/dapps/{dappId}");
	int pos;

	string s_dappId("{");
	s_dappId.append("dappId");
	s_dappId.append("}");
	pos = url.find(s_dappId);
	url.erase(pos, s_dappId.length());
	url.insert(pos, stringify(&dappId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = metadataDappsDappIdGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), metadataDappsDappIdGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetadataManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetadataManager::metadataDappsDappIdGetAsync(char * accessToken,
	std::string dappId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return metadataDappsDappIdGetHelper(accessToken,
	dappId, 
	handler, userData, true);
}

bool MetadataManager::metadataDappsDappIdGetSync(char * accessToken,
	std::string dappId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return metadataDappsDappIdGetHelper(accessToken,
	dappId, 
	handler, userData, false);
}

static bool metadataDappsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool metadataDappsGetHelper(char * accessToken,
	
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/metadata/dapps");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = metadataDappsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), metadataDappsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetadataManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetadataManager::metadataDappsGetAsync(char * accessToken,
	
	
	void(* handler)(Error, void* ) , void* userData)
{
	return metadataDappsGetHelper(accessToken,
	
	handler, userData, true);
}

bool MetadataManager::metadataDappsGetSync(char * accessToken,
	
	
	void(* handler)(Error, void* ) , void* userData)
{
	return metadataDappsGetHelper(accessToken,
	
	handler, userData, false);
}

