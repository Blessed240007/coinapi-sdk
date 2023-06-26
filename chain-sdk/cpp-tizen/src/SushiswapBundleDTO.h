/*
 * Sushiswap.BundleDTO.h
 *
 * The Bundle is used as a global store of derived ETH price in USD.
 */

#ifndef _Sushiswap.BundleDTO_H_
#define _Sushiswap.BundleDTO_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief The Bundle is used as a global store of derived ETH price in USD.
 *
 *  \ingroup Models
 *
 */

class Sushiswap.BundleDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	Sushiswap.BundleDTO();
	Sushiswap.BundleDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Sushiswap.BundleDTO();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getEntryTime();

	/*! \brief Set 
	 */
	void setEntryTime(std::string  entry_time);
	/*! \brief Get 
	 */
	std::string getRecvTime();

	/*! \brief Set 
	 */
	void setRecvTime(std::string  recv_time);
	/*! \brief Get Number of block in which entity was recorded.
	 */
	long long getBlockNumber();

	/*! \brief Set Number of block in which entity was recorded.
	 */
	void setBlockNumber(long long  block_number);
	/*! \brief Get Hardcoded to '1'.
	 */
	std::string getId();

	/*! \brief Set Hardcoded to '1'.
	 */
	void setId(std::string  id);
	/*! \brief Get Price of native.
	 */
	std::string getEthPrice();

	/*! \brief Set Price of native.
	 */
	void setEthPrice(std::string  eth_price);
	/*! \brief Get 
	 */
	long long getVid();

	/*! \brief Set 
	 */
	void setVid(long long  vid);

private:
	std::string entry_time;
	std::string recv_time;
	long long block_number;
	std::string id;
	std::string eth_price;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Sushiswap.BundleDTO_H_ */
