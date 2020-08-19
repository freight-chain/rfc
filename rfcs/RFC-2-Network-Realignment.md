---
RFC: RFC-2
title: Network Realingment
author:  Sam Bacha (@sambacha) sam@freighttrust.com
discussions-to: [rfc-issues-1](https://github.com/freight-chain/rfc/issues/1)
status: Draft
type: Network Upgrade
category Core, Network
created: <2020-02-15>
---

## Simple Summary

<!--"If you can't explain it simply, you don't understand it well enough." Provide a simplified and layman-accessible explanation of the RFC.-->

The Network Token supply must be realigned to properly reflect the new business model for the network as a whole. Focusing on EDI transactions aligns the token-use case and network mechanics with actual product that customers are wanting and expressing interest in.

## Abstract

The finite supply of 88,000,000 tokens is unusable in an EDI focused product offering for network transactions. Simply put: The amount of transactions that the network can handle will be constrained by the supply of tokens based on current genesis file configuration.

## Motivation

Based on current customers and potential customer interest in our cloud EDI offering, migrating to an edi focused product versus a "TMS" system with EDI functionality has lead to more interest in our product offering, and hence the network usability. EDI transactions make more sense than pursuing a TMS style offering as we currently are doing. EDI transactions are similar to blockchain transactions: they are charged per transaction and even per byte. This is exactly how Ethereum-like networks base their transaction sets to. Based on calculations of network growth size and current incentives for hosting a node, these may not be sufficient to payout to properly decentralize the network nor offer sufficient "at stake" economic incentive for economic mitigation against attacking the network (read: spamming the network). Fixing transaction (pegging) to DAI/USDC here is perferable and limits volatility while also encouraging price appreciation based on organic demand.

## Specification

Gas Limit per block: 10,485,760 (as defined in gensis file)
EDI transaction size in bytes: 1,136
EDI transaction cost in gas: 77,248
EDI transactions per block: 135.74

Block Rewards
Rewards to halve every year for 25 years.

Year one: 31,556,952
Year two: 15,778,476
Year three: 7,889,238
Year four: 3,944,619
and so on.

Network Hard Disk Growth per year at max transaction size:
in bytes: 486615625005
in gigabytes: 486.615625

Tokens that will be needed for a payout starting at 10 per block at year one: 63,113,902.12
Assuming full transaction blocks using numbers defined under `EDI` above: 428,358,824.8
Current existing supply: 88,000,000

New Max Supply: 579,472,727
Floating Supply: 151,113,902
Transaction Supply: 428,358,825

Transaction Supply Sell Criteria: 1 $EDI = 1 $USDC/$DAI [SupplytxCriteria]
The Transaction Supply would be sold after $EDI exceeds value of 1 \$USDC/DAI.

If $EDI is GREATER than 1 $USDC/DAI, Transaction Supply can be unlocked.
If $EDI is LESS than 1 $USDC/DAI, Transaction Supply remains locked.
Else \$EDI not valid.

Supply Transaction Criteria can be adjusted by committee approval.

## Token Mechanics

Assuming a cost of \$1 Per EDI Transaction, Gas Costs must be spent to send and approve the transaction for it to be included into a block. <br>

Based on the value of `1,136 bytes` on a sample EDI message costing `77,248 gas`. This provides with current network specifications about `135` transactions per block. <br>

In trying to establish a price mechanism to increase token price and utility, an `ERM` or `Exchange Rate Mechanism` is proposed

## Rationale

The rationale behind this is to enhance token utility: EDI transaction pricing is already done in the logistics industry on not only a per transactional level it also includes pricing based on bytes per message.

## Backwards Compatibility

<!--All RFCs that introduce backwards incompatibilities must include a section describing these incompatibilities and their severity. The RFC must explain how the author proposes to deal with these incompatibilities. RFC submissions without a sufficient backwards compatibility treatise may be rejected outright.-->

This would make $BOL in compatible with the network upgrade, hence needing to migrate to a new token called $EDI.

## Test Cases

<!--Test cases for an implementation are mandatory for RFCs that are affecting consensus changes. Other RFCs can choose to include links to test cases if applicable.-->

Testing can be found in the [edi repo](https://github.com/freight-chain/edi/testing)
documentation on testing and specifications can be found:
[evm opcodes](https://github.com/nsward/evm-opcodes)
[ethereum yellow paper](http://gavwood.com/paper.pdf)
[freight trust genesis file](https://github.com/freight-chain/node/blob/master/genesis.json)
[edi transaction standard](https://gist.github.com/sambacha/3bccb5af0dc834254df0935ba9cedb9c)

## Implementation

A new contract will be published, with ABI and source code published in the [ftn token repo](https://github.com/freight-chain/network-token)

## Security Considerations

Considerations related to security are by nature mitigated due to the "cost per transaction and per byte" nature of submitting transactions.

## Copyright

Copyright 2020 - FreightTrust and Clearing Corporation. All Rights Reserved.
