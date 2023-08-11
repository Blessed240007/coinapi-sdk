<?php
/**
 * UNISWAPV2ETHEREUMTokenDTO
 *
 * PHP version 7.4
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * On Chain Dapps - REST API
 *
 * This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 6.6.0
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace OpenAPI\Client\Model;

use \ArrayAccess;
use \OpenAPI\Client\ObjectSerializer;

/**
 * UNISWAPV2ETHEREUMTokenDTO Class Doc Comment
 *
 * @category Class
 * @description Stores aggregated information for a specific token across all pairs that token is included in.
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class UNISWAPV2ETHEREUMTokenDTO implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'UNISWAP_V2_ETHEREUM.TokenDTO';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'entry_time' => '\DateTime',
        'recv_time' => '\DateTime',
        'block_number' => 'int',
        'vid' => 'int',
        'id' => 'string',
        'name' => 'string',
        'symbol' => 'string',
        'decimals' => 'int',
        'last_price_usd' => 'string',
        'last_price_block_number' => 'string',
        'total_supply' => 'string',
        'total_value_locked_usd' => 'string',
        'large_price_change_buffer' => 'int',
        'large_tvl_impact_buffer' => 'int',
        'token_symbol' => 'string'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'entry_time' => 'date-time',
        'recv_time' => 'date-time',
        'block_number' => 'int64',
        'vid' => 'int64',
        'id' => null,
        'name' => null,
        'symbol' => null,
        'decimals' => 'int32',
        'last_price_usd' => null,
        'last_price_block_number' => null,
        'total_supply' => null,
        'total_value_locked_usd' => null,
        'large_price_change_buffer' => 'int32',
        'large_tvl_impact_buffer' => 'int32',
        'token_symbol' => null
    ];

    /**
      * Array of nullable properties. Used for (de)serialization
      *
      * @var boolean[]
      */
    protected static array $openAPINullables = [
        'entry_time' => false,
		'recv_time' => false,
		'block_number' => false,
		'vid' => false,
		'id' => true,
		'name' => true,
		'symbol' => true,
		'decimals' => false,
		'last_price_usd' => true,
		'last_price_block_number' => true,
		'total_supply' => true,
		'total_value_locked_usd' => true,
		'large_price_change_buffer' => false,
		'large_tvl_impact_buffer' => false,
		'token_symbol' => true
    ];

    /**
      * If a nullable field gets set to null, insert it here
      *
      * @var boolean[]
      */
    protected array $openAPINullablesSetToNull = [];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of nullable properties
     *
     * @return array
     */
    protected static function openAPINullables(): array
    {
        return self::$openAPINullables;
    }

    /**
     * Array of nullable field names deliberately set to null
     *
     * @return boolean[]
     */
    private function getOpenAPINullablesSetToNull(): array
    {
        return $this->openAPINullablesSetToNull;
    }

    /**
     * Setter - Array of nullable field names deliberately set to null
     *
     * @param boolean[] $openAPINullablesSetToNull
     */
    private function setOpenAPINullablesSetToNull(array $openAPINullablesSetToNull): void
    {
        $this->openAPINullablesSetToNull = $openAPINullablesSetToNull;
    }

    /**
     * Checks if a property is nullable
     *
     * @param string $property
     * @return bool
     */
    public static function isNullable(string $property): bool
    {
        return self::openAPINullables()[$property] ?? false;
    }

    /**
     * Checks if a nullable property is set to null.
     *
     * @param string $property
     * @return bool
     */
    public function isNullableSetToNull(string $property): bool
    {
        return in_array($property, $this->getOpenAPINullablesSetToNull(), true);
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'entry_time' => 'entry_time',
        'recv_time' => 'recv_time',
        'block_number' => 'block_number',
        'vid' => 'vid',
        'id' => 'id',
        'name' => 'name',
        'symbol' => 'symbol',
        'decimals' => 'decimals',
        'last_price_usd' => 'last_price_usd',
        'last_price_block_number' => 'last_price_block_number',
        'total_supply' => 'total_supply',
        'total_value_locked_usd' => 'total_value_locked_usd',
        'large_price_change_buffer' => 'large_price_change_buffer',
        'large_tvl_impact_buffer' => 'large_tvl_impact_buffer',
        'token_symbol' => 'token_symbol'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'entry_time' => 'setEntryTime',
        'recv_time' => 'setRecvTime',
        'block_number' => 'setBlockNumber',
        'vid' => 'setVid',
        'id' => 'setId',
        'name' => 'setName',
        'symbol' => 'setSymbol',
        'decimals' => 'setDecimals',
        'last_price_usd' => 'setLastPriceUsd',
        'last_price_block_number' => 'setLastPriceBlockNumber',
        'total_supply' => 'setTotalSupply',
        'total_value_locked_usd' => 'setTotalValueLockedUsd',
        'large_price_change_buffer' => 'setLargePriceChangeBuffer',
        'large_tvl_impact_buffer' => 'setLargeTvlImpactBuffer',
        'token_symbol' => 'setTokenSymbol'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'entry_time' => 'getEntryTime',
        'recv_time' => 'getRecvTime',
        'block_number' => 'getBlockNumber',
        'vid' => 'getVid',
        'id' => 'getId',
        'name' => 'getName',
        'symbol' => 'getSymbol',
        'decimals' => 'getDecimals',
        'last_price_usd' => 'getLastPriceUsd',
        'last_price_block_number' => 'getLastPriceBlockNumber',
        'total_supply' => 'getTotalSupply',
        'total_value_locked_usd' => 'getTotalValueLockedUsd',
        'large_price_change_buffer' => 'getLargePriceChangeBuffer',
        'large_tvl_impact_buffer' => 'getLargeTvlImpactBuffer',
        'token_symbol' => 'getTokenSymbol'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }


    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->setIfExists('entry_time', $data ?? [], null);
        $this->setIfExists('recv_time', $data ?? [], null);
        $this->setIfExists('block_number', $data ?? [], null);
        $this->setIfExists('vid', $data ?? [], null);
        $this->setIfExists('id', $data ?? [], null);
        $this->setIfExists('name', $data ?? [], null);
        $this->setIfExists('symbol', $data ?? [], null);
        $this->setIfExists('decimals', $data ?? [], null);
        $this->setIfExists('last_price_usd', $data ?? [], null);
        $this->setIfExists('last_price_block_number', $data ?? [], null);
        $this->setIfExists('total_supply', $data ?? [], null);
        $this->setIfExists('total_value_locked_usd', $data ?? [], null);
        $this->setIfExists('large_price_change_buffer', $data ?? [], null);
        $this->setIfExists('large_tvl_impact_buffer', $data ?? [], null);
        $this->setIfExists('token_symbol', $data ?? [], null);
    }

    /**
    * Sets $this->container[$variableName] to the given data or to the given default Value; if $variableName
    * is nullable and its value is set to null in the $fields array, then mark it as "set to null" in the
    * $this->openAPINullablesSetToNull array
    *
    * @param string $variableName
    * @param array  $fields
    * @param mixed  $defaultValue
    */
    private function setIfExists(string $variableName, array $fields, $defaultValue): void
    {
        if (self::isNullable($variableName) && array_key_exists($variableName, $fields) && is_null($fields[$variableName])) {
            $this->openAPINullablesSetToNull[] = $variableName;
        }

        $this->container[$variableName] = $fields[$variableName] ?? $defaultValue;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets entry_time
     *
     * @return \DateTime|null
     */
    public function getEntryTime()
    {
        return $this->container['entry_time'];
    }

    /**
     * Sets entry_time
     *
     * @param \DateTime|null $entry_time entry_time
     *
     * @return self
     */
    public function setEntryTime($entry_time)
    {
        if (is_null($entry_time)) {
            throw new \InvalidArgumentException('non-nullable entry_time cannot be null');
        }
        $this->container['entry_time'] = $entry_time;

        return $this;
    }

    /**
     * Gets recv_time
     *
     * @return \DateTime|null
     */
    public function getRecvTime()
    {
        return $this->container['recv_time'];
    }

    /**
     * Sets recv_time
     *
     * @param \DateTime|null $recv_time recv_time
     *
     * @return self
     */
    public function setRecvTime($recv_time)
    {
        if (is_null($recv_time)) {
            throw new \InvalidArgumentException('non-nullable recv_time cannot be null');
        }
        $this->container['recv_time'] = $recv_time;

        return $this;
    }

    /**
     * Gets block_number
     *
     * @return int|null
     */
    public function getBlockNumber()
    {
        return $this->container['block_number'];
    }

    /**
     * Sets block_number
     *
     * @param int|null $block_number Number of block in which entity was recorded.
     *
     * @return self
     */
    public function setBlockNumber($block_number)
    {
        if (is_null($block_number)) {
            throw new \InvalidArgumentException('non-nullable block_number cannot be null');
        }
        $this->container['block_number'] = $block_number;

        return $this;
    }

    /**
     * Gets vid
     *
     * @return int|null
     */
    public function getVid()
    {
        return $this->container['vid'];
    }

    /**
     * Sets vid
     *
     * @param int|null $vid .
     *
     * @return self
     */
    public function setVid($vid)
    {
        if (is_null($vid)) {
            throw new \InvalidArgumentException('non-nullable vid cannot be null');
        }
        $this->container['vid'] = $vid;

        return $this;
    }

    /**
     * Gets id
     *
     * @return string|null
     */
    public function getId()
    {
        return $this->container['id'];
    }

    /**
     * Sets id
     *
     * @param string|null $id Smart contract address of the token
     *
     * @return self
     */
    public function setId($id)
    {
        if (is_null($id)) {
            array_push($this->openAPINullablesSetToNull, 'id');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('id', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['id'] = $id;

        return $this;
    }

    /**
     * Gets name
     *
     * @return string|null
     */
    public function getName()
    {
        return $this->container['name'];
    }

    /**
     * Sets name
     *
     * @param string|null $name Name of the token, mirrored from the smart contract
     *
     * @return self
     */
    public function setName($name)
    {
        if (is_null($name)) {
            array_push($this->openAPINullablesSetToNull, 'name');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('name', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['name'] = $name;

        return $this;
    }

    /**
     * Gets symbol
     *
     * @return string|null
     */
    public function getSymbol()
    {
        return $this->container['symbol'];
    }

    /**
     * Sets symbol
     *
     * @param string|null $symbol Symbol of the token, mirrored from the smart contract
     *
     * @return self
     */
    public function setSymbol($symbol)
    {
        if (is_null($symbol)) {
            array_push($this->openAPINullablesSetToNull, 'symbol');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('symbol', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['symbol'] = $symbol;

        return $this;
    }

    /**
     * Gets decimals
     *
     * @return int|null
     */
    public function getDecimals()
    {
        return $this->container['decimals'];
    }

    /**
     * Sets decimals
     *
     * @param int|null $decimals The number of decimal places this token uses, default to 18
     *
     * @return self
     */
    public function setDecimals($decimals)
    {
        if (is_null($decimals)) {
            throw new \InvalidArgumentException('non-nullable decimals cannot be null');
        }
        $this->container['decimals'] = $decimals;

        return $this;
    }

    /**
     * Gets last_price_usd
     *
     * @return string|null
     */
    public function getLastPriceUsd()
    {
        return $this->container['last_price_usd'];
    }

    /**
     * Sets last_price_usd
     *
     * @param string|null $last_price_usd Optional field to track the price of a token, mostly for caching purposes
     *
     * @return self
     */
    public function setLastPriceUsd($last_price_usd)
    {
        if (is_null($last_price_usd)) {
            array_push($this->openAPINullablesSetToNull, 'last_price_usd');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('last_price_usd', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['last_price_usd'] = $last_price_usd;

        return $this;
    }

    /**
     * Gets last_price_block_number
     *
     * @return string|null
     */
    public function getLastPriceBlockNumber()
    {
        return $this->container['last_price_block_number'];
    }

    /**
     * Sets last_price_block_number
     *
     * @param string|null $last_price_block_number Optional field to track the block number of the last token price
     *
     * @return self
     */
    public function setLastPriceBlockNumber($last_price_block_number)
    {
        if (is_null($last_price_block_number)) {
            array_push($this->openAPINullablesSetToNull, 'last_price_block_number');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('last_price_block_number', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['last_price_block_number'] = $last_price_block_number;

        return $this;
    }

    /**
     * Gets total_supply
     *
     * @return string|null
     */
    public function getTotalSupply()
    {
        return $this->container['total_supply'];
    }

    /**
     * Sets total_supply
     *
     * @param string|null $total_supply amount of tokens in the protocol
     *
     * @return self
     */
    public function setTotalSupply($total_supply)
    {
        if (is_null($total_supply)) {
            array_push($this->openAPINullablesSetToNull, 'total_supply');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('total_supply', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['total_supply'] = $total_supply;

        return $this;
    }

    /**
     * Gets total_value_locked_usd
     *
     * @return string|null
     */
    public function getTotalValueLockedUsd()
    {
        return $this->container['total_value_locked_usd'];
    }

    /**
     * Sets total_value_locked_usd
     *
     * @param string|null $total_value_locked_usd Total value locked in the protocol
     *
     * @return self
     */
    public function setTotalValueLockedUsd($total_value_locked_usd)
    {
        if (is_null($total_value_locked_usd)) {
            array_push($this->openAPINullablesSetToNull, 'total_value_locked_usd');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('total_value_locked_usd', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['total_value_locked_usd'] = $total_value_locked_usd;

        return $this;
    }

    /**
     * Gets large_price_change_buffer
     *
     * @return int|null
     */
    public function getLargePriceChangeBuffer()
    {
        return $this->container['large_price_change_buffer'];
    }

    /**
     * Sets large_price_change_buffer
     *
     * @param int|null $large_price_change_buffer Buffer for large price changes
     *
     * @return self
     */
    public function setLargePriceChangeBuffer($large_price_change_buffer)
    {
        if (is_null($large_price_change_buffer)) {
            throw new \InvalidArgumentException('non-nullable large_price_change_buffer cannot be null');
        }
        $this->container['large_price_change_buffer'] = $large_price_change_buffer;

        return $this;
    }

    /**
     * Gets large_tvl_impact_buffer
     *
     * @return int|null
     */
    public function getLargeTvlImpactBuffer()
    {
        return $this->container['large_tvl_impact_buffer'];
    }

    /**
     * Sets large_tvl_impact_buffer
     *
     * @param int|null $large_tvl_impact_buffer Buffer for large TVL impacts
     *
     * @return self
     */
    public function setLargeTvlImpactBuffer($large_tvl_impact_buffer)
    {
        if (is_null($large_tvl_impact_buffer)) {
            throw new \InvalidArgumentException('non-nullable large_tvl_impact_buffer cannot be null');
        }
        $this->container['large_tvl_impact_buffer'] = $large_tvl_impact_buffer;

        return $this;
    }

    /**
     * Gets token_symbol
     *
     * @return string|null
     */
    public function getTokenSymbol()
    {
        return $this->container['token_symbol'];
    }

    /**
     * Sets token_symbol
     *
     * @param string|null $token_symbol token_symbol
     *
     * @return self
     */
    public function setTokenSymbol($token_symbol)
    {
        if (is_null($token_symbol)) {
            array_push($this->openAPINullablesSetToNull, 'token_symbol');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('token_symbol', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['token_symbol'] = $token_symbol;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset): bool
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed|null
     */
    #[\ReturnTypeWillChange]
    public function offsetGet($offset)
    {
        return $this->container[$offset] ?? null;
    }

    /**
     * Sets value based on offset.
     *
     * @param int|null $offset Offset
     * @param mixed    $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value): void
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset): void
    {
        unset($this->container[$offset]);
    }

    /**
     * Serializes the object to a value that can be serialized natively by json_encode().
     * @link https://www.php.net/manual/en/jsonserializable.jsonserialize.php
     *
     * @return mixed Returns data which can be serialized by json_encode(), which is a value
     * of any type other than a resource.
     */
    #[\ReturnTypeWillChange]
    public function jsonSerialize()
    {
       return ObjectSerializer::sanitizeForSerialization($this);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }

    /**
     * Gets a header-safe presentation of the object
     *
     * @return string
     */
    public function toHeaderValue()
    {
        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}


