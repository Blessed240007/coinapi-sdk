# coding: utf-8

"""
    On Chain Dapps - REST API

     This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                               # noqa: E501

    The version of the OpenAPI document: v1
    Contact: support@coinapi.io
    Generated by: https://openapi-generator.tech
"""

from datetime import date, datetime  # noqa: F401
import decimal  # noqa: F401
import functools  # noqa: F401
import io  # noqa: F401
import re  # noqa: F401
import typing  # noqa: F401
import typing_extensions  # noqa: F401
import uuid  # noqa: F401

import frozendict  # noqa: F401

from openapi_client import schemas  # noqa: F401


class UNISWAPV2ETHEREUMLiquidityPoolDTO(
    schemas.DictSchema
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.

    Pool-level metadata.
    """


    class MetaOapg:
        
        class properties:
            entry_time = schemas.DateTimeSchema
            recv_time = schemas.DateTimeSchema
            block_number = schemas.Int64Schema
            vid = schemas.Int64Schema
            
            
            class id(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'id':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class protocol(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'protocol':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class name(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'name':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class symbol(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'symbol':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class input_tokens(
                schemas.ListBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneTupleMixin
            ):
            
            
                class MetaOapg:
                    items = schemas.StrSchema
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[list, tuple, None, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'input_tokens':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class output_token(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'output_token':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class reward_tokens(
                schemas.ListBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneTupleMixin
            ):
            
            
                class MetaOapg:
                    items = schemas.StrSchema
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[list, tuple, None, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'reward_tokens':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class fees(
                schemas.ListBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneTupleMixin
            ):
            
            
                class MetaOapg:
                    items = schemas.StrSchema
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[list, tuple, None, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'fees':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            is_single_sided = schemas.BoolSchema
            
            
            class created_timestamp(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'created_timestamp':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class created_block_number(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'created_block_number':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class total_value_locked_usd(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'total_value_locked_usd':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class cumulative_supply_side_revenue_usd(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'cumulative_supply_side_revenue_usd':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class cumulative_protocol_side_revenue_usd(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'cumulative_protocol_side_revenue_usd':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class cumulative_total_revenue_usd(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'cumulative_total_revenue_usd':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class cumulative_volume_usd(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'cumulative_volume_usd':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class input_token_balances(
                schemas.ListBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneTupleMixin
            ):
            
            
                class MetaOapg:
                    items = schemas.StrSchema
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[list, tuple, None, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'input_token_balances':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class input_token_weights(
                schemas.ListBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneTupleMixin
            ):
            
            
                class MetaOapg:
                    items = schemas.StrSchema
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[list, tuple, None, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'input_token_weights':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class output_token_supply(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'output_token_supply':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class output_token_price_usd(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'output_token_price_usd':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class staked_output_token_amount(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'staked_output_token_amount':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class reward_token_emissions_amount(
                schemas.ListBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneTupleMixin
            ):
            
            
                class MetaOapg:
                    items = schemas.StrSchema
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[list, tuple, None, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'reward_token_emissions_amount':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class reward_token_emissions_usd(
                schemas.ListBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneTupleMixin
            ):
            
            
                class MetaOapg:
                    items = schemas.StrSchema
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[list, tuple, None, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'reward_token_emissions_usd':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            evaluated_ask = schemas.Float64Schema
            __annotations__ = {
                "entry_time": entry_time,
                "recv_time": recv_time,
                "block_number": block_number,
                "vid": vid,
                "id": id,
                "protocol": protocol,
                "name": name,
                "symbol": symbol,
                "input_tokens": input_tokens,
                "output_token": output_token,
                "reward_tokens": reward_tokens,
                "fees": fees,
                "is_single_sided": is_single_sided,
                "created_timestamp": created_timestamp,
                "created_block_number": created_block_number,
                "total_value_locked_usd": total_value_locked_usd,
                "cumulative_supply_side_revenue_usd": cumulative_supply_side_revenue_usd,
                "cumulative_protocol_side_revenue_usd": cumulative_protocol_side_revenue_usd,
                "cumulative_total_revenue_usd": cumulative_total_revenue_usd,
                "cumulative_volume_usd": cumulative_volume_usd,
                "input_token_balances": input_token_balances,
                "input_token_weights": input_token_weights,
                "output_token_supply": output_token_supply,
                "output_token_price_usd": output_token_price_usd,
                "staked_output_token_amount": staked_output_token_amount,
                "reward_token_emissions_amount": reward_token_emissions_amount,
                "reward_token_emissions_usd": reward_token_emissions_usd,
                "evaluated_ask": evaluated_ask,
            }
        additional_properties = schemas.NotAnyTypeSchema
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["entry_time"]) -> MetaOapg.properties.entry_time: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["recv_time"]) -> MetaOapg.properties.recv_time: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["block_number"]) -> MetaOapg.properties.block_number: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["vid"]) -> MetaOapg.properties.vid: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["id"]) -> MetaOapg.properties.id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["protocol"]) -> MetaOapg.properties.protocol: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["name"]) -> MetaOapg.properties.name: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["symbol"]) -> MetaOapg.properties.symbol: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["input_tokens"]) -> MetaOapg.properties.input_tokens: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["output_token"]) -> MetaOapg.properties.output_token: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["reward_tokens"]) -> MetaOapg.properties.reward_tokens: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["fees"]) -> MetaOapg.properties.fees: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["is_single_sided"]) -> MetaOapg.properties.is_single_sided: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["created_timestamp"]) -> MetaOapg.properties.created_timestamp: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["created_block_number"]) -> MetaOapg.properties.created_block_number: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["total_value_locked_usd"]) -> MetaOapg.properties.total_value_locked_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["cumulative_supply_side_revenue_usd"]) -> MetaOapg.properties.cumulative_supply_side_revenue_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["cumulative_protocol_side_revenue_usd"]) -> MetaOapg.properties.cumulative_protocol_side_revenue_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["cumulative_total_revenue_usd"]) -> MetaOapg.properties.cumulative_total_revenue_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["cumulative_volume_usd"]) -> MetaOapg.properties.cumulative_volume_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["input_token_balances"]) -> MetaOapg.properties.input_token_balances: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["input_token_weights"]) -> MetaOapg.properties.input_token_weights: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["output_token_supply"]) -> MetaOapg.properties.output_token_supply: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["output_token_price_usd"]) -> MetaOapg.properties.output_token_price_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["staked_output_token_amount"]) -> MetaOapg.properties.staked_output_token_amount: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["reward_token_emissions_amount"]) -> MetaOapg.properties.reward_token_emissions_amount: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["reward_token_emissions_usd"]) -> MetaOapg.properties.reward_token_emissions_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["evaluated_ask"]) -> MetaOapg.properties.evaluated_ask: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["vid"], typing_extensions.Literal["id"], typing_extensions.Literal["protocol"], typing_extensions.Literal["name"], typing_extensions.Literal["symbol"], typing_extensions.Literal["input_tokens"], typing_extensions.Literal["output_token"], typing_extensions.Literal["reward_tokens"], typing_extensions.Literal["fees"], typing_extensions.Literal["is_single_sided"], typing_extensions.Literal["created_timestamp"], typing_extensions.Literal["created_block_number"], typing_extensions.Literal["total_value_locked_usd"], typing_extensions.Literal["cumulative_supply_side_revenue_usd"], typing_extensions.Literal["cumulative_protocol_side_revenue_usd"], typing_extensions.Literal["cumulative_total_revenue_usd"], typing_extensions.Literal["cumulative_volume_usd"], typing_extensions.Literal["input_token_balances"], typing_extensions.Literal["input_token_weights"], typing_extensions.Literal["output_token_supply"], typing_extensions.Literal["output_token_price_usd"], typing_extensions.Literal["staked_output_token_amount"], typing_extensions.Literal["reward_token_emissions_amount"], typing_extensions.Literal["reward_token_emissions_usd"], typing_extensions.Literal["evaluated_ask"], ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["entry_time"]) -> typing.Union[MetaOapg.properties.entry_time, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["recv_time"]) -> typing.Union[MetaOapg.properties.recv_time, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["block_number"]) -> typing.Union[MetaOapg.properties.block_number, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["vid"]) -> typing.Union[MetaOapg.properties.vid, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["id"]) -> typing.Union[MetaOapg.properties.id, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["protocol"]) -> typing.Union[MetaOapg.properties.protocol, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["name"]) -> typing.Union[MetaOapg.properties.name, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["symbol"]) -> typing.Union[MetaOapg.properties.symbol, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["input_tokens"]) -> typing.Union[MetaOapg.properties.input_tokens, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["output_token"]) -> typing.Union[MetaOapg.properties.output_token, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["reward_tokens"]) -> typing.Union[MetaOapg.properties.reward_tokens, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["fees"]) -> typing.Union[MetaOapg.properties.fees, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["is_single_sided"]) -> typing.Union[MetaOapg.properties.is_single_sided, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["created_timestamp"]) -> typing.Union[MetaOapg.properties.created_timestamp, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["created_block_number"]) -> typing.Union[MetaOapg.properties.created_block_number, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["total_value_locked_usd"]) -> typing.Union[MetaOapg.properties.total_value_locked_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["cumulative_supply_side_revenue_usd"]) -> typing.Union[MetaOapg.properties.cumulative_supply_side_revenue_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["cumulative_protocol_side_revenue_usd"]) -> typing.Union[MetaOapg.properties.cumulative_protocol_side_revenue_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["cumulative_total_revenue_usd"]) -> typing.Union[MetaOapg.properties.cumulative_total_revenue_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["cumulative_volume_usd"]) -> typing.Union[MetaOapg.properties.cumulative_volume_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["input_token_balances"]) -> typing.Union[MetaOapg.properties.input_token_balances, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["input_token_weights"]) -> typing.Union[MetaOapg.properties.input_token_weights, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["output_token_supply"]) -> typing.Union[MetaOapg.properties.output_token_supply, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["output_token_price_usd"]) -> typing.Union[MetaOapg.properties.output_token_price_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["staked_output_token_amount"]) -> typing.Union[MetaOapg.properties.staked_output_token_amount, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["reward_token_emissions_amount"]) -> typing.Union[MetaOapg.properties.reward_token_emissions_amount, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["reward_token_emissions_usd"]) -> typing.Union[MetaOapg.properties.reward_token_emissions_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["evaluated_ask"]) -> typing.Union[MetaOapg.properties.evaluated_ask, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["vid"], typing_extensions.Literal["id"], typing_extensions.Literal["protocol"], typing_extensions.Literal["name"], typing_extensions.Literal["symbol"], typing_extensions.Literal["input_tokens"], typing_extensions.Literal["output_token"], typing_extensions.Literal["reward_tokens"], typing_extensions.Literal["fees"], typing_extensions.Literal["is_single_sided"], typing_extensions.Literal["created_timestamp"], typing_extensions.Literal["created_block_number"], typing_extensions.Literal["total_value_locked_usd"], typing_extensions.Literal["cumulative_supply_side_revenue_usd"], typing_extensions.Literal["cumulative_protocol_side_revenue_usd"], typing_extensions.Literal["cumulative_total_revenue_usd"], typing_extensions.Literal["cumulative_volume_usd"], typing_extensions.Literal["input_token_balances"], typing_extensions.Literal["input_token_weights"], typing_extensions.Literal["output_token_supply"], typing_extensions.Literal["output_token_price_usd"], typing_extensions.Literal["staked_output_token_amount"], typing_extensions.Literal["reward_token_emissions_amount"], typing_extensions.Literal["reward_token_emissions_usd"], typing_extensions.Literal["evaluated_ask"], ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *_args: typing.Union[dict, frozendict.frozendict, ],
        entry_time: typing.Union[MetaOapg.properties.entry_time, str, datetime, schemas.Unset] = schemas.unset,
        recv_time: typing.Union[MetaOapg.properties.recv_time, str, datetime, schemas.Unset] = schemas.unset,
        block_number: typing.Union[MetaOapg.properties.block_number, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        vid: typing.Union[MetaOapg.properties.vid, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        id: typing.Union[MetaOapg.properties.id, None, str, schemas.Unset] = schemas.unset,
        protocol: typing.Union[MetaOapg.properties.protocol, None, str, schemas.Unset] = schemas.unset,
        name: typing.Union[MetaOapg.properties.name, None, str, schemas.Unset] = schemas.unset,
        symbol: typing.Union[MetaOapg.properties.symbol, None, str, schemas.Unset] = schemas.unset,
        input_tokens: typing.Union[MetaOapg.properties.input_tokens, list, tuple, None, schemas.Unset] = schemas.unset,
        output_token: typing.Union[MetaOapg.properties.output_token, None, str, schemas.Unset] = schemas.unset,
        reward_tokens: typing.Union[MetaOapg.properties.reward_tokens, list, tuple, None, schemas.Unset] = schemas.unset,
        fees: typing.Union[MetaOapg.properties.fees, list, tuple, None, schemas.Unset] = schemas.unset,
        is_single_sided: typing.Union[MetaOapg.properties.is_single_sided, bool, schemas.Unset] = schemas.unset,
        created_timestamp: typing.Union[MetaOapg.properties.created_timestamp, None, str, schemas.Unset] = schemas.unset,
        created_block_number: typing.Union[MetaOapg.properties.created_block_number, None, str, schemas.Unset] = schemas.unset,
        total_value_locked_usd: typing.Union[MetaOapg.properties.total_value_locked_usd, None, str, schemas.Unset] = schemas.unset,
        cumulative_supply_side_revenue_usd: typing.Union[MetaOapg.properties.cumulative_supply_side_revenue_usd, None, str, schemas.Unset] = schemas.unset,
        cumulative_protocol_side_revenue_usd: typing.Union[MetaOapg.properties.cumulative_protocol_side_revenue_usd, None, str, schemas.Unset] = schemas.unset,
        cumulative_total_revenue_usd: typing.Union[MetaOapg.properties.cumulative_total_revenue_usd, None, str, schemas.Unset] = schemas.unset,
        cumulative_volume_usd: typing.Union[MetaOapg.properties.cumulative_volume_usd, None, str, schemas.Unset] = schemas.unset,
        input_token_balances: typing.Union[MetaOapg.properties.input_token_balances, list, tuple, None, schemas.Unset] = schemas.unset,
        input_token_weights: typing.Union[MetaOapg.properties.input_token_weights, list, tuple, None, schemas.Unset] = schemas.unset,
        output_token_supply: typing.Union[MetaOapg.properties.output_token_supply, None, str, schemas.Unset] = schemas.unset,
        output_token_price_usd: typing.Union[MetaOapg.properties.output_token_price_usd, None, str, schemas.Unset] = schemas.unset,
        staked_output_token_amount: typing.Union[MetaOapg.properties.staked_output_token_amount, None, str, schemas.Unset] = schemas.unset,
        reward_token_emissions_amount: typing.Union[MetaOapg.properties.reward_token_emissions_amount, list, tuple, None, schemas.Unset] = schemas.unset,
        reward_token_emissions_usd: typing.Union[MetaOapg.properties.reward_token_emissions_usd, list, tuple, None, schemas.Unset] = schemas.unset,
        evaluated_ask: typing.Union[MetaOapg.properties.evaluated_ask, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
    ) -> 'UNISWAPV2ETHEREUMLiquidityPoolDTO':
        return super().__new__(
            cls,
            *_args,
            entry_time=entry_time,
            recv_time=recv_time,
            block_number=block_number,
            vid=vid,
            id=id,
            protocol=protocol,
            name=name,
            symbol=symbol,
            input_tokens=input_tokens,
            output_token=output_token,
            reward_tokens=reward_tokens,
            fees=fees,
            is_single_sided=is_single_sided,
            created_timestamp=created_timestamp,
            created_block_number=created_block_number,
            total_value_locked_usd=total_value_locked_usd,
            cumulative_supply_side_revenue_usd=cumulative_supply_side_revenue_usd,
            cumulative_protocol_side_revenue_usd=cumulative_protocol_side_revenue_usd,
            cumulative_total_revenue_usd=cumulative_total_revenue_usd,
            cumulative_volume_usd=cumulative_volume_usd,
            input_token_balances=input_token_balances,
            input_token_weights=input_token_weights,
            output_token_supply=output_token_supply,
            output_token_price_usd=output_token_price_usd,
            staked_output_token_amount=staked_output_token_amount,
            reward_token_emissions_amount=reward_token_emissions_amount,
            reward_token_emissions_usd=reward_token_emissions_usd,
            evaluated_ask=evaluated_ask,
            _configuration=_configuration,
        )
