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


class PANCAKESWAPV3ETHEREUMTokenDTO(
    schemas.DictSchema
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.

    Stores aggregated information for a specific token across all pairs that token is included in.
    """


    class MetaOapg:
        
        class properties:
            entry_time = schemas.DateTimeSchema
            recv_time = schemas.DateTimeSchema
            block_number = schemas.Int64Schema
            vid = schemas.Int64Schema
            
            
            class block_range(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'block_range':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
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
            decimals = schemas.Int32Schema
            
            
            class last_price_usd(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'last_price_usd':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class last_price_block_number(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'last_price_block_number':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class last_price_pool(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'last_price_pool':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class total_supply(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'total_supply':
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
            large_price_change_buffer = schemas.Int32Schema
            large_tvl_impact_buffer = schemas.Int32Schema
            
            
            class token_symbol(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'token_symbol':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            __annotations__ = {
                "entry_time": entry_time,
                "recv_time": recv_time,
                "block_number": block_number,
                "vid": vid,
                "block_range": block_range,
                "id": id,
                "name": name,
                "symbol": symbol,
                "decimals": decimals,
                "last_price_usd": last_price_usd,
                "last_price_block_number": last_price_block_number,
                "last_price_pool": last_price_pool,
                "total_supply": total_supply,
                "total_value_locked_usd": total_value_locked_usd,
                "large_price_change_buffer": large_price_change_buffer,
                "large_tvl_impact_buffer": large_tvl_impact_buffer,
                "token_symbol": token_symbol,
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
    def __getitem__(self, name: typing_extensions.Literal["block_range"]) -> MetaOapg.properties.block_range: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["id"]) -> MetaOapg.properties.id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["name"]) -> MetaOapg.properties.name: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["symbol"]) -> MetaOapg.properties.symbol: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["decimals"]) -> MetaOapg.properties.decimals: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["last_price_usd"]) -> MetaOapg.properties.last_price_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["last_price_block_number"]) -> MetaOapg.properties.last_price_block_number: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["last_price_pool"]) -> MetaOapg.properties.last_price_pool: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["total_supply"]) -> MetaOapg.properties.total_supply: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["total_value_locked_usd"]) -> MetaOapg.properties.total_value_locked_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["large_price_change_buffer"]) -> MetaOapg.properties.large_price_change_buffer: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["large_tvl_impact_buffer"]) -> MetaOapg.properties.large_tvl_impact_buffer: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["token_symbol"]) -> MetaOapg.properties.token_symbol: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["vid"], typing_extensions.Literal["block_range"], typing_extensions.Literal["id"], typing_extensions.Literal["name"], typing_extensions.Literal["symbol"], typing_extensions.Literal["decimals"], typing_extensions.Literal["last_price_usd"], typing_extensions.Literal["last_price_block_number"], typing_extensions.Literal["last_price_pool"], typing_extensions.Literal["total_supply"], typing_extensions.Literal["total_value_locked_usd"], typing_extensions.Literal["large_price_change_buffer"], typing_extensions.Literal["large_tvl_impact_buffer"], typing_extensions.Literal["token_symbol"], ]):
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
    def get_item_oapg(self, name: typing_extensions.Literal["block_range"]) -> typing.Union[MetaOapg.properties.block_range, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["id"]) -> typing.Union[MetaOapg.properties.id, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["name"]) -> typing.Union[MetaOapg.properties.name, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["symbol"]) -> typing.Union[MetaOapg.properties.symbol, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["decimals"]) -> typing.Union[MetaOapg.properties.decimals, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["last_price_usd"]) -> typing.Union[MetaOapg.properties.last_price_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["last_price_block_number"]) -> typing.Union[MetaOapg.properties.last_price_block_number, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["last_price_pool"]) -> typing.Union[MetaOapg.properties.last_price_pool, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["total_supply"]) -> typing.Union[MetaOapg.properties.total_supply, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["total_value_locked_usd"]) -> typing.Union[MetaOapg.properties.total_value_locked_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["large_price_change_buffer"]) -> typing.Union[MetaOapg.properties.large_price_change_buffer, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["large_tvl_impact_buffer"]) -> typing.Union[MetaOapg.properties.large_tvl_impact_buffer, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["token_symbol"]) -> typing.Union[MetaOapg.properties.token_symbol, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["vid"], typing_extensions.Literal["block_range"], typing_extensions.Literal["id"], typing_extensions.Literal["name"], typing_extensions.Literal["symbol"], typing_extensions.Literal["decimals"], typing_extensions.Literal["last_price_usd"], typing_extensions.Literal["last_price_block_number"], typing_extensions.Literal["last_price_pool"], typing_extensions.Literal["total_supply"], typing_extensions.Literal["total_value_locked_usd"], typing_extensions.Literal["large_price_change_buffer"], typing_extensions.Literal["large_tvl_impact_buffer"], typing_extensions.Literal["token_symbol"], ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *_args: typing.Union[dict, frozendict.frozendict, ],
        entry_time: typing.Union[MetaOapg.properties.entry_time, str, datetime, schemas.Unset] = schemas.unset,
        recv_time: typing.Union[MetaOapg.properties.recv_time, str, datetime, schemas.Unset] = schemas.unset,
        block_number: typing.Union[MetaOapg.properties.block_number, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        vid: typing.Union[MetaOapg.properties.vid, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        block_range: typing.Union[MetaOapg.properties.block_range, None, str, schemas.Unset] = schemas.unset,
        id: typing.Union[MetaOapg.properties.id, None, str, schemas.Unset] = schemas.unset,
        name: typing.Union[MetaOapg.properties.name, None, str, schemas.Unset] = schemas.unset,
        symbol: typing.Union[MetaOapg.properties.symbol, None, str, schemas.Unset] = schemas.unset,
        decimals: typing.Union[MetaOapg.properties.decimals, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        last_price_usd: typing.Union[MetaOapg.properties.last_price_usd, None, str, schemas.Unset] = schemas.unset,
        last_price_block_number: typing.Union[MetaOapg.properties.last_price_block_number, None, str, schemas.Unset] = schemas.unset,
        last_price_pool: typing.Union[MetaOapg.properties.last_price_pool, None, str, schemas.Unset] = schemas.unset,
        total_supply: typing.Union[MetaOapg.properties.total_supply, None, str, schemas.Unset] = schemas.unset,
        total_value_locked_usd: typing.Union[MetaOapg.properties.total_value_locked_usd, None, str, schemas.Unset] = schemas.unset,
        large_price_change_buffer: typing.Union[MetaOapg.properties.large_price_change_buffer, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        large_tvl_impact_buffer: typing.Union[MetaOapg.properties.large_tvl_impact_buffer, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        token_symbol: typing.Union[MetaOapg.properties.token_symbol, None, str, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
    ) -> 'PANCAKESWAPV3ETHEREUMTokenDTO':
        return super().__new__(
            cls,
            *_args,
            entry_time=entry_time,
            recv_time=recv_time,
            block_number=block_number,
            vid=vid,
            block_range=block_range,
            id=id,
            name=name,
            symbol=symbol,
            decimals=decimals,
            last_price_usd=last_price_usd,
            last_price_block_number=last_price_block_number,
            last_price_pool=last_price_pool,
            total_supply=total_supply,
            total_value_locked_usd=total_value_locked_usd,
            large_price_change_buffer=large_price_change_buffer,
            large_tvl_impact_buffer=large_tvl_impact_buffer,
            token_symbol=token_symbol,
            _configuration=_configuration,
        )
