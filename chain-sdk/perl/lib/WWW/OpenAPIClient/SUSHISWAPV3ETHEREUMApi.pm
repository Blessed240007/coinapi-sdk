=begin comment

On Chain Dapps - REST API

 This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::SUSHISWAPV3ETHEREUMApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::OpenAPIClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# s_ushiswapv3_ethereum_liquidity_pools__current
#
# LiquidityPools (current)
#
# @param string $id Smart contract address of the pool. (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'Smart contract address of the pool.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 's_ushiswapv3_ethereum_liquidity_pools__current' } = {
        summary => 'LiquidityPools (current)',
        params => $params,
        returns => 'ARRAY[SUSHISWAPV3ETHEREUMLiquidityPoolDTO]',
        };
}
# @return ARRAY[SUSHISWAPV3ETHEREUMLiquidityPoolDTO]
#
sub s_ushiswapv3_ethereum_liquidity_pools__current {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/v1/dapps/sushiswap-v3-ethereum/liquidityPools/current';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('text/plain', 'application/json', 'text/json', 'application/x-msgpack');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'id'}) {
        $query_params->{'id'} = $self->{api_client}->to_query_value($args{'id'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[SUSHISWAPV3ETHEREUMLiquidityPoolDTO]', $response);
    return $_response_object;
}

#
# s_ushiswapv3_ethereum_swaps__current
#
# Swaps (current)
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 's_ushiswapv3_ethereum_swaps__current' } = {
        summary => 'Swaps (current)',
        params => $params,
        returns => 'ARRAY[SUSHISWAPV3ETHEREUMSwapDTO]',
        };
}
# @return ARRAY[SUSHISWAPV3ETHEREUMSwapDTO]
#
sub s_ushiswapv3_ethereum_swaps__current {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/v1/dapps/sushiswap-v3-ethereum/swaps/current';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('text/plain', 'application/json', 'text/json', 'application/x-msgpack');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[SUSHISWAPV3ETHEREUMSwapDTO]', $response);
    return $_response_object;
}

#
# s_ushiswapv3_ethereum_tokens__current
#
# Tokens (current)
#
# @param string $id Smart contract address of the token. (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'Smart contract address of the token.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 's_ushiswapv3_ethereum_tokens__current' } = {
        summary => 'Tokens (current)',
        params => $params,
        returns => 'ARRAY[SUSHISWAPV3ETHEREUMTokenDTO]',
        };
}
# @return ARRAY[SUSHISWAPV3ETHEREUMTokenDTO]
#
sub s_ushiswapv3_ethereum_tokens__current {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/v1/dapps/sushiswap-v3-ethereum/tokens/current';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('text/plain', 'application/json', 'text/json', 'application/x-msgpack');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'id'}) {
        $query_params->{'id'} = $self->{api_client}->to_query_value($args{'id'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[SUSHISWAPV3ETHEREUMTokenDTO]', $response);
    return $_response_object;
}

1;
