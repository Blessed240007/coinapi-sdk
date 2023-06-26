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



#include "CppRestOpenAPIClient/model/Dex_DepositDTO.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



Dex_DepositDTO::Dex_DepositDTO()
{
    m_Entry_time = utility::datetime();
    m_Entry_timeIsSet = false;
    m_Recv_time = utility::datetime();
    m_Recv_timeIsSet = false;
    m_Block_number = 0L;
    m_Block_numberIsSet = false;
    m_Id = utility::conversions::to_string_t("");
    m_IdIsSet = false;
    m_User = utility::conversions::to_string_t("");
    m_UserIsSet = false;
    m_Token_address = utility::conversions::to_string_t("");
    m_Token_addressIsSet = false;
    m_Amount = utility::conversions::to_string_t("");
    m_AmountIsSet = false;
    m_Batch_id = utility::conversions::to_string_t("");
    m_Batch_idIsSet = false;
    m_Create_epoch = utility::conversions::to_string_t("");
    m_Create_epochIsSet = false;
    m_Tx_hash = utility::conversions::to_string_t("");
    m_Tx_hashIsSet = false;
    m_Vid = 0L;
    m_VidIsSet = false;
}

Dex_DepositDTO::~Dex_DepositDTO()
{
}

void Dex_DepositDTO::validate()
{
    // TODO: implement validation
}

web::json::value Dex_DepositDTO::toJson() const
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
    if(m_IdIsSet)
    {
        val[utility::conversions::to_string_t(U("id"))] = ModelBase::toJson(m_Id);
    }
    if(m_UserIsSet)
    {
        val[utility::conversions::to_string_t(U("user"))] = ModelBase::toJson(m_User);
    }
    if(m_Token_addressIsSet)
    {
        val[utility::conversions::to_string_t(U("token_address"))] = ModelBase::toJson(m_Token_address);
    }
    if(m_AmountIsSet)
    {
        val[utility::conversions::to_string_t(U("amount"))] = ModelBase::toJson(m_Amount);
    }
    if(m_Batch_idIsSet)
    {
        val[utility::conversions::to_string_t(U("batch_id"))] = ModelBase::toJson(m_Batch_id);
    }
    if(m_Create_epochIsSet)
    {
        val[utility::conversions::to_string_t(U("create_epoch"))] = ModelBase::toJson(m_Create_epoch);
    }
    if(m_Tx_hashIsSet)
    {
        val[utility::conversions::to_string_t(U("tx_hash"))] = ModelBase::toJson(m_Tx_hash);
    }
    if(m_VidIsSet)
    {
        val[utility::conversions::to_string_t(U("vid"))] = ModelBase::toJson(m_Vid);
    }

    return val;
}

bool Dex_DepositDTO::fromJson(const web::json::value& val)
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
    if(val.has_field(utility::conversions::to_string_t(U("user"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("user")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setUser;
            ok &= ModelBase::fromJson(fieldValue, refVal_setUser);
            setUser(refVal_setUser);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("token_address"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("token_address")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setTokenAddress;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTokenAddress);
            setTokenAddress(refVal_setTokenAddress);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("amount"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("amount")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setAmount;
            ok &= ModelBase::fromJson(fieldValue, refVal_setAmount);
            setAmount(refVal_setAmount);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("batch_id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("batch_id")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setBatchId;
            ok &= ModelBase::fromJson(fieldValue, refVal_setBatchId);
            setBatchId(refVal_setBatchId);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("create_epoch"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("create_epoch")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setCreateEpoch;
            ok &= ModelBase::fromJson(fieldValue, refVal_setCreateEpoch);
            setCreateEpoch(refVal_setCreateEpoch);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("tx_hash"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("tx_hash")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setTxHash;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTxHash);
            setTxHash(refVal_setTxHash);
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
    return ok;
}

void Dex_DepositDTO::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    if(m_IdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("id")), m_Id));
    }
    if(m_UserIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("user")), m_User));
    }
    if(m_Token_addressIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("token_address")), m_Token_address));
    }
    if(m_AmountIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("amount")), m_Amount));
    }
    if(m_Batch_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("batch_id")), m_Batch_id));
    }
    if(m_Create_epochIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("create_epoch")), m_Create_epoch));
    }
    if(m_Tx_hashIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("tx_hash")), m_Tx_hash));
    }
    if(m_VidIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("vid")), m_Vid));
    }
}

bool Dex_DepositDTO::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
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
    if(multipart->hasContent(utility::conversions::to_string_t(U("id"))))
    {
        utility::string_t refVal_setId;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("id"))), refVal_setId );
        setId(refVal_setId);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("user"))))
    {
        utility::string_t refVal_setUser;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("user"))), refVal_setUser );
        setUser(refVal_setUser);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("token_address"))))
    {
        utility::string_t refVal_setTokenAddress;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("token_address"))), refVal_setTokenAddress );
        setTokenAddress(refVal_setTokenAddress);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("amount"))))
    {
        utility::string_t refVal_setAmount;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("amount"))), refVal_setAmount );
        setAmount(refVal_setAmount);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("batch_id"))))
    {
        utility::string_t refVal_setBatchId;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("batch_id"))), refVal_setBatchId );
        setBatchId(refVal_setBatchId);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("create_epoch"))))
    {
        utility::string_t refVal_setCreateEpoch;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("create_epoch"))), refVal_setCreateEpoch );
        setCreateEpoch(refVal_setCreateEpoch);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("tx_hash"))))
    {
        utility::string_t refVal_setTxHash;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("tx_hash"))), refVal_setTxHash );
        setTxHash(refVal_setTxHash);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("vid"))))
    {
        int64_t refVal_setVid;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("vid"))), refVal_setVid );
        setVid(refVal_setVid);
    }
    return ok;
}

