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


class UNISWAPV3ETHEREUMTickDTO(
    schemas.DictSchema
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
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
            
            
            class index(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'index':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class pool(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'pool':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
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
            
            
            class prices(
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
                ) -> 'prices':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class liquidity_gross(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'liquidity_gross':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class liquidity_gross_usd(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'liquidity_gross_usd':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class liquidity_net(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'liquidity_net':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class liquidity_net_usd(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'liquidity_net_usd':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            last_snapshot_day_id = schemas.Int32Schema
            last_snapshot_hour_id = schemas.Int32Schema
            
            
            class last_update_timestamp(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'last_update_timestamp':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class last_update_block_number(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'last_update_block_number':
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
                "id": id,
                "index": index,
                "pool": pool,
                "created_timestamp": created_timestamp,
                "created_block_number": created_block_number,
                "prices": prices,
                "liquidity_gross": liquidity_gross,
                "liquidity_gross_usd": liquidity_gross_usd,
                "liquidity_net": liquidity_net,
                "liquidity_net_usd": liquidity_net_usd,
                "last_snapshot_day_id": last_snapshot_day_id,
                "last_snapshot_hour_id": last_snapshot_hour_id,
                "last_update_timestamp": last_update_timestamp,
                "last_update_block_number": last_update_block_number,
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
    def __getitem__(self, name: typing_extensions.Literal["index"]) -> MetaOapg.properties.index: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["pool"]) -> MetaOapg.properties.pool: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["created_timestamp"]) -> MetaOapg.properties.created_timestamp: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["created_block_number"]) -> MetaOapg.properties.created_block_number: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["prices"]) -> MetaOapg.properties.prices: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["liquidity_gross"]) -> MetaOapg.properties.liquidity_gross: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["liquidity_gross_usd"]) -> MetaOapg.properties.liquidity_gross_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["liquidity_net"]) -> MetaOapg.properties.liquidity_net: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["liquidity_net_usd"]) -> MetaOapg.properties.liquidity_net_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["last_snapshot_day_id"]) -> MetaOapg.properties.last_snapshot_day_id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["last_snapshot_hour_id"]) -> MetaOapg.properties.last_snapshot_hour_id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["last_update_timestamp"]) -> MetaOapg.properties.last_update_timestamp: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["last_update_block_number"]) -> MetaOapg.properties.last_update_block_number: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["vid"], typing_extensions.Literal["id"], typing_extensions.Literal["index"], typing_extensions.Literal["pool"], typing_extensions.Literal["created_timestamp"], typing_extensions.Literal["created_block_number"], typing_extensions.Literal["prices"], typing_extensions.Literal["liquidity_gross"], typing_extensions.Literal["liquidity_gross_usd"], typing_extensions.Literal["liquidity_net"], typing_extensions.Literal["liquidity_net_usd"], typing_extensions.Literal["last_snapshot_day_id"], typing_extensions.Literal["last_snapshot_hour_id"], typing_extensions.Literal["last_update_timestamp"], typing_extensions.Literal["last_update_block_number"], ]):
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
    def get_item_oapg(self, name: typing_extensions.Literal["index"]) -> typing.Union[MetaOapg.properties.index, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["pool"]) -> typing.Union[MetaOapg.properties.pool, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["created_timestamp"]) -> typing.Union[MetaOapg.properties.created_timestamp, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["created_block_number"]) -> typing.Union[MetaOapg.properties.created_block_number, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["prices"]) -> typing.Union[MetaOapg.properties.prices, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["liquidity_gross"]) -> typing.Union[MetaOapg.properties.liquidity_gross, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["liquidity_gross_usd"]) -> typing.Union[MetaOapg.properties.liquidity_gross_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["liquidity_net"]) -> typing.Union[MetaOapg.properties.liquidity_net, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["liquidity_net_usd"]) -> typing.Union[MetaOapg.properties.liquidity_net_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["last_snapshot_day_id"]) -> typing.Union[MetaOapg.properties.last_snapshot_day_id, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["last_snapshot_hour_id"]) -> typing.Union[MetaOapg.properties.last_snapshot_hour_id, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["last_update_timestamp"]) -> typing.Union[MetaOapg.properties.last_update_timestamp, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["last_update_block_number"]) -> typing.Union[MetaOapg.properties.last_update_block_number, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["vid"], typing_extensions.Literal["id"], typing_extensions.Literal["index"], typing_extensions.Literal["pool"], typing_extensions.Literal["created_timestamp"], typing_extensions.Literal["created_block_number"], typing_extensions.Literal["prices"], typing_extensions.Literal["liquidity_gross"], typing_extensions.Literal["liquidity_gross_usd"], typing_extensions.Literal["liquidity_net"], typing_extensions.Literal["liquidity_net_usd"], typing_extensions.Literal["last_snapshot_day_id"], typing_extensions.Literal["last_snapshot_hour_id"], typing_extensions.Literal["last_update_timestamp"], typing_extensions.Literal["last_update_block_number"], ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *_args: typing.Union[dict, frozendict.frozendict, ],
        entry_time: typing.Union[MetaOapg.properties.entry_time, str, datetime, schemas.Unset] = schemas.unset,
        recv_time: typing.Union[MetaOapg.properties.recv_time, str, datetime, schemas.Unset] = schemas.unset,
        block_number: typing.Union[MetaOapg.properties.block_number, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        vid: typing.Union[MetaOapg.properties.vid, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        id: typing.Union[MetaOapg.properties.id, None, str, schemas.Unset] = schemas.unset,
        index: typing.Union[MetaOapg.properties.index, None, str, schemas.Unset] = schemas.unset,
        pool: typing.Union[MetaOapg.properties.pool, None, str, schemas.Unset] = schemas.unset,
        created_timestamp: typing.Union[MetaOapg.properties.created_timestamp, None, str, schemas.Unset] = schemas.unset,
        created_block_number: typing.Union[MetaOapg.properties.created_block_number, None, str, schemas.Unset] = schemas.unset,
        prices: typing.Union[MetaOapg.properties.prices, list, tuple, None, schemas.Unset] = schemas.unset,
        liquidity_gross: typing.Union[MetaOapg.properties.liquidity_gross, None, str, schemas.Unset] = schemas.unset,
        liquidity_gross_usd: typing.Union[MetaOapg.properties.liquidity_gross_usd, None, str, schemas.Unset] = schemas.unset,
        liquidity_net: typing.Union[MetaOapg.properties.liquidity_net, None, str, schemas.Unset] = schemas.unset,
        liquidity_net_usd: typing.Union[MetaOapg.properties.liquidity_net_usd, None, str, schemas.Unset] = schemas.unset,
        last_snapshot_day_id: typing.Union[MetaOapg.properties.last_snapshot_day_id, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        last_snapshot_hour_id: typing.Union[MetaOapg.properties.last_snapshot_hour_id, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        last_update_timestamp: typing.Union[MetaOapg.properties.last_update_timestamp, None, str, schemas.Unset] = schemas.unset,
        last_update_block_number: typing.Union[MetaOapg.properties.last_update_block_number, None, str, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
    ) -> 'UNISWAPV3ETHEREUMTickDTO':
        return super().__new__(
            cls,
            *_args,
            entry_time=entry_time,
            recv_time=recv_time,
            block_number=block_number,
            vid=vid,
            id=id,
            index=index,
            pool=pool,
            created_timestamp=created_timestamp,
            created_block_number=created_block_number,
            prices=prices,
            liquidity_gross=liquidity_gross,
            liquidity_gross_usd=liquidity_gross_usd,
            liquidity_net=liquidity_net,
            liquidity_net_usd=liquidity_net_usd,
            last_snapshot_day_id=last_snapshot_day_id,
            last_snapshot_hour_id=last_snapshot_hour_id,
            last_update_timestamp=last_update_timestamp,
            last_update_block_number=last_update_block_number,
            _configuration=_configuration,
        )
