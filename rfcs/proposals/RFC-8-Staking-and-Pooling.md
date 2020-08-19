---
RFC: 8
title: Economic Incentives and Governance Mechanism
authors:
discussions-to: <URL>
status: Draft
type: Meta
category: Core
created: 2020-05-27
---

<!--You can leave these HTML comments in your merged RFC and delete the visible duplicate text guides, they will not appear and may be helpful to refer to if you edit it again. This is the suggested template for new RFCs. Note that an RFC number will be assigned by an editor. When opening a pull request to submit your RFC, please use an abbreviated title in the filename, `RFC-draft_title_abbrev.md`. The title should be 44 characters or less.-->

## Simple Summary

<!--"If you can't explain it simply, you don't understand it well enough." Provide a simplified and layman-accessible explanation of the RFC.-->

Economic Incentives and Governance Mechanism

## Abstract

<!--A short (~200 word) description of the issue being addressed.-->

Staking Pools can be thought of as a delegated pool: Network Operators must form a pool in order to provide services. Some Network Operators may not have enough \$EDI tokens in order to be able to do so. Others may have enough but also want to provide liquidity to the market. This system enables Network Operators the flexibility of both.

## Motivation

<!--The motivation is critical for RFCs that want to change anything network related. It should clearly explain why the existing protocol specification is inadequate to address the problem that the RFC solves. RFC submissions without sufficient motivation may be rejected outright.-->

The motivation is critical for RFCs that want to change the network. It should clearly explain why the existing protocol specification is inadequate to address the problem that the RFC solves. RFC submissions without sufficient motivation may be rejected outright.

## Specification

<!--The technical specification should describe the syntax and semantics of any new feature.-->

The technical specification should describe the syntax and semantics of any new feature.

## Outline

1. \$EDI ERC-20 Overview
2. \$xEDI Overview
3. Staking Pool
4. Governance
5. Network Operators  
   a. Authority.
   b. Validators.  
   c. Signers.  
   d. Heartbeat.
6. Network Tenents

## Staking

#### Smart Contract Overview

| Contract         | Description                                                |
| ---------------- | ---------------------------------------------------------- |
| Staking Contract | An upgradeable contract that implements staking            |
| Staking Proxy    | Stores staking state and delegates to the Staking Contract |
| **Registry**     | Enables Pools to form that users may wish to delegate      |
| **Registry**     | Enables Pools to form that users may wish to delegate      |
| \$EDI Vault      | Securely holds staked \$EDI Tokens                         |
| \$EDI Treasury   | Securely holds \$EDI Tokens for payouts                    |

### Payout Formula

> Staking rewards payout in $EDI, but can also payout in additional tokens, such as $DAI or \$USDC depending on your jurisdiction.
>
> Staking Pools can be thought of as a delegated pool: Network Operators must form a `pool` in order to provide services. Some Network Operators may not have enough \$EDI tokens in order to be able to do so. Others may have enough but also want to provide liquidity to the market. This system enables Network Operators the flexibility of both.

$$  r=R \times\left(\frac{f}{F}\right)^{\alpha} \times\left(\frac{d}{D}\right)^{1-a}  $$

| Term | Definition                                                                    |
| ---- | ----------------------------------------------------------------------------- |
| _r_  | Reward for a specific pool.                                                   |
| _R_  | Total reward to be split between all pools.                                   |
| _f_  | Total fees earned by the pool during a specific rotation period/epoch.        |
| _F_  | Total fees earned across all (staked) pools this epoch.                       |
| _d_  | Total weighted \$EDI staked by the pool this epoch.                           |
| _D_  | Total weighted \$EDI staked across all (active) pools this epoch.             |
| _α_  | A constant in the range \[0..1\] that determines the weight of fees vs stake. |

---

---

## title: '\$EDI ERC-20 Staking Pool and Network Rewards Protocol'

# ERC-20 Staking Pool

## Table of Contents

[TOC]

> There are two protocols involved in staking
>
> 1. The ERC-20 Pooling and Rewards Protocol [Join Pool](/sdo20ZqURiyXL5qQsIO7nw)
> 2. The Adversarial Rewards Protocol [Fight Pool](/C1S2Z85RQyak-f1E3H0eew)
>    They are called "Join" and "Fight"

# Main Pool Protocol

### Basic Functionalities

The contract offers three basic functionalities.

1. \$EDI token owner can deposit and withdraw from the contract
2. \$EDI withdrawls are a 30-day cooldown, meaning it wont unlock for 30 days.
3. Migration of Pools: Authority nodes run an adversarial "red" vs. "blue " mode, meaning after every epoch (600,000 blocks) a migration takes place

