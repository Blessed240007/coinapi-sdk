=begin
#OEML - REST API

#This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::PositionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PositionsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::PositionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PositionsApi' do
    it 'should create an instance of PositionsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::PositionsApi)
    end
  end

  # unit tests for v1_positions_get
  # Get open positions
  # Get current open positions across all or single exchange.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :exchange_id Filter the balances to the specific exchange.
  # @return [Array<Position>]
  describe 'v1_positions_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
