<?php
/**
 * UNISWAPV3ETHEREUMAccountDTO
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
 * UNISWAPV3ETHEREUMAccountDTO Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class UNISWAPV3ETHEREUMAccountDTO implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'UNISWAP_V3_ETHEREUM.AccountDTO';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'entry_time' => '\DateTime',
        'recv_time' => '\DateTime',
        'block_number' => 'int',
        'block_range' => 'string',
        'id' => 'string',
        'position_count' => 'int',
        'open_position_count' => 'int',
        'closed_position_count' => 'int',
        'deposit_count' => 'int',
        'withdraw_count' => 'int',
        'swap_count' => 'int'
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
        'block_range' => null,
        'id' => null,
        'position_count' => 'int32',
        'open_position_count' => 'int32',
        'closed_position_count' => 'int32',
        'deposit_count' => 'int32',
        'withdraw_count' => 'int32',
        'swap_count' => 'int32'
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
		'block_range' => true,
		'id' => true,
		'position_count' => false,
		'open_position_count' => false,
		'closed_position_count' => false,
		'deposit_count' => false,
		'withdraw_count' => false,
		'swap_count' => false
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
        'block_range' => 'block_range',
        'id' => 'id',
        'position_count' => 'position_count',
        'open_position_count' => 'open_position_count',
        'closed_position_count' => 'closed_position_count',
        'deposit_count' => 'deposit_count',
        'withdraw_count' => 'withdraw_count',
        'swap_count' => 'swap_count'
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
        'block_range' => 'setBlockRange',
        'id' => 'setId',
        'position_count' => 'setPositionCount',
        'open_position_count' => 'setOpenPositionCount',
        'closed_position_count' => 'setClosedPositionCount',
        'deposit_count' => 'setDepositCount',
        'withdraw_count' => 'setWithdrawCount',
        'swap_count' => 'setSwapCount'
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
        'block_range' => 'getBlockRange',
        'id' => 'getId',
        'position_count' => 'getPositionCount',
        'open_position_count' => 'getOpenPositionCount',
        'closed_position_count' => 'getClosedPositionCount',
        'deposit_count' => 'getDepositCount',
        'withdraw_count' => 'getWithdrawCount',
        'swap_count' => 'getSwapCount'
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
        $this->setIfExists('block_range', $data ?? [], null);
        $this->setIfExists('id', $data ?? [], null);
        $this->setIfExists('position_count', $data ?? [], null);
        $this->setIfExists('open_position_count', $data ?? [], null);
        $this->setIfExists('closed_position_count', $data ?? [], null);
        $this->setIfExists('deposit_count', $data ?? [], null);
        $this->setIfExists('withdraw_count', $data ?? [], null);
        $this->setIfExists('swap_count', $data ?? [], null);
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
     * Gets block_range
     *
     * @return string|null
     */
    public function getBlockRange()
    {
        return $this->container['block_range'];
    }

    /**
     * Sets block_range
     *
     * @param string|null $block_range 
     *
     * @return self
     */
    public function setBlockRange($block_range)
    {
        if (is_null($block_range)) {
            array_push($this->openAPINullablesSetToNull, 'block_range');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('block_range', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['block_range'] = $block_range;

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
     * @param string|null $id Account address.
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
     * Gets position_count
     *
     * @return int|null
     */
    public function getPositionCount()
    {
        return $this->container['position_count'];
    }

    /**
     * Sets position_count
     *
     * @param int|null $position_count Number of positions this account has.
     *
     * @return self
     */
    public function setPositionCount($position_count)
    {
        if (is_null($position_count)) {
            throw new \InvalidArgumentException('non-nullable position_count cannot be null');
        }
        $this->container['position_count'] = $position_count;

        return $this;
    }

    /**
     * Gets open_position_count
     *
     * @return int|null
     */
    public function getOpenPositionCount()
    {
        return $this->container['open_position_count'];
    }

    /**
     * Sets open_position_count
     *
     * @param int|null $open_position_count Number of open positions this account has.
     *
     * @return self
     */
    public function setOpenPositionCount($open_position_count)
    {
        if (is_null($open_position_count)) {
            throw new \InvalidArgumentException('non-nullable open_position_count cannot be null');
        }
        $this->container['open_position_count'] = $open_position_count;

        return $this;
    }

    /**
     * Gets closed_position_count
     *
     * @return int|null
     */
    public function getClosedPositionCount()
    {
        return $this->container['closed_position_count'];
    }

    /**
     * Sets closed_position_count
     *
     * @param int|null $closed_position_count Number of closed positions this account has.
     *
     * @return self
     */
    public function setClosedPositionCount($closed_position_count)
    {
        if (is_null($closed_position_count)) {
            throw new \InvalidArgumentException('non-nullable closed_position_count cannot be null');
        }
        $this->container['closed_position_count'] = $closed_position_count;

        return $this;
    }

    /**
     * Gets deposit_count
     *
     * @return int|null
     */
    public function getDepositCount()
    {
        return $this->container['deposit_count'];
    }

    /**
     * Sets deposit_count
     *
     * @param int|null $deposit_count Number of deposits this account made.
     *
     * @return self
     */
    public function setDepositCount($deposit_count)
    {
        if (is_null($deposit_count)) {
            throw new \InvalidArgumentException('non-nullable deposit_count cannot be null');
        }
        $this->container['deposit_count'] = $deposit_count;

        return $this;
    }

    /**
     * Gets withdraw_count
     *
     * @return int|null
     */
    public function getWithdrawCount()
    {
        return $this->container['withdraw_count'];
    }

    /**
     * Sets withdraw_count
     *
     * @param int|null $withdraw_count Number of withdrawals this account made.
     *
     * @return self
     */
    public function setWithdrawCount($withdraw_count)
    {
        if (is_null($withdraw_count)) {
            throw new \InvalidArgumentException('non-nullable withdraw_count cannot be null');
        }
        $this->container['withdraw_count'] = $withdraw_count;

        return $this;
    }

    /**
     * Gets swap_count
     *
     * @return int|null
     */
    public function getSwapCount()
    {
        return $this->container['swap_count'];
    }

    /**
     * Sets swap_count
     *
     * @param int|null $swap_count Number of times this account has traded/swapped.
     *
     * @return self
     */
    public function setSwapCount($swap_count)
    {
        if (is_null($swap_count)) {
            throw new \InvalidArgumentException('non-nullable swap_count cannot be null');
        }
        $this->container['swap_count'] = $swap_count;

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


