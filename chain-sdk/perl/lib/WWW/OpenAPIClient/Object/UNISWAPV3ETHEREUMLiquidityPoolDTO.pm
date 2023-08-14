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
package WWW::OpenAPIClient::Object::UNISWAPV3ETHEREUMLiquidityPoolDTO;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;


use base ("Class::Accessor", "Class::Data::Inheritable");

#
#Pool-level metadata.
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

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
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {});
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new {
    my ($class, %args) = @_;

    my $self = bless {}, $class;

    $self->init(%args);

    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON {
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            my $_json_attribute = $self->attribute_map->{$_key};
            my $_type = $self->openapi_types->{$_key};
            my $_value = $self->{$_key};
            if ($_type =~ /^array\[(.+)\]$/i) { # array
                my $_subclass = $1;
                $_data->{$_json_attribute} =  [ map { $self->_to_json_primitives($_subclass, $_) } @$_value ];
            } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
                my $_subclass = $1;
                my %_hash = ();
                while (my($_key, $_element) = each %{$_value}) {
                    $_hash{$_key} = $self->_to_json_primitives($_subclass, $_element);
                }
                $_data->{$_json_attribute} = \%_hash;
            } elsif ( grep( /^$_type$/, ('int', 'double', 'string', 'boolean', 'DATE', 'DATE_TIME'))) {
                $_data->{$_json_attribute} = $self->_to_json_primitives($_type, $_value);
            } else {
                $_data->{$_json_attribute} = $_value;
            }
        }
    }

    return $_data;
}

