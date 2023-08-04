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

/*
 * UNISWAP_V3_ETHEREUM_TickHourlySnapshotDTO.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_UNISWAP_V3_ETHEREUM_TickHourlySnapshotDTO_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_UNISWAP_V3_ETHEREUM_TickHourlySnapshotDTO_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  UNISWAP_V3_ETHEREUM_TickHourlySnapshotDTO
    : public ModelBase
{
public:
    UNISWAP_V3_ETHEREUM_TickHourlySnapshotDTO();
    virtual ~UNISWAP_V3_ETHEREUM_TickHourlySnapshotDTO();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// UNISWAP_V3_ETHEREUM_TickHourlySnapshotDTO members

    /// <summary>
    /// 
    /// </summary>
    utility::datetime getEntryTime() const;
    bool entryTimeIsSet() const;
    void unsetEntry_time();

    void setEntryTime(const utility::datetime& value);

    /// <summary>
    /// 
    /// </summary>
    utility::datetime getRecvTime() const;
    bool recvTimeIsSet() const;
    void unsetRecv_time();

    void setRecvTime(const utility::datetime& value);

    /// <summary>
    /// Number of block in which entity was recorded.
    /// </summary>
    int64_t getBlockNumber() const;
    bool blockNumberIsSet() const;
    void unsetBlock_number();

    void setBlockNumber(int64_t value);

    /// <summary>
    /// 
    /// </summary>
    int64_t getVid() const;
    bool vidIsSet() const;
    void unsetVid();

    void setVid(int64_t value);

    /// <summary>
    /// (pool address)-(tick index)-(hour ID)
    /// </summary>
    utility::string_t getId() const;
    bool idIsSet() const;
    void unsetId();

    void setId(const utility::string_t& value);

    /// <summary>
    /// Number of hours since Unix epoch time
    /// </summary>
    int32_t getHourId() const;
    bool hourIdIsSet() const;
    void unsetHour_id();

    void setHourId(int32_t value);

    /// <summary>
    /// tick index
    /// </summary>
    utility::string_t getTick() const;
    bool tickIsSet() const;
    void unsetTick();

    void setTick(const utility::string_t& value);

    /// <summary>
    /// liquidity pool this tick belongs to
    /// </summary>
    utility::string_t getPool() const;
    bool poolIsSet() const;
    void unsetPool();

    void setPool(const utility::string_t& value);

    /// <summary>
    /// total liquidity pool has as tick lower or upper
    /// </summary>
    utility::string_t getLiquidityGross() const;
    bool liquidityGrossIsSet() const;
    void unsetLiquidity_gross();

    void setLiquidityGross(const utility::string_t& value);

    /// <summary>
    /// total liquidity in USD pool has as tick lower or upper
    /// </summary>
    utility::string_t getLiquidityGrossUsd() const;
    bool liquidityGrossUsdIsSet() const;
    void unsetLiquidity_gross_usd();

    void setLiquidityGrossUsd(const utility::string_t& value);

    /// <summary>
    /// how much liquidity changes when tick crossed
    /// </summary>
    utility::string_t getLiquidityNet() const;
    bool liquidityNetIsSet() const;
    void unsetLiquidity_net();

    void setLiquidityNet(const utility::string_t& value);

    /// <summary>
    /// how much liquidity in USD changes when tick crossed
    /// </summary>
    utility::string_t getLiquidityNetUsd() const;
    bool liquidityNetUsdIsSet() const;
    void unsetLiquidity_net_usd();

    void setLiquidityNetUsd(const utility::string_t& value);

    /// <summary>
    /// Timestamp of when this snapshot was taken/last modified (May be taken after interval has passed)
    /// </summary>
    utility::string_t getTimestamp() const;
    bool timestampIsSet() const;
    void unsetTimestamp();

    void setTimestamp(const utility::string_t& value);


protected:
    utility::datetime m_Entry_time;
    bool m_Entry_timeIsSet;
    utility::datetime m_Recv_time;
    bool m_Recv_timeIsSet;
    int64_t m_Block_number;
    bool m_Block_numberIsSet;
    int64_t m_Vid;
    bool m_VidIsSet;
    utility::string_t m_Id;
    bool m_IdIsSet;
    int32_t m_Hour_id;
    bool m_Hour_idIsSet;
    utility::string_t m_Tick;
    bool m_TickIsSet;
    utility::string_t m_Pool;
    bool m_PoolIsSet;
    utility::string_t m_Liquidity_gross;
    bool m_Liquidity_grossIsSet;
    utility::string_t m_Liquidity_gross_usd;
    bool m_Liquidity_gross_usdIsSet;
    utility::string_t m_Liquidity_net;
    bool m_Liquidity_netIsSet;
    utility::string_t m_Liquidity_net_usd;
    bool m_Liquidity_net_usdIsSet;
    utility::string_t m_Timestamp;
    bool m_TimestampIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_UNISWAP_V3_ETHEREUM_TickHourlySnapshotDTO_H_ */
