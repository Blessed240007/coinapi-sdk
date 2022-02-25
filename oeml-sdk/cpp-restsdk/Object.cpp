/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "Object.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {

Object::Object()
{
    m_object = web::json::value::object();
}

Object::~Object()
{
}

void Object::validate()
{

}

web::json::value Object::toJson() const
{
    return m_object;
}

bool Object::fromJson(const web::json::value& val)
{
    if (val.is_object())
    {
        m_object = val;
        m_IsSet = true;
    }
    return isSet();
}

void Object::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }
    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("object"), m_object));
}

bool Object::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if( ModelBase::fromHttpContent(multipart->getContent(namePrefix + utility::conversions::to_string_t("object")), m_object ) )
    {
        m_IsSet = true;
    }
    return isSet();
}

web::json::value Object::getValue(const utility::string_t& key) const
{
    return m_object.at(key);
}


void Object::setValue(const utility::string_t& key, const web::json::value& value)
{
    if( !value.is_null() )
    {
        m_object[key] = value;
        m_IsSet = true;
    }
}

}
}
}
}
