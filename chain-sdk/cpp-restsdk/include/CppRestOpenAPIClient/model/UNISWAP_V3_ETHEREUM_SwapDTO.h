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
 * UNISWAP_V3_ETHEREUM_SwapDTO.h
 *
 * Trade (swap) event occurred in a pool.
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_UNISWAP_V3_ETHEREUM_SwapDTO_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_UNISWAP_V3_ETHEREUM_SwapDTO_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include <cpprest/details/basic_types.h>
#include "CppRestOpenAPIClient/model/Transactions_ETradeAggressiveSide.h"
#include <vector>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// Trade (swap) event occurred in a pool.
/// </summary>
class  UNISWAP_V3_ETHEREUM_SwapDTO
    : public ModelBase
{
public:
    UNISWAP_V3_ETHEREUM_SwapDTO();
    virtual ~UNISWAP_V3_ETHEREUM_SwapDTO();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// UNISWAP_V3_ETHEREUM_SwapDTO members

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
    /// Block number in which the swap operation was recorded.
    /// </summary>
    int32_t getBlock() const;
    bool blockIsSet() const;
    void unsetBlock_();

    void setBlock(int32_t value);

    /// <summary>
    /// Unique string identifier of the swap operation, format: (transaction hash)-(log index).
    /// </summary>
    utility::string_t getId() const;
    bool idIsSet() const;
    void unsetId();

    void setId(const utility::string_t& value);

    /// <summary>
    /// Transaction hash of the transaction that emitted this event.
    /// </summary>
    utility::string_t getHash() const;
    bool hashIsSet() const;
    void unsetHash();

    void setHash(const utility::string_t& value);

    /// <summary>
    /// Nonce of the transaction that emitted this event.
    /// </summary>
    utility::string_t getNonce() const;
    bool nonceIsSet() const;
    void unsetNonce();

    void setNonce(const utility::string_t& value);

    /// <summary>
    /// Event log index. For transactions that don&#39;t emit event, create arbitrary index starting from 0.
    /// </summary>
    int32_t getLogIndex() const;
    bool logIndexIsSet() const;
    void unsetLog_index();

    void setLogIndex(int32_t value);

    /// <summary>
    /// Gas limit of the transaction that emitted this event.
    /// </summary>
    utility::string_t getGasLimit() const;
    bool gasLimitIsSet() const;
    void unsetGas_limit();

    void setGasLimit(const utility::string_t& value);

    /// <summary>
    /// Gas used in this transaction.
    /// </summary>
    utility::string_t getGasUsed() const;
    bool gasUsedIsSet() const;
    void unsetGas_used();

    void setGasUsed(const utility::string_t& value);

    /// <summary>
    /// Gas price of the transaction that emitted this event.
    /// </summary>
    utility::string_t getGasPrice() const;
    bool gasPriceIsSet() const;
    void unsetGas_price();

    void setGasPrice(const utility::string_t& value);

    /// <summary>
    /// The protocol this transaction belongs to.
    /// </summary>
    utility::string_t getProtocol() const;
    bool protocolIsSet() const;
    void unsetProtocol();

    void setProtocol(const utility::string_t& value);

    /// <summary>
    /// Account that emitted this event.
    /// </summary>
    utility::string_t getAccount() const;
    bool accountIsSet() const;
    void unsetAccount();

    void setAccount(const utility::string_t& value);

    /// <summary>
    /// The pool involving this event.
    /// </summary>
    utility::string_t getPool() const;
    bool poolIsSet() const;
    void unsetPool();

    void setPool(const utility::string_t& value);

    /// <summary>
    /// Timestamp of this event.
    /// </summary>
    utility::string_t getTimestamp() const;
    bool timestampIsSet() const;
    void unsetTimestamp();

    void setTimestamp(const utility::string_t& value);

    /// <summary>
    /// Tick of the swap operation.
    /// </summary>
    utility::string_t getTick() const;
    bool tickIsSet() const;
    void unsetTick();

    void setTick(const utility::string_t& value);

    /// <summary>
    /// Token deposited into pool.
    /// </summary>
    utility::string_t getTokenIn() const;
    bool tokenInIsSet() const;
    void unsetToken_in();

    void setTokenIn(const utility::string_t& value);

    /// <summary>
    /// Amount of token deposited into pool in native units.
    /// </summary>
    utility::string_t getAmountIn() const;
    bool amountInIsSet() const;
    void unsetAmount_in();

    void setAmountIn(const utility::string_t& value);

    /// <summary>
    /// Amount of token deposited into pool in USD.
    /// </summary>
    utility::string_t getAmountInUsd() const;
    bool amountInUsdIsSet() const;
    void unsetAmount_in_usd();

    void setAmountInUsd(const utility::string_t& value);

    /// <summary>
    /// Token withdrawn from pool.
    /// </summary>
    utility::string_t getTokenOut() const;
    bool tokenOutIsSet() const;
    void unsetToken_out();

    void setTokenOut(const utility::string_t& value);

    /// <summary>
    /// Amount of token withdrawn from pool in native units.
    /// </summary>
    utility::string_t getAmountOut() const;
    bool amountOutIsSet() const;
    void unsetAmount_out();

    void setAmountOut(const utility::string_t& value);

    /// <summary>
    /// Amount of token withdrawn from pool in USD.
    /// </summary>
    utility::string_t getAmountOutUsd() const;
    bool amountOutUsdIsSet() const;
    void unsetAmount_out_usd();

    void setAmountOutUsd(const utility::string_t& value);

    /// <summary>
    /// Amount of input tokens in the liquidity pool.
    /// </summary>
    std::vector<utility::string_t>& getReserveAmounts();
    bool reserveAmountsIsSet() const;
    void unsetReserve_amounts();

    void setReserveAmounts(const std::vector<utility::string_t>& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getPoolId() const;
    bool poolIdIsSet() const;
    void unsetPool_id();

    void setPoolId(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getTransactionId() const;
    bool transactionIdIsSet() const;
    void unsetTransaction_id();

    void setTransactionId(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    double getEvaluatedPrice() const;
    bool evaluatedPriceIsSet() const;
    void unsetEvaluated_price();

    void setEvaluatedPrice(double value);

    /// <summary>
    /// 
    /// </summary>
    double getEvaluatedAmount() const;
    bool evaluatedAmountIsSet() const;
    void unsetEvaluated_amount();

    void setEvaluatedAmount(double value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<Transactions_ETradeAggressiveSide> getEvaluatedAggressor() const;
    bool evaluatedAggressorIsSet() const;
    void unsetEvaluated_aggressor();

    void setEvaluatedAggressor(const std::shared_ptr<Transactions_ETradeAggressiveSide>& value);


protected:
    utility::datetime m_Entry_time;
    bool m_Entry_timeIsSet;
    utility::datetime m_Recv_time;
    bool m_Recv_timeIsSet;
    int64_t m_Block_number;
    bool m_Block_numberIsSet;
    int32_t m_Block_;
    bool m_Block_IsSet;
    utility::string_t m_Id;
    bool m_IdIsSet;
    utility::string_t m_Hash;
    bool m_HashIsSet;
    utility::string_t m_Nonce;
    bool m_NonceIsSet;
    int32_t m_Log_index;
    bool m_Log_indexIsSet;
    utility::string_t m_Gas_limit;
    bool m_Gas_limitIsSet;
    utility::string_t m_Gas_used;
    bool m_Gas_usedIsSet;
    utility::string_t m_Gas_price;
    bool m_Gas_priceIsSet;
    utility::string_t m_Protocol;
    bool m_ProtocolIsSet;
    utility::string_t m_Account;
    bool m_AccountIsSet;
    utility::string_t m_Pool;
    bool m_PoolIsSet;
    utility::string_t m_Timestamp;
    bool m_TimestampIsSet;
    utility::string_t m_Tick;
    bool m_TickIsSet;
    utility::string_t m_Token_in;
    bool m_Token_inIsSet;
    utility::string_t m_Amount_in;
    bool m_Amount_inIsSet;
    utility::string_t m_Amount_in_usd;
    bool m_Amount_in_usdIsSet;
    utility::string_t m_Token_out;
    bool m_Token_outIsSet;
    utility::string_t m_Amount_out;
    bool m_Amount_outIsSet;
    utility::string_t m_Amount_out_usd;
    bool m_Amount_out_usdIsSet;
    std::vector<utility::string_t> m_Reserve_amounts;
    bool m_Reserve_amountsIsSet;
    utility::string_t m_Pool_id;
    bool m_Pool_idIsSet;
    utility::string_t m_Transaction_id;
    bool m_Transaction_idIsSet;
    double m_Evaluated_price;
    bool m_Evaluated_priceIsSet;
    double m_Evaluated_amount;
    bool m_Evaluated_amountIsSet;
    std::shared_ptr<Transactions_ETradeAggressiveSide> m_Evaluated_aggressor;
    bool m_Evaluated_aggressorIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_UNISWAP_V3_ETHEREUM_SwapDTO_H_ */
