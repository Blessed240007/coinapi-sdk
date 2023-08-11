=begin
#On Chain Dapps - REST API

# This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module OpenapiClient
  # Pool-level metadata.
  class UNISWAPV2ETHEREUMLiquidityPoolDTO
    attr_accessor :entry_time

    attr_accessor :recv_time

    # Number of block in which entity was recorded.
    attr_accessor :block_number

    # .
    attr_accessor :vid

    # Smart contract address of the pool
    attr_accessor :id

    # The protocol this pool belongs to
    attr_accessor :protocol

    # Name of liquidity pool (e.g. Curve.fi DAI/USDC/USDT)
    attr_accessor :name

    # Symbol of liquidity pool (e.g. 3CRV)
    attr_accessor :symbol

    # Tokens that need to be deposited to take a position in the protocol
    attr_accessor :input_tokens

    # Token that is minted to track ownership of position in protocol
    attr_accessor :output_token

    # Aditional tokens that are given as reward for position in a protocol
    attr_accessor :reward_tokens

    # Fees per trade incurred to the user
    attr_accessor :fees

    # Whether this pool is single-sided
    attr_accessor :is_single_sided

    # Creation timestamp
    attr_accessor :created_timestamp

    # Creation block number
    attr_accessor :created_block_number

    # Current TVL (Total Value Locked) of this pool in USD
    attr_accessor :total_value_locked_usd

    # All revenue generated by the liquidity pool, accrued to the supply side
    attr_accessor :cumulative_supply_side_revenue_usd

    # All revenue generated by the liquidity pool, accrued to the protocol
    attr_accessor :cumulative_protocol_side_revenue_usd

    # All revenue generated by the liquidity pool
    attr_accessor :cumulative_total_revenue_usd

    # All historical trade volume occurred in this pool, in USD
    attr_accessor :cumulative_volume_usd

    # Amount of input tokens in the pool
    attr_accessor :input_token_balances

    # Weights of input tokens in the liquidity pool in percentage values
    attr_accessor :input_token_weights

    # Total supply of output token
    attr_accessor :output_token_supply

    # Price per share of output token in USD
    attr_accessor :output_token_price_usd

    # Total supply of output tokens that are staked
    attr_accessor :staked_output_token_amount

    # Per-block reward token emission as of the current block normalized to a day, in token's native amount
    attr_accessor :reward_token_emissions_amount

    # Per-block reward token emission as of the current block normalized to a day, in USD value
    attr_accessor :reward_token_emissions_usd

    # Evaluated ask value of the liquidity pool.
    attr_accessor :evaluated_ask

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'entry_time' => :'entry_time',
        :'recv_time' => :'recv_time',
        :'block_number' => :'block_number',
        :'vid' => :'vid',
        :'id' => :'id',
        :'protocol' => :'protocol',
        :'name' => :'name',
        :'symbol' => :'symbol',
        :'input_tokens' => :'input_tokens',
        :'output_token' => :'output_token',
        :'reward_tokens' => :'reward_tokens',
        :'fees' => :'fees',
        :'is_single_sided' => :'is_single_sided',
        :'created_timestamp' => :'created_timestamp',
        :'created_block_number' => :'created_block_number',
        :'total_value_locked_usd' => :'total_value_locked_usd',
        :'cumulative_supply_side_revenue_usd' => :'cumulative_supply_side_revenue_usd',
        :'cumulative_protocol_side_revenue_usd' => :'cumulative_protocol_side_revenue_usd',
        :'cumulative_total_revenue_usd' => :'cumulative_total_revenue_usd',
        :'cumulative_volume_usd' => :'cumulative_volume_usd',
        :'input_token_balances' => :'input_token_balances',
        :'input_token_weights' => :'input_token_weights',
        :'output_token_supply' => :'output_token_supply',
        :'output_token_price_usd' => :'output_token_price_usd',
        :'staked_output_token_amount' => :'staked_output_token_amount',
        :'reward_token_emissions_amount' => :'reward_token_emissions_amount',
        :'reward_token_emissions_usd' => :'reward_token_emissions_usd',
        :'evaluated_ask' => :'evaluated_ask'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'entry_time' => :'Time',
        :'recv_time' => :'Time',
        :'block_number' => :'Integer',
        :'vid' => :'Integer',
        :'id' => :'String',
        :'protocol' => :'String',
        :'name' => :'String',
        :'symbol' => :'String',
        :'input_tokens' => :'Array<String>',
        :'output_token' => :'String',
        :'reward_tokens' => :'Array<String>',
        :'fees' => :'Array<String>',
        :'is_single_sided' => :'Boolean',
        :'created_timestamp' => :'String',
        :'created_block_number' => :'String',
        :'total_value_locked_usd' => :'String',
        :'cumulative_supply_side_revenue_usd' => :'String',
        :'cumulative_protocol_side_revenue_usd' => :'String',
        :'cumulative_total_revenue_usd' => :'String',
        :'cumulative_volume_usd' => :'String',
        :'input_token_balances' => :'Array<String>',
        :'input_token_weights' => :'Array<String>',
        :'output_token_supply' => :'String',
        :'output_token_price_usd' => :'String',
        :'staked_output_token_amount' => :'String',
        :'reward_token_emissions_amount' => :'Array<String>',
        :'reward_token_emissions_usd' => :'Array<String>',
        :'evaluated_ask' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'protocol',
        :'name',
        :'symbol',
        :'input_tokens',
        :'output_token',
        :'reward_tokens',
        :'fees',
        :'created_timestamp',
        :'created_block_number',
        :'total_value_locked_usd',
        :'cumulative_supply_side_revenue_usd',
        :'cumulative_protocol_side_revenue_usd',
        :'cumulative_total_revenue_usd',
        :'cumulative_volume_usd',
        :'input_token_balances',
        :'input_token_weights',
        :'output_token_supply',
        :'output_token_price_usd',
        :'staked_output_token_amount',
        :'reward_token_emissions_amount',
        :'reward_token_emissions_usd',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::UNISWAPV2ETHEREUMLiquidityPoolDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::UNISWAPV2ETHEREUMLiquidityPoolDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'entry_time')
        self.entry_time = attributes[:'entry_time']
      end

      if attributes.key?(:'recv_time')
        self.recv_time = attributes[:'recv_time']
      end

      if attributes.key?(:'block_number')
        self.block_number = attributes[:'block_number']
      end

      if attributes.key?(:'vid')
        self.vid = attributes[:'vid']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'protocol')
        self.protocol = attributes[:'protocol']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'symbol')
        self.symbol = attributes[:'symbol']
      end

      if attributes.key?(:'input_tokens')
        if (value = attributes[:'input_tokens']).is_a?(Array)
          self.input_tokens = value
        end
      end

      if attributes.key?(:'output_token')
        self.output_token = attributes[:'output_token']
      end

      if attributes.key?(:'reward_tokens')
        if (value = attributes[:'reward_tokens']).is_a?(Array)
          self.reward_tokens = value
        end
      end

      if attributes.key?(:'fees')
        if (value = attributes[:'fees']).is_a?(Array)
          self.fees = value
        end
      end

      if attributes.key?(:'is_single_sided')
        self.is_single_sided = attributes[:'is_single_sided']
      end

      if attributes.key?(:'created_timestamp')
        self.created_timestamp = attributes[:'created_timestamp']
      end

      if attributes.key?(:'created_block_number')
        self.created_block_number = attributes[:'created_block_number']
      end

      if attributes.key?(:'total_value_locked_usd')
        self.total_value_locked_usd = attributes[:'total_value_locked_usd']
      end

      if attributes.key?(:'cumulative_supply_side_revenue_usd')
        self.cumulative_supply_side_revenue_usd = attributes[:'cumulative_supply_side_revenue_usd']
      end

      if attributes.key?(:'cumulative_protocol_side_revenue_usd')
        self.cumulative_protocol_side_revenue_usd = attributes[:'cumulative_protocol_side_revenue_usd']
      end

      if attributes.key?(:'cumulative_total_revenue_usd')
        self.cumulative_total_revenue_usd = attributes[:'cumulative_total_revenue_usd']
      end

      if attributes.key?(:'cumulative_volume_usd')
        self.cumulative_volume_usd = attributes[:'cumulative_volume_usd']
      end

      if attributes.key?(:'input_token_balances')
        if (value = attributes[:'input_token_balances']).is_a?(Array)
          self.input_token_balances = value
        end
      end

      if attributes.key?(:'input_token_weights')
        if (value = attributes[:'input_token_weights']).is_a?(Array)
          self.input_token_weights = value
        end
      end

      if attributes.key?(:'output_token_supply')
        self.output_token_supply = attributes[:'output_token_supply']
      end

      if attributes.key?(:'output_token_price_usd')
        self.output_token_price_usd = attributes[:'output_token_price_usd']
      end

      if attributes.key?(:'staked_output_token_amount')
        self.staked_output_token_amount = attributes[:'staked_output_token_amount']
      end

      if attributes.key?(:'reward_token_emissions_amount')
        if (value = attributes[:'reward_token_emissions_amount']).is_a?(Array)
          self.reward_token_emissions_amount = value
        end
      end

      if attributes.key?(:'reward_token_emissions_usd')
        if (value = attributes[:'reward_token_emissions_usd']).is_a?(Array)
          self.reward_token_emissions_usd = value
        end
      end

      if attributes.key?(:'evaluated_ask')
        self.evaluated_ask = attributes[:'evaluated_ask']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          entry_time == o.entry_time &&
          recv_time == o.recv_time &&
          block_number == o.block_number &&
          vid == o.vid &&
          id == o.id &&
          protocol == o.protocol &&
          name == o.name &&
          symbol == o.symbol &&
          input_tokens == o.input_tokens &&
          output_token == o.output_token &&
          reward_tokens == o.reward_tokens &&
          fees == o.fees &&
          is_single_sided == o.is_single_sided &&
          created_timestamp == o.created_timestamp &&
          created_block_number == o.created_block_number &&
          total_value_locked_usd == o.total_value_locked_usd &&
          cumulative_supply_side_revenue_usd == o.cumulative_supply_side_revenue_usd &&
          cumulative_protocol_side_revenue_usd == o.cumulative_protocol_side_revenue_usd &&
          cumulative_total_revenue_usd == o.cumulative_total_revenue_usd &&
          cumulative_volume_usd == o.cumulative_volume_usd &&
          input_token_balances == o.input_token_balances &&
          input_token_weights == o.input_token_weights &&
          output_token_supply == o.output_token_supply &&
          output_token_price_usd == o.output_token_price_usd &&
          staked_output_token_amount == o.staked_output_token_amount &&
          reward_token_emissions_amount == o.reward_token_emissions_amount &&
          reward_token_emissions_usd == o.reward_token_emissions_usd &&
          evaluated_ask == o.evaluated_ask
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [entry_time, recv_time, block_number, vid, id, protocol, name, symbol, input_tokens, output_token, reward_tokens, fees, is_single_sided, created_timestamp, created_block_number, total_value_locked_usd, cumulative_supply_side_revenue_usd, cumulative_protocol_side_revenue_usd, cumulative_total_revenue_usd, cumulative_volume_usd, input_token_balances, input_token_weights, output_token_supply, output_token_price_usd, staked_output_token_amount, reward_token_emissions_amount, reward_token_emissions_usd, evaluated_ask].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
