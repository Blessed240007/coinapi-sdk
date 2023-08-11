/**
 * On Chain Dapps - REST API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 6.6.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "CppRestOpenAPIClient/model/UNISWAP_V2_ETHEREUM_TokenDTO.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



UNISWAP_V2_ETHEREUM_TokenDTO::UNISWAP_V2_ETHEREUM_TokenDTO()
{
    m_Entry_time = utility::datetime();
    m_Entry_timeIsSet = false;
    m_Recv_time = utility::datetime();
    m_Recv_timeIsSet = false;
    m_Block_number = 0L;
    m_Block_numberIsSet = false;
    m_Vid = 0L;
    m_VidIsSet = false;
    m_Id = utility::conversions::to_string_t("");
    m_IdIsSet = false;
    m_Name = utility::conversions::to_string_t("");
    m_NameIsSet = false;
    m_Symbol = utility::conversions::to_string_t("");
    m_SymbolIsSet = false;
    m_Decimals = 0;
    m_DecimalsIsSet = false;
    m_Last_price_usd = utility::conversions::to_string_t("");
    m_Last_price_usdIsSet = false;
    m_Last_price_block_number = utility::conversions::to_string_t("");
    m_Last_price_block_numberIsSet = false;
    m_Total_supply = utility::conversions::to_string_t("");
    m_Total_supplyIsSet = false;
    m_Total_value_locked_usd = utility::conversions::to_string_t("");
    m_Total_value_locked_usdIsSet = false;
    m_Large_price_change_buffer = 0;
    m_Large_price_change_bufferIsSet = false;
    m_Large_tvl_impact_buffer = 0;
    m_Large_tvl_impact_bufferIsSet = false;
    m_Token_symbol = utility::conversions::to_string_t("");
    m_Token_symbolIsSet = false;
}

UNISWAP_V2_ETHEREUM_TokenDTO::~UNISWAP_V2_ETHEREUM_TokenDTO()
{
}

void UNISWAP_V2_ETHEREUM_TokenDTO::validate()
{
    // TODO: implement validation
}

web::json::value UNISWAP_V2_ETHEREUM_TokenDTO::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_Entry_timeIsSet)
    {
        val[utility::conversions::to_string_t(U("entry_time"))] = ModelBase::toJson(m_Entry_time);
    }
    if(m_Recv_timeIsSet)
    {
        val[utility::conversions::to_string_t(U("recv_time"))] = ModelBase::toJson(m_Recv_time);
    }
    if(m_Block_numberIsSet)
    {
        val[utility::conversions::to_string_t(U("block_number"))] = ModelBase::toJson(m_Block_number);
    }
    if(m_VidIsSet)
    {
        val[utility::conversions::to_string_t(U("vid"))] = ModelBase::toJson(m_Vid);
    }
    if(m_IdIsSet)
    {
        val[utility::conversions::to_string_t(U("id"))] = ModelBase::toJson(m_Id);
    }
    if(m_NameIsSet)
    {
        val[utility::conversions::to_string_t(U("name"))] = ModelBase::toJson(m_Name);
    }
    if(m_SymbolIsSet)
    {
        val[utility::conversions::to_string_t(U("symbol"))] = ModelBase::toJson(m_Symbol);
    }
    if(m_DecimalsIsSet)
    {
        val[utility::conversions::to_string_t(U("decimals"))] = ModelBase::toJson(m_Decimals);
    }
    if(m_Last_price_usdIsSet)
    {
        val[utility::conversions::to_string_t(U("last_price_usd"))] = ModelBase::toJson(m_Last_price_usd);
    }
    if(m_Last_price_block_numberIsSet)
    {
        val[utility::conversions::to_string_t(U("last_price_block_number"))] = ModelBase::toJson(m_Last_price_block_number);
    }
    if(m_Total_supplyIsSet)
    {
        val[utility::conversions::to_string_t(U("total_supply"))] = ModelBase::toJson(m_Total_supply);
    }
    if(m_Total_value_locked_usdIsSet)
    {
        val[utility::conversions::to_string_t(U("total_value_locked_usd"))] = ModelBase::toJson(m_Total_value_locked_usd);
    }
    if(m_Large_price_change_bufferIsSet)
    {
        val[utility::conversions::to_string_t(U("large_price_change_buffer"))] = ModelBase::toJson(m_Large_price_change_buffer);
    }
    if(m_Large_tvl_impact_bufferIsSet)
    {
        val[utility::conversions::to_string_t(U("large_tvl_impact_buffer"))] = ModelBase::toJson(m_Large_tvl_impact_buffer);
    }
    if(m_Token_symbolIsSet)
    {
        val[utility::conversions::to_string_t(U("token_symbol"))] = ModelBase::toJson(m_Token_symbol);
    }

    return val;
}

bool UNISWAP_V2_ETHEREUM_TokenDTO::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("entry_time"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("entry_time")));
        if(!fieldValue.is_null())
        {
            utility::datetime refVal_setEntryTime;
            ok &= ModelBase::fromJson(fieldValue, refVal_setEntryTime);
            setEntryTime(refVal_setEntryTime);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("recv_time"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("recv_time")));
        if(!fieldValue.is_null())
        {
            utility::datetime refVal_setRecvTime;
            ok &= ModelBase::fromJson(fieldValue, refVal_setRecvTime);
            setRecvTime(refVal_setRecvTime);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("block_number"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("block_number")));
        if(!fieldValue.is_null())
        {
            int64_t refVal_setBlockNumber;
            ok &= ModelBase::fromJson(fieldValue, refVal_setBlockNumber);
            setBlockNumber(refVal_setBlockNumber);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("vid"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("vid")));
        if(!fieldValue.is_null())
        {
            int64_t refVal_setVid;
            ok &= ModelBase::fromJson(fieldValue, refVal_setVid);
            setVid(refVal_setVid);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("id")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setId;
            ok &= ModelBase::fromJson(fieldValue, refVal_setId);
            setId(refVal_setId);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("name"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("name")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setName;
            ok &= ModelBase::fromJson(fieldValue, refVal_setName);
            setName(refVal_setName);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("symbol"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("symbol")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setSymbol;
            ok &= ModelBase::fromJson(fieldValue, refVal_setSymbol);
            setSymbol(refVal_setSymbol);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("decimals"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("decimals")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_setDecimals;
            ok &= ModelBase::fromJson(fieldValue, refVal_setDecimals);
            setDecimals(refVal_setDecimals);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("last_price_usd"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("last_price_usd")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setLastPriceUsd;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLastPriceUsd);
            setLastPriceUsd(refVal_setLastPriceUsd);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("last_price_block_number"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("last_price_block_number")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setLastPriceBlockNumber;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLastPriceBlockNumber);
            setLastPriceBlockNumber(refVal_setLastPriceBlockNumber);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("total_supply"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("total_supply")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setTotalSupply;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTotalSupply);
            setTotalSupply(refVal_setTotalSupply);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("total_value_locked_usd"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("total_value_locked_usd")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setTotalValueLockedUsd;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTotalValueLockedUsd);
            setTotalValueLockedUsd(refVal_setTotalValueLockedUsd);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("large_price_change_buffer"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("large_price_change_buffer")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_setLargePriceChangeBuffer;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLargePriceChangeBuffer);
            setLargePriceChangeBuffer(refVal_setLargePriceChangeBuffer);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("large_tvl_impact_buffer"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("large_tvl_impact_buffer")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_setLargeTvlImpactBuffer;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLargeTvlImpactBuffer);
            setLargeTvlImpactBuffer(refVal_setLargeTvlImpactBuffer);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("token_symbol"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("token_symbol")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setTokenSymbol;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTokenSymbol);
            setTokenSymbol(refVal_setTokenSymbol);
        }
    }
    return ok;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_Entry_timeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("entry_time")), m_Entry_time));
    }
    if(m_Recv_timeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("recv_time")), m_Recv_time));
    }
    if(m_Block_numberIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("block_number")), m_Block_number));
    }
    if(m_VidIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("vid")), m_Vid));
    }
    if(m_IdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("id")), m_Id));
    }
    if(m_NameIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("name")), m_Name));
    }
    if(m_SymbolIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("symbol")), m_Symbol));
    }
    if(m_DecimalsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("decimals")), m_Decimals));
    }
    if(m_Last_price_usdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("last_price_usd")), m_Last_price_usd));
    }
    if(m_Last_price_block_numberIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("last_price_block_number")), m_Last_price_block_number));
    }
    if(m_Total_supplyIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("total_supply")), m_Total_supply));
    }
    if(m_Total_value_locked_usdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("total_value_locked_usd")), m_Total_value_locked_usd));
    }
    if(m_Large_price_change_bufferIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("large_price_change_buffer")), m_Large_price_change_buffer));
    }
    if(m_Large_tvl_impact_bufferIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("large_tvl_impact_buffer")), m_Large_tvl_impact_buffer));
    }
    if(m_Token_symbolIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("token_symbol")), m_Token_symbol));
    }
}

bool UNISWAP_V2_ETHEREUM_TokenDTO::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("entry_time"))))
    {
        utility::datetime refVal_setEntryTime;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("entry_time"))), refVal_setEntryTime );
        setEntryTime(refVal_setEntryTime);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("recv_time"))))
    {
        utility::datetime refVal_setRecvTime;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("recv_time"))), refVal_setRecvTime );
        setRecvTime(refVal_setRecvTime);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("block_number"))))
    {
        int64_t refVal_setBlockNumber;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("block_number"))), refVal_setBlockNumber );
        setBlockNumber(refVal_setBlockNumber);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("vid"))))
    {
        int64_t refVal_setVid;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("vid"))), refVal_setVid );
        setVid(refVal_setVid);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("id"))))
    {
        utility::string_t refVal_setId;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("id"))), refVal_setId );
        setId(refVal_setId);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("name"))))
    {
        utility::string_t refVal_setName;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("name"))), refVal_setName );
        setName(refVal_setName);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("symbol"))))
    {
        utility::string_t refVal_setSymbol;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("symbol"))), refVal_setSymbol );
        setSymbol(refVal_setSymbol);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("decimals"))))
    {
        int32_t refVal_setDecimals;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("decimals"))), refVal_setDecimals );
        setDecimals(refVal_setDecimals);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("last_price_usd"))))
    {
        utility::string_t refVal_setLastPriceUsd;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("last_price_usd"))), refVal_setLastPriceUsd );
        setLastPriceUsd(refVal_setLastPriceUsd);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("last_price_block_number"))))
    {
        utility::string_t refVal_setLastPriceBlockNumber;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("last_price_block_number"))), refVal_setLastPriceBlockNumber );
        setLastPriceBlockNumber(refVal_setLastPriceBlockNumber);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("total_supply"))))
    {
        utility::string_t refVal_setTotalSupply;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("total_supply"))), refVal_setTotalSupply );
        setTotalSupply(refVal_setTotalSupply);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("total_value_locked_usd"))))
    {
        utility::string_t refVal_setTotalValueLockedUsd;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("total_value_locked_usd"))), refVal_setTotalValueLockedUsd );
        setTotalValueLockedUsd(refVal_setTotalValueLockedUsd);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("large_price_change_buffer"))))
    {
        int32_t refVal_setLargePriceChangeBuffer;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("large_price_change_buffer"))), refVal_setLargePriceChangeBuffer );
        setLargePriceChangeBuffer(refVal_setLargePriceChangeBuffer);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("large_tvl_impact_buffer"))))
    {
        int32_t refVal_setLargeTvlImpactBuffer;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("large_tvl_impact_buffer"))), refVal_setLargeTvlImpactBuffer );
        setLargeTvlImpactBuffer(refVal_setLargeTvlImpactBuffer);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("token_symbol"))))
    {
        utility::string_t refVal_setTokenSymbol;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("token_symbol"))), refVal_setTokenSymbol );
        setTokenSymbol(refVal_setTokenSymbol);
    }
    return ok;
}

utility::datetime UNISWAP_V2_ETHEREUM_TokenDTO::getEntryTime() const
{
    return m_Entry_time;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::setEntryTime(const utility::datetime& value)
{
    m_Entry_time = value;
    m_Entry_timeIsSet = true;
}

bool UNISWAP_V2_ETHEREUM_TokenDTO::entryTimeIsSet() const
{
    return m_Entry_timeIsSet;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::unsetEntry_time()
{
    m_Entry_timeIsSet = false;
}
utility::datetime UNISWAP_V2_ETHEREUM_TokenDTO::getRecvTime() const
{
    return m_Recv_time;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::setRecvTime(const utility::datetime& value)
{
    m_Recv_time = value;
    m_Recv_timeIsSet = true;
}

bool UNISWAP_V2_ETHEREUM_TokenDTO::recvTimeIsSet() const
{
    return m_Recv_timeIsSet;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::unsetRecv_time()
{
    m_Recv_timeIsSet = false;
}
int64_t UNISWAP_V2_ETHEREUM_TokenDTO::getBlockNumber() const
{
    return m_Block_number;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::setBlockNumber(int64_t value)
{
    m_Block_number = value;
    m_Block_numberIsSet = true;
}

bool UNISWAP_V2_ETHEREUM_TokenDTO::blockNumberIsSet() const
{
    return m_Block_numberIsSet;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::unsetBlock_number()
{
    m_Block_numberIsSet = false;
}
int64_t UNISWAP_V2_ETHEREUM_TokenDTO::getVid() const
{
    return m_Vid;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::setVid(int64_t value)
{
    m_Vid = value;
    m_VidIsSet = true;
}

bool UNISWAP_V2_ETHEREUM_TokenDTO::vidIsSet() const
{
    return m_VidIsSet;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::unsetVid()
{
    m_VidIsSet = false;
}
utility::string_t UNISWAP_V2_ETHEREUM_TokenDTO::getId() const
{
    return m_Id;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool UNISWAP_V2_ETHEREUM_TokenDTO::idIsSet() const
{
    return m_IdIsSet;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::unsetId()
{
    m_IdIsSet = false;
}
utility::string_t UNISWAP_V2_ETHEREUM_TokenDTO::getName() const
{
    return m_Name;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::setName(const utility::string_t& value)
{
    m_Name = value;
    m_NameIsSet = true;
}

bool UNISWAP_V2_ETHEREUM_TokenDTO::nameIsSet() const
{
    return m_NameIsSet;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::unsetName()
{
    m_NameIsSet = false;
}
utility::string_t UNISWAP_V2_ETHEREUM_TokenDTO::getSymbol() const
{
    return m_Symbol;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::setSymbol(const utility::string_t& value)
{
    m_Symbol = value;
    m_SymbolIsSet = true;
}

bool UNISWAP_V2_ETHEREUM_TokenDTO::symbolIsSet() const
{
    return m_SymbolIsSet;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::unsetSymbol()
{
    m_SymbolIsSet = false;
}
int32_t UNISWAP_V2_ETHEREUM_TokenDTO::getDecimals() const
{
    return m_Decimals;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::setDecimals(int32_t value)
{
    m_Decimals = value;
    m_DecimalsIsSet = true;
}

bool UNISWAP_V2_ETHEREUM_TokenDTO::decimalsIsSet() const
{
    return m_DecimalsIsSet;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::unsetDecimals()
{
    m_DecimalsIsSet = false;
}
utility::string_t UNISWAP_V2_ETHEREUM_TokenDTO::getLastPriceUsd() const
{
    return m_Last_price_usd;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::setLastPriceUsd(const utility::string_t& value)
{
    m_Last_price_usd = value;
    m_Last_price_usdIsSet = true;
}

bool UNISWAP_V2_ETHEREUM_TokenDTO::lastPriceUsdIsSet() const
{
    return m_Last_price_usdIsSet;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::unsetLast_price_usd()
{
    m_Last_price_usdIsSet = false;
}
utility::string_t UNISWAP_V2_ETHEREUM_TokenDTO::getLastPriceBlockNumber() const
{
    return m_Last_price_block_number;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::setLastPriceBlockNumber(const utility::string_t& value)
{
    m_Last_price_block_number = value;
    m_Last_price_block_numberIsSet = true;
}

bool UNISWAP_V2_ETHEREUM_TokenDTO::lastPriceBlockNumberIsSet() const
{
    return m_Last_price_block_numberIsSet;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::unsetLast_price_block_number()
{
    m_Last_price_block_numberIsSet = false;
}
utility::string_t UNISWAP_V2_ETHEREUM_TokenDTO::getTotalSupply() const
{
    return m_Total_supply;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::setTotalSupply(const utility::string_t& value)
{
    m_Total_supply = value;
    m_Total_supplyIsSet = true;
}

bool UNISWAP_V2_ETHEREUM_TokenDTO::totalSupplyIsSet() const
{
    return m_Total_supplyIsSet;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::unsetTotal_supply()
{
    m_Total_supplyIsSet = false;
}
utility::string_t UNISWAP_V2_ETHEREUM_TokenDTO::getTotalValueLockedUsd() const
{
    return m_Total_value_locked_usd;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::setTotalValueLockedUsd(const utility::string_t& value)
{
    m_Total_value_locked_usd = value;
    m_Total_value_locked_usdIsSet = true;
}

bool UNISWAP_V2_ETHEREUM_TokenDTO::totalValueLockedUsdIsSet() const
{
    return m_Total_value_locked_usdIsSet;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::unsetTotal_value_locked_usd()
{
    m_Total_value_locked_usdIsSet = false;
}
int32_t UNISWAP_V2_ETHEREUM_TokenDTO::getLargePriceChangeBuffer() const
{
    return m_Large_price_change_buffer;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::setLargePriceChangeBuffer(int32_t value)
{
    m_Large_price_change_buffer = value;
    m_Large_price_change_bufferIsSet = true;
}

bool UNISWAP_V2_ETHEREUM_TokenDTO::largePriceChangeBufferIsSet() const
{
    return m_Large_price_change_bufferIsSet;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::unsetLarge_price_change_buffer()
{
    m_Large_price_change_bufferIsSet = false;
}
int32_t UNISWAP_V2_ETHEREUM_TokenDTO::getLargeTvlImpactBuffer() const
{
    return m_Large_tvl_impact_buffer;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::setLargeTvlImpactBuffer(int32_t value)
{
    m_Large_tvl_impact_buffer = value;
    m_Large_tvl_impact_bufferIsSet = true;
}

bool UNISWAP_V2_ETHEREUM_TokenDTO::largeTvlImpactBufferIsSet() const
{
    return m_Large_tvl_impact_bufferIsSet;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::unsetLarge_tvl_impact_buffer()
{
    m_Large_tvl_impact_bufferIsSet = false;
}
utility::string_t UNISWAP_V2_ETHEREUM_TokenDTO::getTokenSymbol() const
{
    return m_Token_symbol;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::setTokenSymbol(const utility::string_t& value)
{
    m_Token_symbol = value;
    m_Token_symbolIsSet = true;
}

bool UNISWAP_V2_ETHEREUM_TokenDTO::tokenSymbolIsSet() const
{
    return m_Token_symbolIsSet;
}

void UNISWAP_V2_ETHEREUM_TokenDTO::unsetToken_symbol()
{
    m_Token_symbolIsSet = false;
}
}
}
}
}