# to_json non-array data
sub _to_json_primitives {
    my ($self, $type, $data) = @_;
    if ( grep( /^$type$/, ('int', 'double'))) {
        # https://metacpan.org/pod/JSON#simple-scalars
        # numify it, ensuring it will be dumped as a number
        return undef unless defined $data;
        return $data + 0;
    } elsif ($type eq 'string') {
        # https://metacpan.org/pod/JSON#simple-scalars
        # stringified
        return undef unless defined $data;
        return $data . q();
    } elsif ($type eq 'boolean') {
        # https://metacpan.org/pod/JSON#JSON::true,-JSON::false,-JSON::null
        return $data ? \1 : \0;
    } elsif ($type eq 'DATE') {
        return undef unless defined $data;
        if (ref($data) eq 'DateTime') {
            # https://metacpan.org/pod/DateTime#$dt-%3Eymd($optional_separator),-$dt-%3Emdy(...),-$dt-%3Edmy(...)
            return $data->ymd;
        }
        return $data .q();
    } elsif ($type eq 'DATE_TIME') {
        return undef unless defined $data;
        # the date-time notation as defined by RFC 3339, section 5.6, for example, 2017-07-21T17:32:28Z
        if (ref($data) eq 'DateTime') {
            # https://metacpan.org/pod/DateTime#$dt-%3Erfc3339
            return $data->rfc3339;
        }
        return $data .q();
    } else { # hash (model),  In this case, the TO_JSON of the $data object is executed
        return $data;
    }
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key};
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
            $log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if (grep( /^$type$/ , ('DATE_TIME', 'DATE'))) {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double'))) {
        return undef unless defined $data;
        return $data + 0;
    } elsif ($type eq 'string') {
        return undef unless defined $data;
        return $data . q();
    } elsif ($type eq 'boolean') {
        return !!$data;
    } else { # hash(model)
        my $_instance = eval "WWW::OpenAPIClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}


__PACKAGE__->class_documentation({description => 'Pool-level metadata.',
                                  class => 'UNISWAPV3ETHEREUMLiquidityPoolDTO',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'entry_time' => {
        datatype => 'DATE_TIME',
        base_name => 'entry_time',
        description => '',
        format => '',
        read_only => '',
            },
    'recv_time' => {
        datatype => 'DATE_TIME',
        base_name => 'recv_time',
        description => '',
        format => '',
        read_only => '',
            },
    'block_number' => {
        datatype => 'int',
        base_name => 'block_number',
        description => 'Number of block in which entity was recorded.',
        format => '',
        read_only => '',
            },
    'vid' => {
        datatype => 'int',
        base_name => 'vid',
        description => '.',
        format => '',
        read_only => '',
            },
    'block_range' => {
        datatype => 'string',
        base_name => 'block_range',
        description => 'Block range of the liquidity pool.',
        format => '',
        read_only => '',
            },
    'id' => {
        datatype => 'string',
        base_name => 'id',
        description => 'Smart contract address of the pool.',
        format => '',
        read_only => '',
            },
    'protocol' => {
        datatype => 'string',
        base_name => 'protocol',
        description => 'Protocol this pool belongs to.',
        format => '',
        read_only => '',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => 'Name of liquidity pool (e.g. Curve.fi DAI/USDC/USDT).',
        format => '',
        read_only => '',
            },
    'symbol' => {
        datatype => 'string',
        base_name => 'symbol',
        description => 'Symbol of liquidity pool (e.g. 3CRV).',
        format => '',
        read_only => '',
            },
    'liquidity_token' => {
        datatype => 'string',
        base_name => 'liquidity_token',
        description => 'Token that is to represent ownership of liquidity.',
        format => '',
        read_only => '',
            },
    'input_tokens' => {
        datatype => 'ARRAY[string]',
        base_name => 'input_tokens',
        description => 'Tokens that need to be deposited to take a position in protocol. e.g. WETH and USDC to deposit into the WETH-USDC pool. Array to account for multi-asset pools like Curve and Balancer.',
        format => '',
        read_only => '',
            },
    'reward_tokens' => {
        datatype => 'ARRAY[string]',
        base_name => 'reward_tokens',
        description => 'Additional tokens that are given as reward for position in a protocol, usually in liquidity mining programs. e.g. SUSHI in the Onsen program, MATIC for Aave Polygon, usually in liquidity mining programs. e.g. SUSHI in the Onsen program, MATIC for Aave Polygon.',
        format => '',
        read_only => '',
            },
    'fees' => {
        datatype => 'ARRAY[string]',
        base_name => 'fees',
        description => 'Fees per trade incurred to the user. Should include all fees that apply to a pool (e.g. Curve has a trading fee AND an admin fee, which is a portion of the trading fee. Uniswap only has a trading fee and no protocol fee.).',
        format => '',
        read_only => '',
            },
    'is_single_sided' => {
        datatype => 'boolean',
        base_name => 'is_single_sided',
        description => 'Specifies whether this pool is single-sided (e.g. Bancor, Platypus&#39;s Alternative Pool). The specifics of the implementation depends on the protocol.',
        format => '',
        read_only => '',
            },
    'created_timestamp' => {
        datatype => 'string',
        base_name => 'created_timestamp',
        description => 'Timestamp when the liquidity pool was created.',
        format => '',
        read_only => '',
            },
    'created_block_number' => {
        datatype => 'string',
        base_name => 'created_block_number',
        description => 'Block number when the liquidity pool was created.',
        format => '',
        read_only => '',
            },
    'tick' => {
        datatype => 'string',
        base_name => 'tick',
        description => 'Current tick representing the price of token0/token1.',
        format => '',
        read_only => '',
            },
    'total_value_locked_usd' => {
        datatype => 'string',
        base_name => 'total_value_locked_usd',
        description => 'Current TVL (Total Value Locked) of this pool in USD.',
        format => '',
        read_only => '',
            },
    'total_liquidity' => {
        datatype => 'string',
        base_name => 'total_liquidity',
        description => 'Sum of all active and non-active liquidity for this pool.',
        format => '',
        read_only => '',
            },
    'total_liquidity_usd' => {
        datatype => 'string',
        base_name => 'total_liquidity_usd',
        description => 'Sum of all active and non-active liquidity in USD for this pool.',
        format => '',
        read_only => '',
            },
    'active_liquidity' => {
        datatype => 'string',
        base_name => 'active_liquidity',
        description => 'All liquidity &#x60;k&#x60; that is active. Will be equal to totalLiquidity except for in concentrated liquidity - where activeLiquidity is all liquidity positions that contain the pools current tick.',
        format => '',
        read_only => '',
            },
    'active_liquidity_usd' => {
        datatype => 'string',
        base_name => 'active_liquidity_usd',
        description => 'All liquidity in USD that is active. Will be equal to totalLiquidity except for in concentrated liquidity - where activeLiquidity is all liquidity positions that contain the pools current tick.',
        format => '',
        read_only => '',
            },
    'uncollected_protocol_side_token_amounts' => {
        datatype => 'ARRAY[string]',
        base_name => 'uncollected_protocol_side_token_amounts',
        description => 'All protocol-side value locked in token amounts that remains uncollected and unused in the pool.',
        format => '',
        read_only => '',
            },
    'uncollected_protocol_side_values_usd' => {
        datatype => 'ARRAY[string]',
        base_name => 'uncollected_protocol_side_values_usd',
        description => 'All protocol-side value locking in USD that remains uncollected and unused in the pool.',
        format => '',
        read_only => '',
            },
    'uncollected_supply_side_token_amounts' => {
        datatype => 'ARRAY[string]',
        base_name => 'uncollected_supply_side_token_amounts',
        description => 'All supply-side value locked in token amounts that remains uncollected and unused in the pool.',
        format => '',
        read_only => '',
            },
    'uncollected_supply_side_values_usd' => {
        datatype => 'ARRAY[string]',
        base_name => 'uncollected_supply_side_values_usd',
        description => 'All supply-side value locked in USD that remains uncollected and unused in the pool.',
        format => '',
        read_only => '',
            },
    'cumulative_supply_side_revenue_usd' => {
        datatype => 'string',
        base_name => 'cumulative_supply_side_revenue_usd',
        description => 'All revenue generated by the liquidity pool, accrued to the supply side.',
        format => '',
        read_only => '',
            },
    'cumulative_protocol_side_revenue_usd' => {
        datatype => 'string',
        base_name => 'cumulative_protocol_side_revenue_usd',
        description => 'All revenue generated by the liquidity pool, accrued to the protocol.',
        format => '',
        read_only => '',
            },
    'cumulative_total_revenue_usd' => {
        datatype => 'string',
        base_name => 'cumulative_total_revenue_usd',
        description => ' All revenue generated by the liquidity pool.',
        format => '',
        read_only => '',
            },
    'cumulative_volume_by_token_amount' => {
        datatype => 'ARRAY[string]',
        base_name => 'cumulative_volume_by_token_amount',
        description => 'All trade volume occurred for a specific input token, in native amount. The ordering should be the same as the pool&#39;s &#x60;inputTokens&#x60; field.',
        format => '',
        read_only => '',
            },
    'cumulative_volume_by_token_usd' => {
        datatype => 'ARRAY[string]',
        base_name => 'cumulative_volume_by_token_usd',
        description => 'All trade volume occurred for a specific input token, in USD. The ordering should be the same as the pool&#39;s &#x60;inputTokens&#x60; field.',
        format => '',
        read_only => '',
            },
    'cumulative_volume_usd' => {
        datatype => 'string',
        base_name => 'cumulative_volume_usd',
        description => 'All trade volume occurred for a specific input token, in USD. The ordering should be the same as the pool&#39;s &#x60;inputTokens&#x60; field.',
        format => '',
        read_only => '',
            },
    'input_token_balances' => {
        datatype => 'ARRAY[string]',
        base_name => 'input_token_balances',
        description => 'Amount of input tokens in the pool. The ordering should be the same as the pool&#39;s &#x60;inputTokens&#x60; field.',
        format => '',
        read_only => '',
            },
    'input_token_balances_usd' => {
        datatype => 'ARRAY[string]',
        base_name => 'input_token_balances_usd',
        description => 'Amount of input tokens in USD in the pool. The ordering should be the same as the pool&#39;s &#x60;inputTokens&#x60; field.',
        format => '',
        read_only => '',
            },
    'input_token_weights' => {
        datatype => 'ARRAY[string]',
        base_name => 'input_token_weights',
        description => 'Weights of input tokens in the liquidity pool in percentage values. For example, 50/50 for Uniswap pools, 48.2/51.8 for a Curve pool, 10/10/80 for a Balancer pool.',
        format => '',
        read_only => '',
            },
    'staked_output_token_amount' => {
        datatype => 'string',
        base_name => 'staked_output_token_amount',
        description => 'Total supply of output tokens that are staked (usually in the MasterChef contract). Used to calculate reward APY.',
        format => '',
        read_only => '',
            },
    'reward_token_emissions_amount' => {
        datatype => 'ARRAY[string]',
        base_name => 'reward_token_emissions_amount',
        description => 'Per-block reward token emission as of the current block normalized to a day, in token&#39;s native amount. This should be ideally calculated as the theoretical rate instead of the realized amount.',
        format => '',
        read_only => '',
            },
    'reward_token_emissions_usd' => {
        datatype => 'ARRAY[string]',
        base_name => 'reward_token_emissions_usd',
        description => 'Per-block reward token emission as of the current block normalized to a day, in USD value. This should be ideally calculated as the theoretical rate instead of the realized amount.',
        format => '',
        read_only => '',
            },
    'cumulative_deposit_count' => {
        datatype => 'int',
        base_name => 'cumulative_deposit_count',
        description => 'Total number of deposits (add liquidity).',
        format => '',
        read_only => '',
            },
    'cumulative_withdraw_count' => {
        datatype => 'int',
        base_name => 'cumulative_withdraw_count',
        description => 'Total number of withdrawals (remove liquidity).',
        format => '',
        read_only => '',
            },
    'cumulative_swap_count' => {
        datatype => 'int',
        base_name => 'cumulative_swap_count',
        description => 'Total number of trades (swaps).',
        format => '',
        read_only => '',
            },
    'position_count' => {
        datatype => 'int',
        base_name => 'position_count',
        description => 'Number of positions in this market.',
        format => '',
        read_only => '',
            },
    'open_position_count' => {
        datatype => 'int',
        base_name => 'open_position_count',
        description => 'Number of open positions in this market.',
        format => '',
        read_only => '',
            },
    'closed_position_count' => {
        datatype => 'int',
        base_name => 'closed_position_count',
        description => 'Number of closed positions in this market.',
        format => '',
        read_only => '',
            },
    'last_snapshot_day_id' => {
        datatype => 'int',
        base_name => 'last_snapshot_day_id',
        description => 'Day ID of the most recent daily snapshot.',
        format => '',
        read_only => '',
            },
    'last_snapshot_hour_id' => {
        datatype => 'int',
        base_name => 'last_snapshot_hour_id',
        description => 'Hour ID of the most recent hourly snapshot.',
        format => '',
        read_only => '',
            },
    'last_update_timestamp' => {
        datatype => 'string',
        base_name => 'last_update_timestamp',
        description => 'Timestamp of the last time this entity was updated.',
        format => '',
        read_only => '',
            },
    'last_update_block_number' => {
        datatype => 'string',
        base_name => 'last_update_block_number',
        description => 'Block number of the last time this entity was updated.',
        format => '',
        read_only => '',
            },
    'evaluated_ask' => {
        datatype => 'double',
        base_name => 'evaluated_ask',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'entry_time' => 'DATE_TIME',
    'recv_time' => 'DATE_TIME',
    'block_number' => 'int',
    'vid' => 'int',
    'block_range' => 'string',
    'id' => 'string',
    'protocol' => 'string',
    'name' => 'string',
    'symbol' => 'string',
    'liquidity_token' => 'string',
    'input_tokens' => 'ARRAY[string]',
    'reward_tokens' => 'ARRAY[string]',
    'fees' => 'ARRAY[string]',
    'is_single_sided' => 'boolean',
    'created_timestamp' => 'string',
    'created_block_number' => 'string',
    'tick' => 'string',
    'total_value_locked_usd' => 'string',
    'total_liquidity' => 'string',
    'total_liquidity_usd' => 'string',
    'active_liquidity' => 'string',
    'active_liquidity_usd' => 'string',
    'uncollected_protocol_side_token_amounts' => 'ARRAY[string]',
    'uncollected_protocol_side_values_usd' => 'ARRAY[string]',
    'uncollected_supply_side_token_amounts' => 'ARRAY[string]',
    'uncollected_supply_side_values_usd' => 'ARRAY[string]',
    'cumulative_supply_side_revenue_usd' => 'string',
    'cumulative_protocol_side_revenue_usd' => 'string',
    'cumulative_total_revenue_usd' => 'string',
    'cumulative_volume_by_token_amount' => 'ARRAY[string]',
    'cumulative_volume_by_token_usd' => 'ARRAY[string]',
    'cumulative_volume_usd' => 'string',
    'input_token_balances' => 'ARRAY[string]',
    'input_token_balances_usd' => 'ARRAY[string]',
    'input_token_weights' => 'ARRAY[string]',
    'staked_output_token_amount' => 'string',
    'reward_token_emissions_amount' => 'ARRAY[string]',
    'reward_token_emissions_usd' => 'ARRAY[string]',
    'cumulative_deposit_count' => 'int',
    'cumulative_withdraw_count' => 'int',
    'cumulative_swap_count' => 'int',
    'position_count' => 'int',
    'open_position_count' => 'int',
    'closed_position_count' => 'int',
    'last_snapshot_day_id' => 'int',
    'last_snapshot_hour_id' => 'int',
    'last_update_timestamp' => 'string',
    'last_update_block_number' => 'string',
    'evaluated_ask' => 'double'
} );

__PACKAGE__->attribute_map( {
    'entry_time' => 'entry_time',
    'recv_time' => 'recv_time',
    'block_number' => 'block_number',
    'vid' => 'vid',
    'block_range' => 'block_range',
    'id' => 'id',
    'protocol' => 'protocol',
    'name' => 'name',
    'symbol' => 'symbol',
    'liquidity_token' => 'liquidity_token',
    'input_tokens' => 'input_tokens',
    'reward_tokens' => 'reward_tokens',
    'fees' => 'fees',
    'is_single_sided' => 'is_single_sided',
    'created_timestamp' => 'created_timestamp',
    'created_block_number' => 'created_block_number',
    'tick' => 'tick',
    'total_value_locked_usd' => 'total_value_locked_usd',
    'total_liquidity' => 'total_liquidity',
    'total_liquidity_usd' => 'total_liquidity_usd',
    'active_liquidity' => 'active_liquidity',
    'active_liquidity_usd' => 'active_liquidity_usd',
    'uncollected_protocol_side_token_amounts' => 'uncollected_protocol_side_token_amounts',
    'uncollected_protocol_side_values_usd' => 'uncollected_protocol_side_values_usd',
    'uncollected_supply_side_token_amounts' => 'uncollected_supply_side_token_amounts',
    'uncollected_supply_side_values_usd' => 'uncollected_supply_side_values_usd',
    'cumulative_supply_side_revenue_usd' => 'cumulative_supply_side_revenue_usd',
    'cumulative_protocol_side_revenue_usd' => 'cumulative_protocol_side_revenue_usd',
    'cumulative_total_revenue_usd' => 'cumulative_total_revenue_usd',
    'cumulative_volume_by_token_amount' => 'cumulative_volume_by_token_amount',
    'cumulative_volume_by_token_usd' => 'cumulative_volume_by_token_usd',
    'cumulative_volume_usd' => 'cumulative_volume_usd',
    'input_token_balances' => 'input_token_balances',
    'input_token_balances_usd' => 'input_token_balances_usd',
    'input_token_weights' => 'input_token_weights',
    'staked_output_token_amount' => 'staked_output_token_amount',
    'reward_token_emissions_amount' => 'reward_token_emissions_amount',
    'reward_token_emissions_usd' => 'reward_token_emissions_usd',
    'cumulative_deposit_count' => 'cumulative_deposit_count',
    'cumulative_withdraw_count' => 'cumulative_withdraw_count',
    'cumulative_swap_count' => 'cumulative_swap_count',
    'position_count' => 'position_count',
    'open_position_count' => 'open_position_count',
    'closed_position_count' => 'closed_position_count',
    'last_snapshot_day_id' => 'last_snapshot_day_id',
    'last_snapshot_hour_id' => 'last_snapshot_hour_id',
    'last_update_timestamp' => 'last_update_timestamp',
    'last_update_block_number' => 'last_update_block_number',
    'evaluated_ask' => 'evaluated_ask'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
