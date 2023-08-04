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
 * UNISWAP_V3_ETHEREUM_AccountDTO.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_UNISWAP_V3_ETHEREUM_AccountDTO_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_UNISWAP_V3_ETHEREUM_AccountDTO_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  UNISWAP_V3_ETHEREUM_AccountDTO
    : public ModelBase
{
public:
    UNISWAP_V3_ETHEREUM_AccountDTO();
    virtual ~UNISWAP_V3_ETHEREUM_AccountDTO();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// UNISWAP_V3_ETHEREUM_AccountDTO members

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
    utility::string_t getBlockRange() const;
    bool blockRangeIsSet() const;
    void unsetBlock_range();

    void setBlockRange(const utility::string_t& value);

    /// <summary>
    /// Account address.
    /// </summary>
    utility::string_t getId() const;
    bool idIsSet() const;
    void unsetId();

    void setId(const utility::string_t& value);

    /// <summary>
    /// Number of positions this account has.
    /// </summary>
    int32_t getPositionCount() const;
    bool positionCountIsSet() const;
    void unsetPosition_count();

    void setPositionCount(int32_t value);

    /// <summary>
    /// Number of open positions this account has.
    /// </summary>
    int32_t getOpenPositionCount() const;
    bool openPositionCountIsSet() const;
    void unsetOpen_position_count();

    void setOpenPositionCount(int32_t value);

    /// <summary>
    /// Number of closed positions this account has.
    /// </summary>
    int32_t getClosedPositionCount() const;
    bool closedPositionCountIsSet() const;
    void unsetClosed_position_count();

    void setClosedPositionCount(int32_t value);

    /// <summary>
    /// Number of deposits this account made.
    /// </summary>
    int32_t getDepositCount() const;
    bool depositCountIsSet() const;
    void unsetDeposit_count();

    void setDepositCount(int32_t value);

    /// <summary>
    /// Number of withdrawals this account made.
    /// </summary>
    int32_t getWithdrawCount() const;
    bool withdrawCountIsSet() const;
    void unsetWithdraw_count();

    void setWithdrawCount(int32_t value);

    /// <summary>
    /// Number of times this account has traded/swapped.
    /// </summary>
    int32_t getSwapCount() const;
    bool swapCountIsSet() const;
    void unsetSwap_count();

    void setSwapCount(int32_t value);


protected:
    utility::datetime m_Entry_time;
    bool m_Entry_timeIsSet;
    utility::datetime m_Recv_time;
    bool m_Recv_timeIsSet;
    int64_t m_Block_number;
    bool m_Block_numberIsSet;
    utility::string_t m_Block_range;
    bool m_Block_rangeIsSet;
    utility::string_t m_Id;
    bool m_IdIsSet;
    int32_t m_Position_count;
    bool m_Position_countIsSet;
    int32_t m_Open_position_count;
    bool m_Open_position_countIsSet;
    int32_t m_Closed_position_count;
    bool m_Closed_position_countIsSet;
    int32_t m_Deposit_count;
    bool m_Deposit_countIsSet;
    int32_t m_Withdraw_count;
    bool m_Withdraw_countIsSet;
    int32_t m_Swap_count;
    bool m_Swap_countIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_UNISWAP_V3_ETHEREUM_AccountDTO_H_ */
