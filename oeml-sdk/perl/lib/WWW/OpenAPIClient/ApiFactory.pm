=begin comment

EMS - REST API

This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a hrefs=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 

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
package WWW::OpenAPIClient::ApiFactory;

use strict;
use warnings;
use utf8;

use Carp;
use Module::Find;

usesub WWW::OpenAPIClient::Object;

use WWW::OpenAPIClient::ApiClient;

=head1 Name

    WWW::OpenAPIClient::ApiFactory - constructs APIs to retrieve WWW::OpenAPIClient objects

=head1 Synopsis

    package My::Petstore::App;

    use WWW::OpenAPIClient::ApiFactory;

    my $api_factory = WWW::OpenAPIClient::ApiFactory->new( ... ); # any args for ApiClient constructor

    # later...
    my $pet_api = $api_factory->get_api('Pet');

    # $pet_api isa WWW::OpenAPIClient::PetApi

    my $pet = $pet_api->get_pet_by_id(pet_id => $pet_id);

    # object attributes have proper accessors:
    printf "Pet's name is %s", $pet->name;

    # change the value stored on the object:
    $pet->name('Dave');

=cut

# Load all the API classes and construct a lookup table at startup time
my %_apis = map { $_ =~ /^WWW::OpenAPIClient::(.*)$/; $1 => $_ }
            grep {$_ =~ /Api$/}
            usesub 'WWW::OpenAPIClient';

=head1 new($api_client)

    create a new WWW::OpenAPIClient::ApiFactory instance with the given WWW::OpenAPIClient::ApiClient instance.

=head1 new(%parameters)

    Any parameters are optional, and are passed to and stored on the api_client object.

    See L<WWW::OpenAPIClient::ApiClient> and L<WWW::OpenAPIClient::Configuration> for valid parameters

=cut

sub new {
    my ($class) = shift;

    my $api_client;
    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }
    bless { api_client => $api_client }, $class;
}

=head1 get_api($which)

    Returns an API object of the requested type.

    $which is a nickname for the class:

        FooBarClient::BazApi has nickname 'Baz'

=cut

sub get_api {
    my ($self, $which) = @_;
    croak "API not specified" unless $which;
    my $api_class = $_apis{"${which}Api"} || croak "No known API for '$which'";
    return $api_class->new($self->api_client);
}

=head1 api_client()

    Returns the api_client object, should you ever need it.

=cut

sub api_client { $_[0]->{api_client} }

=head1 apis_available()
=cut

sub apis_available { return map { $_ =~ s/Api$//; $_ } sort keys %_apis }

=head1 classname_for()
=cut

sub classname_for {
    my ($self, $api_name) = @_;
    return $_apis{"${api_name}Api"};
}


1;
