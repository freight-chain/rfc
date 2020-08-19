<pre>
RFC: RFC-4
title: Parametric Exchange Rate Mechanism (PERM)
author:  Sam Bacha (@sambacha) sam@freighttrust.com
discussions-to: [rfc-issues-4](https://github.com/freight-chain/rfc/issues/5)
status: Draft
type: Network Upgrade
category Core, Network
created: <2020-02-15>
</pre>
<br>

## Abstract

Connecting Token Value and Dollar denominated transactions costs to achieve token value parity (within an acceptable range) of 1 $EDI equaling 1 $USD. <br>

## Specification

[Google Spreadsheet Detailing Costs](https://docs.google.com/spreadsheets/d/1YDjC3ShHhJnl_B55F0MfU01t0MOTN_Y6zMXjfmMcFLU/edit#gid=0)
Assuming a cost of \$1 Per EDI Transaction, Gas Costs must be spent to send and approve the transaction for it to be included into a block. <br>

Based on the value of `1,136 bytes` on a sample EDI message costing `77,248 gas`. This provides with current network specifications about `135` transactions per block. <br>

In trying to establish a price mechanism to increase token price and utility, a `PERM` or `Parametric Exchange Rate Mechanism` is proposed detailed below. <br>

Parametric functions as defined:
Pegging to defined asset such that volatility is substatinaly reduced for purchases.

- xDai
- DAI
- USDC
- TUSD

Such that when EDI transactions are made on behalf of customers, a `special purpose entity` hereafter Freight Clearinghouse LLC, FreightTrust and Clearing Corporation, or a market maker, shall act on behalf of customers through a 3rd party custodial service provider to either purchase the requesite tokens up to $1 USD value of $EDI for processing of transactions to cover gas costs. The difference between $EDI spot price and $USD at time of execution less costs of providing service will remain in \$EDI. <br>

## Implementation

`permTarget: 0.60`

Unites of Value to be denominated in `united states dollars`
<br>
PERM target of EDI Transaction Price will be established at 0.60 \$USD (60 cents) whence this RFC is finalized. Network Operations shall have control of changing PERM target based on market and/or economic conditions.
<br>
So that PERM may be programtically done via REST-API, coordination between custodial accounts

## Example

1. $EDI is trading at 0.10 $USD (10 cents).
2. Cost of providing EDI Transaction is 0.60 \$USD (60 cents).
3. A purchase of 0.60 $USD worth of $EDI is made at either limit or market.
4. A profit of remaining 0.30 \$USD (30 cents) is retained.

## Rationale

To better enhance market liquidity and properly align token value with real world value.

## Backwards Compatibility

Not Applicable.

## Test Cases

Pending Sandbox environment.

## Implementation

Application for Coinbase Custodial Services and Market Making Firm already underway.

## Security Considerations

Exploitation of accounts, 2FA compromises, phishing attacks, and illegitamte transactions sent in bid to artifically increase token price from compromised end user accounts. Mitigation strategies can be outlined in internal documentation.

## Other Considerations

Legal aspect of contractual rights and bailee status of transacting parties. This may affect implementation but not result.

## Copyright

Copyright 2020 - FreightTrust and Clearing Corporation. All Rights Reserved.
