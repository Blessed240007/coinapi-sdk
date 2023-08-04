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



#include "CppRestOpenAPIClient/model/UNISWAP_V3_ETHEREUM_TickDTO.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



UNISWAP_V3_ETHEREUM_TickDTO::UNISWAP_V3_ETHEREUM_TickDTO()
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
    m_Index = utility::conversions::to_string_t("");
    m_IndexIsSet = false;
    m_Pool = utility::conversions::to_string_t("");
    m_PoolIsSet = false;
    m_Created_timestamp = utility::conversions::to_string_t("");
    m_Created_timestampIsSet = false;
    m_Created_block_number = utility::conversions::to_string_t("");
    m_Created_block_numberIsSet = false;
    m_PricesIsSet = false;
    m_Liquidity_gross = utility::conversions::to_string_t("");
    m_Liquidity_grossIsSet = false;
    m_Liquidity_gross_usd = utility::conversions::to_string_t("");
    m_Liquidity_gross_usdIsSet = false;
    m_Liquidity_net = utility::conversions::to_string_t("");
    m_Liquidity_netIsSet = false;
    m_Liquidity_net_usd = utility::conversions::to_string_t("");
    m_Liquidity_net_usdIsSet = false;
    m_Last_snapshot_day_id = 0;
    m_Last_snapshot_day_idIsSet = false;
    m_Last_snapshot_hour_id = 0;
    m_Last_snapshot_hour_idIsSet = false;
    m_Last_update_timestamp = utility::conversions::to_string_t("");
    m_Last_update_timestampIsSet = false;
    m_Last_update_block_number = utility::conversions::to_string_t("");
    m_Last_update_block_numberIsSet = false;
}

UNISWAP_V3_ETHEREUM_TickDTO::~UNISWAP_V3_ETHEREUM_TickDTO()
{
}

void UNISWAP_V3_ETHEREUM_TickDTO::validate()
{
    // TODO: implement validation
}