Stakers themselves are the only ones that can opt-in to migrate their tokens from the current contract to the new one. As Stakers opt-in to new contracts, the migration manager cannot access nor prevent them from withdrawing their tokens.

### Functionality

`approve()` + `stake()` + `unstake()` + `withdraw()` + `restake()`

### Incident Response Manager

The IRM module can

- Disable staking operations
- Release all stakes
- Update the address of the emergency manager

**Migration manager** that can, in an administrative capacity during the initial period after the launch of the network:

- Add or remove migration destinations.

- Update the stake change notifier.

- Update the address of the migration manager.

## Administrative Processes

### Migration Pathway

The migration flow allows users to opt-in to migrate their staked tokens to a new staking contract. Alternatively, a user can unstake, wait for the cooldown period to end, withdraw and stake in a new contract, but this would imply that the tokens are not staked during the cooldown period.

The Migration process:

1.  The migration manager may propose (up to `MAX_APPROVED_STAKING_CONTRACTS`) distinct "migration destination" contracts.

2.  Users may decide to migrate their staked tokens to any one of these contracts using the `migrateStakedTokens()` function. Note that the destination contracts only need to implement the `IMigratableStakingContract()` and could differ in many aspects relative to the existing IStakingContract specifications.

3.  Once requested, the existing contract will call ERC20 approve and the `acceptMigration()` function of the new contract (part of the `IMigratableStakingContract` interface), which will move the stake to the new contract.

### Distributing Rewards

The `distributeRewards()` helper function allows staking on behalf of different users in batch (e.g., like calling acceptMigration() multiple times).

This function is meant to be called by a network operator whenever it needs to distribute staking rewards, which will be distributed as new staked tokens. Similarly to the `acceptMigration()` function

Since `distributeRewards()` and `withdrawReleasedStakes()` are batched operations, their caller should provide enough gas for the entire batch in order to successfully distribute rewards to their pool members.

## Rationale

Prima Facie

## Backwards Compatibility

<!--All RFCs that introduce backwards incompatibilities must include a section describing these incompatibilities and their severity. The RFC must explain how the author proposes to deal with these incompatibilities. RFC submissions without a sufficient backwards compatibility treatise may be rejected outright.-->

All RFCs that introduce backwards incompatibilities must include a section describing these incompatibilities and their severity. The RFC must explain how the author proposes to deal with these incompatibilities. RFC submissions without a sufficient backwards compatibility treatise may be rejected outright.

N/A

## Test Cases

<!--Test cases for an implementation are mandatory for RFCs that are affecting consensus changes. Other RFCs can choose to include links to test cases if applicable.-->

Test cases for an implementation are mandatory for RFCs that are affecting consensus changes. Other RFCs can choose to include links to test cases if applicable.

TBD, tentative date timeline looking like mid-June

## Implementation

<!--The implementations must be completed before any RFC is given status "Final", but it need not be completed before the RFC is accepted. While there is merit to the approach of reaching consensus on the specification and rationale before writing code, the principle of "rough consensus and running code" is still useful when it comes to resolving many discussions of API details.-->

The implementations must be completed before any RFC is given status "Final", but it need not be completed before the RFC is accepted. While there is merit to the approach of reaching consensus on the specification and rationale before writing code, the principle of "rough consensus and running code" is still useful when it comes to resolving many discussions of API details.

see: [https://github.com/freight-chain/erc-pool](https://github.com/freight-chain/erc-pool)

## Security Considerations

<!--All RFCs must contain a section that discusses the security implications/considerations relevant to the proposed change. Include information that might be important for security discussions, surfaces risks and can be used throughout the life cycle of the proposal. E.g. include security-relevant design decisions, concerns, important discussions, implementation-specific guidance and pitfalls, an outline of threats and risks and how they are being addressed. RFC submissions missing the "Security Considerations" section will be rejected. An RFC cannot proceed to status "Final" without a Security Considerations discussion deemed sufficient by the reviewers.-->

All RFCs must contain a section that discusses the security implications/considerations relevant to the proposed change. Include information that might be important for security discussions, surfaces risks and can be used throughout the life cycle of the proposal. E.g. include security-relevant design decisions, concerns, important discussions, implementation-specific guidance and pitfalls, an outline of threats and risks and how they are being addressed. RFC submissions missing the "Security Considerations" section will be rejected. An RFC cannot proceed to status "Final" without a Security Considerations discussion deemed sufficient by the reviewers.

Pending security audit

## Copyright

Copyright 2020 FreightTrust and Clearing Corporation