utility::datetime Dex_DepositDTO::getEntryTime() const
{
    return m_Entry_time;
}

void Dex_DepositDTO::setEntryTime(const utility::datetime& value)
{
    m_Entry_time = value;
    m_Entry_timeIsSet = true;
}

bool Dex_DepositDTO::entryTimeIsSet() const
{
    return m_Entry_timeIsSet;
}

void Dex_DepositDTO::unsetEntry_time()
{
    m_Entry_timeIsSet = false;
}
utility::datetime Dex_DepositDTO::getRecvTime() const
{
    return m_Recv_time;
}

void Dex_DepositDTO::setRecvTime(const utility::datetime& value)
{
    m_Recv_time = value;
    m_Recv_timeIsSet = true;
}

bool Dex_DepositDTO::recvTimeIsSet() const
{
    return m_Recv_timeIsSet;
}

void Dex_DepositDTO::unsetRecv_time()
{
    m_Recv_timeIsSet = false;
}
int64_t Dex_DepositDTO::getBlockNumber() const
{
    return m_Block_number;
}

void Dex_DepositDTO::setBlockNumber(int64_t value)
{
    m_Block_number = value;
    m_Block_numberIsSet = true;
}

bool Dex_DepositDTO::blockNumberIsSet() const
{
    return m_Block_numberIsSet;
}

void Dex_DepositDTO::unsetBlock_number()
{
    m_Block_numberIsSet = false;
}
utility::string_t Dex_DepositDTO::getId() const
{
    return m_Id;
}

void Dex_DepositDTO::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool Dex_DepositDTO::idIsSet() const
{
    return m_IdIsSet;
}

void Dex_DepositDTO::unsetId()
{
    m_IdIsSet = false;
}
utility::string_t Dex_DepositDTO::getUser() const
{
    return m_User;
}

void Dex_DepositDTO::setUser(const utility::string_t& value)
{
    m_User = value;
    m_UserIsSet = true;
}

bool Dex_DepositDTO::userIsSet() const
{
    return m_UserIsSet;
}

void Dex_DepositDTO::unsetUser()
{
    m_UserIsSet = false;
}
utility::string_t Dex_DepositDTO::getTokenAddress() const
{
    return m_Token_address;
}

void Dex_DepositDTO::setTokenAddress(const utility::string_t& value)
{
    m_Token_address = value;
    m_Token_addressIsSet = true;
}

bool Dex_DepositDTO::tokenAddressIsSet() const
{
    return m_Token_addressIsSet;
}

void Dex_DepositDTO::unsetToken_address()
{
    m_Token_addressIsSet = false;
}
utility::string_t Dex_DepositDTO::getAmount() const
{
    return m_Amount;
}

void Dex_DepositDTO::setAmount(const utility::string_t& value)
{
    m_Amount = value;
    m_AmountIsSet = true;
}

bool Dex_DepositDTO::amountIsSet() const
{
    return m_AmountIsSet;
}

void Dex_DepositDTO::unsetAmount()
{
    m_AmountIsSet = false;
}
utility::string_t Dex_DepositDTO::getBatchId() const
{
    return m_Batch_id;
}

void Dex_DepositDTO::setBatchId(const utility::string_t& value)
{
    m_Batch_id = value;
    m_Batch_idIsSet = true;
}

bool Dex_DepositDTO::batchIdIsSet() const
{
    return m_Batch_idIsSet;
}

void Dex_DepositDTO::unsetBatch_id()
{
    m_Batch_idIsSet = false;
}
utility::string_t Dex_DepositDTO::getCreateEpoch() const
{
    return m_Create_epoch;
}

void Dex_DepositDTO::setCreateEpoch(const utility::string_t& value)
{
    m_Create_epoch = value;
    m_Create_epochIsSet = true;
}

bool Dex_DepositDTO::createEpochIsSet() const
{
    return m_Create_epochIsSet;
}

void Dex_DepositDTO::unsetCreate_epoch()
{
    m_Create_epochIsSet = false;
}
utility::string_t Dex_DepositDTO::getTxHash() const
{
    return m_Tx_hash;
}

void Dex_DepositDTO::setTxHash(const utility::string_t& value)
{
    m_Tx_hash = value;
    m_Tx_hashIsSet = true;
}

bool Dex_DepositDTO::txHashIsSet() const
{
    return m_Tx_hashIsSet;
}

void Dex_DepositDTO::unsetTx_hash()
{
    m_Tx_hashIsSet = false;
}
int64_t Dex_DepositDTO::getVid() const
{
    return m_Vid;
}

void Dex_DepositDTO::setVid(int64_t value)
{
    m_Vid = value;
    m_VidIsSet = true;
}

bool Dex_DepositDTO::vidIsSet() const
{
    return m_VidIsSet;
}

void Dex_DepositDTO::unsetVid()
{
    m_VidIsSet = false;
}
}
}
}
}