web::json::value UNISWAP_V3_ETHEREUM_TickDTO::toJson() const
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
    if(m_IndexIsSet)
    {
        val[utility::conversions::to_string_t(U("index"))] = ModelBase::toJson(m_Index);
    }
    if(m_PoolIsSet)
    {
        val[utility::conversions::to_string_t(U("pool"))] = ModelBase::toJson(m_Pool);
    }
    if(m_Created_timestampIsSet)
    {
        val[utility::conversions::to_string_t(U("created_timestamp"))] = ModelBase::toJson(m_Created_timestamp);
    }
    if(m_Created_block_numberIsSet)
    {
        val[utility::conversions::to_string_t(U("created_block_number"))] = ModelBase::toJson(m_Created_block_number);
    }
    if(m_PricesIsSet)
    {
        val[utility::conversions::to_string_t(U("prices"))] = ModelBase::toJson(m_Prices);
    }
    if(m_Liquidity_grossIsSet)
    {
        val[utility::conversions::to_string_t(U("liquidity_gross"))] = ModelBase::toJson(m_Liquidity_gross);
    }
    if(m_Liquidity_gross_usdIsSet)
    {
        val[utility::conversions::to_string_t(U("liquidity_gross_usd"))] = ModelBase::toJson(m_Liquidity_gross_usd);
    }
    if(m_Liquidity_netIsSet)
    {
        val[utility::conversions::to_string_t(U("liquidity_net"))] = ModelBase::toJson(m_Liquidity_net);
    }
    if(m_Liquidity_net_usdIsSet)
    {
        val[utility::conversions::to_string_t(U("liquidity_net_usd"))] = ModelBase::toJson(m_Liquidity_net_usd);
    }
    if(m_Last_snapshot_day_idIsSet)
    {
        val[utility::conversions::to_string_t(U("last_snapshot_day_id"))] = ModelBase::toJson(m_Last_snapshot_day_id);
    }
    if(m_Last_snapshot_hour_idIsSet)
    {
        val[utility::conversions::to_string_t(U("last_snapshot_hour_id"))] = ModelBase::toJson(m_Last_snapshot_hour_id);
    }
    if(m_Last_update_timestampIsSet)
    {
        val[utility::conversions::to_string_t(U("last_update_timestamp"))] = ModelBase::toJson(m_Last_update_timestamp);
    }
    if(m_Last_update_block_numberIsSet)
    {
        val[utility::conversions::to_string_t(U("last_update_block_number"))] = ModelBase::toJson(m_Last_update_block_number);
    }

    return val;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::fromJson(const web::json::value& val)
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
    if(val.has_field(utility::conversions::to_string_t(U("index"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("index")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setIndex;
            ok &= ModelBase::fromJson(fieldValue, refVal_setIndex);
            setIndex(refVal_setIndex);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("pool"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("pool")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setPool;
            ok &= ModelBase::fromJson(fieldValue, refVal_setPool);
            setPool(refVal_setPool);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("created_timestamp"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("created_timestamp")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setCreatedTimestamp;
            ok &= ModelBase::fromJson(fieldValue, refVal_setCreatedTimestamp);
            setCreatedTimestamp(refVal_setCreatedTimestamp);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("created_block_number"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("created_block_number")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setCreatedBlockNumber;
            ok &= ModelBase::fromJson(fieldValue, refVal_setCreatedBlockNumber);
            setCreatedBlockNumber(refVal_setCreatedBlockNumber);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("prices"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("prices")));
        if(!fieldValue.is_null())
        {
            std::vector<utility::string_t> refVal_setPrices;
            ok &= ModelBase::fromJson(fieldValue, refVal_setPrices);
            setPrices(refVal_setPrices);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("liquidity_gross"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("liquidity_gross")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setLiquidityGross;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLiquidityGross);
            setLiquidityGross(refVal_setLiquidityGross);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("liquidity_gross_usd"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("liquidity_gross_usd")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setLiquidityGrossUsd;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLiquidityGrossUsd);
            setLiquidityGrossUsd(refVal_setLiquidityGrossUsd);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("liquidity_net"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("liquidity_net")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setLiquidityNet;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLiquidityNet);
            setLiquidityNet(refVal_setLiquidityNet);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("liquidity_net_usd"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("liquidity_net_usd")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setLiquidityNetUsd;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLiquidityNetUsd);
            setLiquidityNetUsd(refVal_setLiquidityNetUsd);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("last_snapshot_day_id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("last_snapshot_day_id")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_setLastSnapshotDayId;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLastSnapshotDayId);
            setLastSnapshotDayId(refVal_setLastSnapshotDayId);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("last_snapshot_hour_id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("last_snapshot_hour_id")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_setLastSnapshotHourId;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLastSnapshotHourId);
            setLastSnapshotHourId(refVal_setLastSnapshotHourId);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("last_update_timestamp"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("last_update_timestamp")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setLastUpdateTimestamp;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLastUpdateTimestamp);
            setLastUpdateTimestamp(refVal_setLastUpdateTimestamp);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("last_update_block_number"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("last_update_block_number")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setLastUpdateBlockNumber;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLastUpdateBlockNumber);
            setLastUpdateBlockNumber(refVal_setLastUpdateBlockNumber);
        }
    }
    return ok;
}

void UNISWAP_V3_ETHEREUM_TickDTO::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    if(m_IndexIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("index")), m_Index));
    }
    if(m_PoolIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("pool")), m_Pool));
    }
    if(m_Created_timestampIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("created_timestamp")), m_Created_timestamp));
    }
    if(m_Created_block_numberIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("created_block_number")), m_Created_block_number));
    }
    if(m_PricesIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("prices")), m_Prices));
    }
    if(m_Liquidity_grossIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("liquidity_gross")), m_Liquidity_gross));
    }
    if(m_Liquidity_gross_usdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("liquidity_gross_usd")), m_Liquidity_gross_usd));
    }
    if(m_Liquidity_netIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("liquidity_net")), m_Liquidity_net));
    }
    if(m_Liquidity_net_usdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("liquidity_net_usd")), m_Liquidity_net_usd));
    }
    if(m_Last_snapshot_day_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("last_snapshot_day_id")), m_Last_snapshot_day_id));
    }
    if(m_Last_snapshot_hour_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("last_snapshot_hour_id")), m_Last_snapshot_hour_id));
    }
    if(m_Last_update_timestampIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("last_update_timestamp")), m_Last_update_timestamp));
    }
    if(m_Last_update_block_numberIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("last_update_block_number")), m_Last_update_block_number));
    }
}

