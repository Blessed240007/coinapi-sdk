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
package WWW::OpenAPIClient::Object::DexOrderDTO;

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
#Order submitted by an user. It has a validity (dates) so they can only be executed from/until some given batches. Partial executions of this trades must respect the limit price.
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


__PACKAGE__->class_documentation({description => 'Order submitted by an user. It has a validity (dates) so they can only be executed from/until some given batches. Partial executions of this trades must respect the limit price.',
                                  class => 'DexOrderDTO',
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
    'id' => {
        datatype => 'string',
        base_name => 'id',
        description => 'Identifier, format: (owner address)-(order id)',
        format => '',
        read_only => '',
            },
    'owner' => {
        datatype => 'string',
        base_name => 'owner',
        description => 'Reference to owner.',
        format => '',
        read_only => '',
            },
    'order_id' => {
        datatype => 'int',
        base_name => 'order_id',
        description => 'Order id.',
        format => '',
        read_only => '',
            },
    'from_batch_id' => {
        datatype => 'string',
        base_name => 'from_batch_id',
        description => 'Batch id from which order became valid.',
        format => '',
        read_only => '',
            },
    'from_epoch' => {
        datatype => 'string',
        base_name => 'from_epoch',
        description => 'Start of epoch in which order was placed and became valid.',
        format => '',
        read_only => '',
            },
    'until_batch_id' => {
        datatype => 'string',
        base_name => 'until_batch_id',
        description => 'Batch id until which trade was still valid.',
        format => '',
        read_only => '',
            },
    'until_epoch' => {
        datatype => 'string',
        base_name => 'until_epoch',
        description => 'End of epoch in which order was placed.',
        format => '',
        read_only => '',
            },
    'buy_token' => {
        datatype => 'string',
        base_name => 'buy_token',
        description => 'Identifier of token that was bought.',
        format => '',
        read_only => '',
            },
    'sell_token' => {
        datatype => 'string',
        base_name => 'sell_token',
        description => 'Identifier of token that was sold.',
        format => '',
        read_only => '',
            },
    'price_numerator' => {
        datatype => 'string',
        base_name => 'price_numerator',
        description => 'Price enumerator.',
        format => '',
        read_only => '',
            },
    'price_denominator' => {
        datatype => 'string',
        base_name => 'price_denominator',
        description => 'Price denominator.',
        format => '',
        read_only => '',
            },
    'max_sell_amount' => {
        datatype => 'string',
        base_name => 'max_sell_amount',
        description => 'Maximum sell amount.',
        format => '',
        read_only => '',
            },
    'min_receive_amount' => {
        datatype => 'string',
        base_name => 'min_receive_amount',
        description => 'Minimum receive amount.',
        format => '',
        read_only => '',
            },
    'sold_volume' => {
        datatype => 'string',
        base_name => 'sold_volume',
        description => 'Sold volume.',
        format => '',
        read_only => '',
            },
    'bought_volume' => {
        datatype => 'string',
        base_name => 'bought_volume',
        description => 'Bought volume.',
        format => '',
        read_only => '',
            },
    'create_epoch' => {
        datatype => 'string',
        base_name => 'create_epoch',
        description => 'Epoch in which order was created.',
        format => '',
        read_only => '',
            },
    'cancel_epoch' => {
        datatype => 'string',
        base_name => 'cancel_epoch',
        description => 'Epoch in which order was cancelled.',
        format => '',
        read_only => '',
            },
    'delete_epoch' => {
        datatype => 'string',
        base_name => 'delete_epoch',
        description => 'Epoch in which order was deleted.',
        format => '',
        read_only => '',
            },
    'tx_hash' => {
        datatype => 'string',
        base_name => 'tx_hash',
        description => 'Transaction hash.',
        format => '',
        read_only => '',
            },
    'tx_log_index' => {
        datatype => 'string',
        base_name => 'tx_log_index',
        description => 'Event index within transaction.',
        format => '',
        read_only => '',
            },
    'vid' => {
        datatype => 'int',
        base_name => 'vid',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'entry_time' => 'DATE_TIME',
    'recv_time' => 'DATE_TIME',
    'block_number' => 'int',
    'id' => 'string',
    'owner' => 'string',
    'order_id' => 'int',
    'from_batch_id' => 'string',
    'from_epoch' => 'string',
    'until_batch_id' => 'string',
    'until_epoch' => 'string',
    'buy_token' => 'string',
    'sell_token' => 'string',
    'price_numerator' => 'string',
    'price_denominator' => 'string',
    'max_sell_amount' => 'string',
    'min_receive_amount' => 'string',
    'sold_volume' => 'string',
    'bought_volume' => 'string',
    'create_epoch' => 'string',
    'cancel_epoch' => 'string',
    'delete_epoch' => 'string',
    'tx_hash' => 'string',
    'tx_log_index' => 'string',
    'vid' => 'int'
} );

__PACKAGE__->attribute_map( {
    'entry_time' => 'entry_time',
    'recv_time' => 'recv_time',
    'block_number' => 'block_number',
    'id' => 'id',
    'owner' => 'owner',
    'order_id' => 'order_id',
    'from_batch_id' => 'from_batch_id',
    'from_epoch' => 'from_epoch',
    'until_batch_id' => 'until_batch_id',
    'until_epoch' => 'until_epoch',
    'buy_token' => 'buy_token',
    'sell_token' => 'sell_token',
    'price_numerator' => 'price_numerator',
    'price_denominator' => 'price_denominator',
    'max_sell_amount' => 'max_sell_amount',
    'min_receive_amount' => 'min_receive_amount',
    'sold_volume' => 'sold_volume',
    'bought_volume' => 'bought_volume',
    'create_epoch' => 'create_epoch',
    'cancel_epoch' => 'cancel_epoch',
    'delete_epoch' => 'delete_epoch',
    'tx_hash' => 'tx_hash',
    'tx_log_index' => 'tx_log_index',
    'vid' => 'vid'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
