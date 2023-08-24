=begin
#On Chain Dapps - REST API

# This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::MetadataApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MetadataApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::MetadataApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MetadataApi' do
    it 'should create an instance of MetadataApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::MetadataApi)
    end
  end

  # unit tests for metadata_chains_chain_id_get
  # Gets chain by chainId.
  # @param chain_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'metadata_chains_chain_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for metadata_chains_get
  # List all chains.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'metadata_chains_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for metadata_dapps_dapp_id_get
  # Gets dapp by id.
  # @param dapp_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'metadata_dapps_dapp_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for metadata_dapps_get
  # List all decentralized applications.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'metadata_dapps_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
