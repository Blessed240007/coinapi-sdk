goog.provide('API.Client.UNISWAP_V3_ETHEREUM.SwapDTO');

/**
 * Trade (swap) event occurred in a pool.
 * @record
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.blockNumber;

/**
 * Block number in which the swap operation was recorded.
 * @type {!number}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.block;

/**
 * Unique string identifier of the swap operation, format: (transaction hash)-(log index).
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.id;

/**
 * Transaction hash of the transaction that emitted this event.
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.hash;

/**
 * Nonce of the transaction that emitted this event.
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.nonce;

/**
 * Event log index. For transactions that don't emit event, create arbitrary index starting from 0.
 * @type {!number}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.logIndex;

/**
 * Gas limit of the transaction that emitted this event.
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.gasLimit;

/**
 * Gas used in this transaction.
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.gasUsed;

/**
 * Gas price of the transaction that emitted this event.
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.gasPrice;

/**
 * The protocol this transaction belongs to.
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.protocol;

/**
 * Account that emitted this event.
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.account;

/**
 * The pool involving this event.
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.pool;

/**
 * Timestamp of this event.
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.timestamp;

/**
 * Tick of the swap operation.
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.tick;

/**
 * Token deposited into pool.
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.tokenIn;

/**
 * Amount of token deposited into pool in native units.
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.amountIn;

/**
 * Amount of token deposited into pool in USD.
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.amountInUsd;

/**
 * Token withdrawn from pool.
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.tokenOut;

/**
 * Amount of token withdrawn from pool in native units.
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.amountOut;

/**
 * Amount of token withdrawn from pool in USD.
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.amountOutUsd;

/**
 * Amount of input tokens in the liquidity pool.
 * @type {!Array<!string>}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.reserveAmounts;

/**
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.poolId;

/**
 * @type {!string}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.transactionId;

/**
 * @type {!number}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.evaluatedPrice;

/**
 * @type {!number}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.evaluatedAmount;

/**
 * @type {!API.Client.Transactions.ETradeAggressiveSide}
 * @export
 */
API.Client.UNISWAPV3ETHEREUMSwapDTO.prototype.evaluatedAggressor;