bool UNISWAP_V3_ETHEREUM_TickDTO::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
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
    if(multipart->hasContent(utility::conversions::to_string_t(U("index"))))
    {
        utility::string_t refVal_setIndex;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("index"))), refVal_setIndex );
        setIndex(refVal_setIndex);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("pool"))))
    {
        utility::string_t refVal_setPool;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("pool"))), refVal_setPool );
        setPool(refVal_setPool);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("created_timestamp"))))
    {
        utility::string_t refVal_setCreatedTimestamp;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("created_timestamp"))), refVal_setCreatedTimestamp );
        setCreatedTimestamp(refVal_setCreatedTimestamp);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("created_block_number"))))
    {
        utility::string_t refVal_setCreatedBlockNumber;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("created_block_number"))), refVal_setCreatedBlockNumber );
        setCreatedBlockNumber(refVal_setCreatedBlockNumber);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("prices"))))
    {
        std::vector<utility::string_t> refVal_setPrices;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("prices"))), refVal_setPrices );
        setPrices(refVal_setPrices);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("liquidity_gross"))))
    {
        utility::string_t refVal_setLiquidityGross;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("liquidity_gross"))), refVal_setLiquidityGross );
        setLiquidityGross(refVal_setLiquidityGross);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("liquidity_gross_usd"))))
    {
        utility::string_t refVal_setLiquidityGrossUsd;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("liquidity_gross_usd"))), refVal_setLiquidityGrossUsd );
        setLiquidityGrossUsd(refVal_setLiquidityGrossUsd);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("liquidity_net"))))
    {
        utility::string_t refVal_setLiquidityNet;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("liquidity_net"))), refVal_setLiquidityNet );
        setLiquidityNet(refVal_setLiquidityNet);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("liquidity_net_usd"))))
    {
        utility::string_t refVal_setLiquidityNetUsd;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("liquidity_net_usd"))), refVal_setLiquidityNetUsd );
        setLiquidityNetUsd(refVal_setLiquidityNetUsd);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("last_snapshot_day_id"))))
    {
        int32_t refVal_setLastSnapshotDayId;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("last_snapshot_day_id"))), refVal_setLastSnapshotDayId );
        setLastSnapshotDayId(refVal_setLastSnapshotDayId);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("last_snapshot_hour_id"))))
    {
        int32_t refVal_setLastSnapshotHourId;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("last_snapshot_hour_id"))), refVal_setLastSnapshotHourId );
        setLastSnapshotHourId(refVal_setLastSnapshotHourId);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("last_update_timestamp"))))
    {
        utility::string_t refVal_setLastUpdateTimestamp;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("last_update_timestamp"))), refVal_setLastUpdateTimestamp );
        setLastUpdateTimestamp(refVal_setLastUpdateTimestamp);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("last_update_block_number"))))
    {
        utility::string_t refVal_setLastUpdateBlockNumber;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("last_update_block_number"))), refVal_setLastUpdateBlockNumber );
        setLastUpdateBlockNumber(refVal_setLastUpdateBlockNumber);
    }
    return ok;
}

