<?php
/**
 * UNISWAPV3ETHEREUMWithdrawDTO
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
 * UNISWAPV3ETHEREUMWithdrawDTO Class Doc Comment
 *
 * @category Class
 * @description 
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class UNISWAPV3ETHEREUMWithdrawDTO implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'UNISWAP_V3_ETHEREUM.WithdrawDTO';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'entry_time' => '\DateTime',
        'recv_time' => '\DateTime',
        'block_number' => 'int',
        'id' => 'string',
        'hash' => 'string',
        'nonce' => 'string',
        'log_index' => 'int',
        'gas_limit' => 'string',
        'gas_used' => 'string',
        'gas_price' => 'string',
        'protocol' => 'string',
        'account' => 'string',
        'position' => 'string',
        'tick_lower' => 'string',
        'tick_upper' => 'string',
        'pool' => 'string',
        'timestamp' => 'string',
        'liquidity' => 'string',
        'input_tokens' => 'string[]',
        'input_token_amounts' => 'string[]',
        'reserve_amounts' => 'string[]',
        'amount_usd' => 'string'
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
        'id' => null,
        'hash' => null,
        'nonce' => null,
        'log_index' => 'int32',
        'gas_limit' => null,
        'gas_used' => null,
        'gas_price' => null,
        'protocol' => null,
        'account' => null,
        'position' => null,
        'tick_lower' => null,
        'tick_upper' => null,
        'pool' => null,
        'timestamp' => null,
        'liquidity' => null,
        'input_tokens' => null,
        'input_token_amounts' => null,
        'reserve_amounts' => null,
        'amount_usd' => null
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
		'id' => true,
		'hash' => true,
		'nonce' => true,
		'log_index' => false,
		'gas_limit' => true,
		'gas_used' => true,
		'gas_price' => true,
		'protocol' => true,
		'account' => true,
		'position' => true,
		'tick_lower' => true,
		'tick_upper' => true,
		'pool' => true,
		'timestamp' => true,
		'liquidity' => true,
		'input_tokens' => true,
		'input_token_amounts' => true,
		'reserve_amounts' => true,
		'amount_usd' => true
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
        'id' => 'id',
        'hash' => 'hash',
        'nonce' => 'nonce',
        'log_index' => 'log_index',
        'gas_limit' => 'gas_limit',
        'gas_used' => 'gas_used',
        'gas_price' => 'gas_price',
        'protocol' => 'protocol',
        'account' => 'account',
        'position' => 'position',
        'tick_lower' => 'tick_lower',
        'tick_upper' => 'tick_upper',
        'pool' => 'pool',
        'timestamp' => 'timestamp',
        'liquidity' => 'liquidity',
        'input_tokens' => 'input_tokens',
        'input_token_amounts' => 'input_token_amounts',
        'reserve_amounts' => 'reserve_amounts',
        'amount_usd' => 'amount_usd'
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
        'id' => 'setId',
        'hash' => 'setHash',
        'nonce' => 'setNonce',
        'log_index' => 'setLogIndex',
        'gas_limit' => 'setGasLimit',
        'gas_used' => 'setGasUsed',
        'gas_price' => 'setGasPrice',
        'protocol' => 'setProtocol',
        'account' => 'setAccount',
        'position' => 'setPosition',
        'tick_lower' => 'setTickLower',
        'tick_upper' => 'setTickUpper',
        'pool' => 'setPool',
        'timestamp' => 'setTimestamp',
        'liquidity' => 'setLiquidity',
        'input_tokens' => 'setInputTokens',
        'input_token_amounts' => 'setInputTokenAmounts',
        'reserve_amounts' => 'setReserveAmounts',
        'amount_usd' => 'setAmountUsd'
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
        'id' => 'getId',
        'hash' => 'getHash',
        'nonce' => 'getNonce',
        'log_index' => 'getLogIndex',
        'gas_limit' => 'getGasLimit',
        'gas_used' => 'getGasUsed',
        'gas_price' => 'getGasPrice',
        'protocol' => 'getProtocol',
        'account' => 'getAccount',
        'position' => 'getPosition',
        'tick_lower' => 'getTickLower',
        'tick_upper' => 'getTickUpper',
        'pool' => 'getPool',
        'timestamp' => 'getTimestamp',
        'liquidity' => 'getLiquidity',
        'input_tokens' => 'getInputTokens',
        'input_token_amounts' => 'getInputTokenAmounts',
        'reserve_amounts' => 'getReserveAmounts',
        'amount_usd' => 'getAmountUsd'
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
        $this->setIfExists('id', $data ?? [], null);
        $this->setIfExists('hash', $data ?? [], null);
        $this->setIfExists('nonce', $data ?? [], null);
        $this->setIfExists('log_index', $data ?? [], null);
        $this->setIfExists('gas_limit', $data ?? [], null);
        $this->setIfExists('gas_used', $data ?? [], null);
        $this->setIfExists('gas_price', $data ?? [], null);
        $this->setIfExists('protocol', $data ?? [], null);
        $this->setIfExists('account', $data ?? [], null);
        $this->setIfExists('position', $data ?? [], null);
        $this->setIfExists('tick_lower', $data ?? [], null);
        $this->setIfExists('tick_upper', $data ?? [], null);
        $this->setIfExists('pool', $data ?? [], null);
        $this->setIfExists('timestamp', $data ?? [], null);
        $this->setIfExists('liquidity', $data ?? [], null);
        $this->setIfExists('input_tokens', $data ?? [], null);
        $this->setIfExists('input_token_amounts', $data ?? [], null);
        $this->setIfExists('reserve_amounts', $data ?? [], null);
        $this->setIfExists('amount_usd', $data ?? [], null);
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
     * @param string|null $id (transaction hash)-{ Log index }
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
     * Gets hash
     *
     * @return string|null
     */
    public function getHash()
    {
        return $this->container['hash'];
    }

    /**
     * Sets hash
     *
     * @param string|null $hash Transaction hash of the transaction that emitted this event
     *
     * @return self
     */
    public function setHash($hash)
    {
        if (is_null($hash)) {
            array_push($this->openAPINullablesSetToNull, 'hash');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('hash', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['hash'] = $hash;

        return $this;
    }

    /**
     * Gets nonce
     *
     * @return string|null
     */
    public function getNonce()
    {
        return $this->container['nonce'];
    }

    /**
     * Sets nonce
     *
     * @param string|null $nonce Nonce of the transaction that emitted this event
     *
     * @return self
     */
    public function setNonce($nonce)
    {
        if (is_null($nonce)) {
            array_push($this->openAPINullablesSetToNull, 'nonce');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('nonce', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['nonce'] = $nonce;

        return $this;
    }

    /**
     * Gets log_index
     *
     * @return int|null
     */
    public function getLogIndex()
    {
        return $this->container['log_index'];
    }

    /**
     * Sets log_index
     *
     * @param int|null $log_index Event log index. For transactions that don't emit event, create arbitrary index starting from 0
     *
     * @return self
     */
    public function setLogIndex($log_index)
    {
        if (is_null($log_index)) {
            throw new \InvalidArgumentException('non-nullable log_index cannot be null');
        }
        $this->container['log_index'] = $log_index;

        return $this;
    }

    /**
     * Gets gas_limit
     *
     * @return string|null
     */
    public function getGasLimit()
    {
        return $this->container['gas_limit'];
    }

    /**
     * Sets gas_limit
     *
     * @param string|null $gas_limit Gas limit of the transaction that emitted this event
     *
     * @return self
     */
    public function setGasLimit($gas_limit)
    {
        if (is_null($gas_limit)) {
            array_push($this->openAPINullablesSetToNull, 'gas_limit');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('gas_limit', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['gas_limit'] = $gas_limit;

        return $this;
    }

    /**
     * Gets gas_used
     *
     * @return string|null
     */
    public function getGasUsed()
    {
        return $this->container['gas_used'];
    }

    /**
     * Sets gas_used
     *
     * @param string|null $gas_used Gas used in this transaction. (Optional because not every chain will support this)
     *
     * @return self
     */
    public function setGasUsed($gas_used)
    {
        if (is_null($gas_used)) {
            array_push($this->openAPINullablesSetToNull, 'gas_used');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('gas_used', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['gas_used'] = $gas_used;

        return $this;
    }

    /**
     * Gets gas_price
     *
     * @return string|null
     */
    public function getGasPrice()
    {
        return $this->container['gas_price'];
    }

    /**
     * Sets gas_price
     *
     * @param string|null $gas_price Gas price of the transaction that emitted this event
     *
     * @return self
     */
    public function setGasPrice($gas_price)
    {
        if (is_null($gas_price)) {
            array_push($this->openAPINullablesSetToNull, 'gas_price');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('gas_price', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['gas_price'] = $gas_price;

        return $this;
    }

    /**
     * Gets protocol
     *
     * @return string|null
     */
    public function getProtocol()
    {
        return $this->container['protocol'];
    }

    /**
     * Sets protocol
     *
     * @param string|null $protocol The protocol this transaction belongs to
     *
     * @return self
     */
    public function setProtocol($protocol)
    {
        if (is_null($protocol)) {
            array_push($this->openAPINullablesSetToNull, 'protocol');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('protocol', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['protocol'] = $protocol;

        return $this;
    }

    /**
     * Gets account
     *
     * @return string|null
     */
    public function getAccount()
    {
        return $this->container['account'];
    }

    /**
     * Sets account
     *
     * @param string|null $account Account that emitted this event
     *
     * @return self
     */
    public function setAccount($account)
    {
        if (is_null($account)) {
            array_push($this->openAPINullablesSetToNull, 'account');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('account', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['account'] = $account;

        return $this;
    }

    /**
     * Gets position
     *
     * @return string|null
     */
    public function getPosition()
    {
        return $this->container['position'];
    }

    /**
     * Sets position
     *
     * @param string|null $position The user position changed by this event
     *
     * @return self
     */
    public function setPosition($position)
    {
        if (is_null($position)) {
            array_push($this->openAPINullablesSetToNull, 'position');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('position', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['position'] = $position;

        return $this;
    }

    /**
     * Gets tick_lower
     *
     * @return string|null
     */
    public function getTickLower()
    {
        return $this->container['tick_lower'];
    }

    /**
     * Sets tick_lower
     *
     * @param string|null $tick_lower lower tick of position
     *
     * @return self
     */
    public function setTickLower($tick_lower)
    {
        if (is_null($tick_lower)) {
            array_push($this->openAPINullablesSetToNull, 'tick_lower');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('tick_lower', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['tick_lower'] = $tick_lower;

        return $this;
    }

    /**
     * Gets tick_upper
     *
     * @return string|null
     */
    public function getTickUpper()
    {
        return $this->container['tick_upper'];
    }

    /**
     * Sets tick_upper
     *
     * @param string|null $tick_upper upper tick of position
     *
     * @return self
     */
    public function setTickUpper($tick_upper)
    {
        if (is_null($tick_upper)) {
            array_push($this->openAPINullablesSetToNull, 'tick_upper');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('tick_upper', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['tick_upper'] = $tick_upper;

        return $this;
    }

    /**
     * Gets pool
     *
     * @return string|null
     */
    public function getPool()
    {
        return $this->container['pool'];
    }

    /**
     * Sets pool
     *
     * @param string|null $pool The pool involving this event
     *
     * @return self
     */
    public function setPool($pool)
    {
        if (is_null($pool)) {
            array_push($this->openAPINullablesSetToNull, 'pool');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('pool', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['pool'] = $pool;

        return $this;
    }

    /**
     * Gets timestamp
     *
     * @return string|null
     */
    public function getTimestamp()
    {
        return $this->container['timestamp'];
    }

    /**
     * Sets timestamp
     *
     * @param string|null $timestamp Timestamp of this event
     *
     * @return self
     */
    public function setTimestamp($timestamp)
    {
        if (is_null($timestamp)) {
            array_push($this->openAPINullablesSetToNull, 'timestamp');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('timestamp', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['timestamp'] = $timestamp;

        return $this;
    }

    /**
     * Gets liquidity
     *
     * @return string|null
     */
    public function getLiquidity()
    {
        return $this->container['liquidity'];
    }

    /**
     * Sets liquidity
     *
     * @param string|null $liquidity Amount of liquidity burned
     *
     * @return self
     */
    public function setLiquidity($liquidity)
    {
        if (is_null($liquidity)) {
            array_push($this->openAPINullablesSetToNull, 'liquidity');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('liquidity', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['liquidity'] = $liquidity;

        return $this;
    }

    /**
     * Gets input_tokens
     *
     * @return string[]|null
     */
    public function getInputTokens()
    {
        return $this->container['input_tokens'];
    }

    /**
     * Sets input_tokens
     *
     * @param string[]|null $input_tokens Input tokens of the pool (not input tokens of the event/transaction). E.g. WETH and USDC from a WETH-USDC pool
     *
     * @return self
     */
    public function setInputTokens($input_tokens)
    {
        if (is_null($input_tokens)) {
            array_push($this->openAPINullablesSetToNull, 'input_tokens');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('input_tokens', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['input_tokens'] = $input_tokens;

        return $this;
    }

    /**
     * Gets input_token_amounts
     *
     * @return string[]|null
     */
    public function getInputTokenAmounts()
    {
        return $this->container['input_token_amounts'];
    }

    /**
     * Sets input_token_amounts
     *
     * @param string[]|null $input_token_amounts Amount of input tokens in the token's native unit
     *
     * @return self
     */
    public function setInputTokenAmounts($input_token_amounts)
    {
        if (is_null($input_token_amounts)) {
            array_push($this->openAPINullablesSetToNull, 'input_token_amounts');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('input_token_amounts', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['input_token_amounts'] = $input_token_amounts;

        return $this;
    }

    /**
     * Gets reserve_amounts
     *
     * @return string[]|null
     */
    public function getReserveAmounts()
    {
        return $this->container['reserve_amounts'];
    }

    /**
     * Sets reserve_amounts
     *
     * @param string[]|null $reserve_amounts Amount of input tokens in the liquidity pool
     *
     * @return self
     */
    public function setReserveAmounts($reserve_amounts)
    {
        if (is_null($reserve_amounts)) {
            array_push($this->openAPINullablesSetToNull, 'reserve_amounts');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('reserve_amounts', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['reserve_amounts'] = $reserve_amounts;

        return $this;
    }

    /**
     * Gets amount_usd
     *
     * @return string|null
     */
    public function getAmountUsd()
    {
        return $this->container['amount_usd'];
    }

    /**
     * Sets amount_usd
     *
     * @param string|null $amount_usd USD-normalized value of the transaction of the underlying (e.g. sum of tokens withdrawn from a pool)
     *
     * @return self
     */
    public function setAmountUsd($amount_usd)
    {
        if (is_null($amount_usd)) {
            array_push($this->openAPINullablesSetToNull, 'amount_usd');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('amount_usd', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['amount_usd'] = $amount_usd;

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


