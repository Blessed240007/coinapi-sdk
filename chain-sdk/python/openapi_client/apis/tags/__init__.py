# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from openapi_client.apis.tag_to_api import tag_to_api

import enum


class TagValues(str, enum.Enum):
    CRYPTOPUNKS = "CRYPTOPUNKS"
    UNISWAP_V3_ETHEREUM = "UNISWAP_V3_ETHEREUM"
    METADATA = "Metadata"
    UNISWAPV2ETHEREUM = "UNISWAP-V2-ETHEREUM"
    UNISWAPV3ETHEREUM = "UNISWAP-V3-ETHEREUM"