utility::datetime UNISWAP_V3_ETHEREUM_TickDTO::getEntryTime() const
{
    return m_Entry_time;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setEntryTime(const utility::datetime& value)
{
    m_Entry_time = value;
    m_Entry_timeIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::entryTimeIsSet() const
{
    return m_Entry_timeIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetEntry_time()
{
    m_Entry_timeIsSet = false;
}
utility::datetime UNISWAP_V3_ETHEREUM_TickDTO::getRecvTime() const
{
    return m_Recv_time;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setRecvTime(const utility::datetime& value)
{
    m_Recv_time = value;
    m_Recv_timeIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::recvTimeIsSet() const
{
    return m_Recv_timeIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetRecv_time()
{
    m_Recv_timeIsSet = false;
}
int64_t UNISWAP_V3_ETHEREUM_TickDTO::getBlockNumber() const
{
    return m_Block_number;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setBlockNumber(int64_t value)
{
    m_Block_number = value;
    m_Block_numberIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::blockNumberIsSet() const
{
    return m_Block_numberIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetBlock_number()
{
    m_Block_numberIsSet = false;
}
int64_t UNISWAP_V3_ETHEREUM_TickDTO::getVid() const
{
    return m_Vid;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setVid(int64_t value)
{
    m_Vid = value;
    m_VidIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::vidIsSet() const
{
    return m_VidIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetVid()
{
    m_VidIsSet = false;
}
utility::string_t UNISWAP_V3_ETHEREUM_TickDTO::getId() const
{
    return m_Id;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::idIsSet() const
{
    return m_IdIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetId()
{
    m_IdIsSet = false;
}
utility::string_t UNISWAP_V3_ETHEREUM_TickDTO::getIndex() const
{
    return m_Index;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setIndex(const utility::string_t& value)
{
    m_Index = value;
    m_IndexIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::indexIsSet() const
{
    return m_IndexIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetIndex()
{
    m_IndexIsSet = false;
}
utility::string_t UNISWAP_V3_ETHEREUM_TickDTO::getPool() const
{
    return m_Pool;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setPool(const utility::string_t& value)
{
    m_Pool = value;
    m_PoolIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::poolIsSet() const
{
    return m_PoolIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetPool()
{
    m_PoolIsSet = false;
}
utility::string_t UNISWAP_V3_ETHEREUM_TickDTO::getCreatedTimestamp() const
{
    return m_Created_timestamp;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setCreatedTimestamp(const utility::string_t& value)
{
    m_Created_timestamp = value;
    m_Created_timestampIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::createdTimestampIsSet() const
{
    return m_Created_timestampIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetCreated_timestamp()
{
    m_Created_timestampIsSet = false;
}
utility::string_t UNISWAP_V3_ETHEREUM_TickDTO::getCreatedBlockNumber() const
{
    return m_Created_block_number;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setCreatedBlockNumber(const utility::string_t& value)
{
    m_Created_block_number = value;
    m_Created_block_numberIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::createdBlockNumberIsSet() const
{
    return m_Created_block_numberIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetCreated_block_number()
{
    m_Created_block_numberIsSet = false;
}
std::vector<utility::string_t>& UNISWAP_V3_ETHEREUM_TickDTO::getPrices()
{
    return m_Prices;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setPrices(const std::vector<utility::string_t>& value)
{
    m_Prices = value;
    m_PricesIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::pricesIsSet() const
{
    return m_PricesIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetPrices()
{
    m_PricesIsSet = false;
}
utility::string_t UNISWAP_V3_ETHEREUM_TickDTO::getLiquidityGross() const
{
    return m_Liquidity_gross;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setLiquidityGross(const utility::string_t& value)
{
    m_Liquidity_gross = value;
    m_Liquidity_grossIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::liquidityGrossIsSet() const
{
    return m_Liquidity_grossIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetLiquidity_gross()
{
    m_Liquidity_grossIsSet = false;
}
utility::string_t UNISWAP_V3_ETHEREUM_TickDTO::getLiquidityGrossUsd() const
{
    return m_Liquidity_gross_usd;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setLiquidityGrossUsd(const utility::string_t& value)
{
    m_Liquidity_gross_usd = value;
    m_Liquidity_gross_usdIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::liquidityGrossUsdIsSet() const
{
    return m_Liquidity_gross_usdIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetLiquidity_gross_usd()
{
    m_Liquidity_gross_usdIsSet = false;
}
utility::string_t UNISWAP_V3_ETHEREUM_TickDTO::getLiquidityNet() const
{
    return m_Liquidity_net;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setLiquidityNet(const utility::string_t& value)
{
    m_Liquidity_net = value;
    m_Liquidity_netIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::liquidityNetIsSet() const
{
    return m_Liquidity_netIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetLiquidity_net()
{
    m_Liquidity_netIsSet = false;
}
utility::string_t UNISWAP_V3_ETHEREUM_TickDTO::getLiquidityNetUsd() const
{
    return m_Liquidity_net_usd;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setLiquidityNetUsd(const utility::string_t& value)
{
    m_Liquidity_net_usd = value;
    m_Liquidity_net_usdIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::liquidityNetUsdIsSet() const
{
    return m_Liquidity_net_usdIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetLiquidity_net_usd()
{
    m_Liquidity_net_usdIsSet = false;
}
int32_t UNISWAP_V3_ETHEREUM_TickDTO::getLastSnapshotDayId() const
{
    return m_Last_snapshot_day_id;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setLastSnapshotDayId(int32_t value)
{
    m_Last_snapshot_day_id = value;
    m_Last_snapshot_day_idIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::lastSnapshotDayIdIsSet() const
{
    return m_Last_snapshot_day_idIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetLast_snapshot_day_id()
{
    m_Last_snapshot_day_idIsSet = false;
}
int32_t UNISWAP_V3_ETHEREUM_TickDTO::getLastSnapshotHourId() const
{
    return m_Last_snapshot_hour_id;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setLastSnapshotHourId(int32_t value)
{
    m_Last_snapshot_hour_id = value;
    m_Last_snapshot_hour_idIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::lastSnapshotHourIdIsSet() const
{
    return m_Last_snapshot_hour_idIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetLast_snapshot_hour_id()
{
    m_Last_snapshot_hour_idIsSet = false;
}
utility::string_t UNISWAP_V3_ETHEREUM_TickDTO::getLastUpdateTimestamp() const
{
    return m_Last_update_timestamp;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setLastUpdateTimestamp(const utility::string_t& value)
{
    m_Last_update_timestamp = value;
    m_Last_update_timestampIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::lastUpdateTimestampIsSet() const
{
    return m_Last_update_timestampIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetLast_update_timestamp()
{
    m_Last_update_timestampIsSet = false;
}
utility::string_t UNISWAP_V3_ETHEREUM_TickDTO::getLastUpdateBlockNumber() const
{
    return m_Last_update_block_number;
}

void UNISWAP_V3_ETHEREUM_TickDTO::setLastUpdateBlockNumber(const utility::string_t& value)
{
    m_Last_update_block_number = value;
    m_Last_update_block_numberIsSet = true;
}

bool UNISWAP_V3_ETHEREUM_TickDTO::lastUpdateBlockNumberIsSet() const
{
    return m_Last_update_block_numberIsSet;
}

void UNISWAP_V3_ETHEREUM_TickDTO::unsetLast_update_block_number()
{
    m_Last_update_block_numberIsSet = false;
}
}
}
}
}


