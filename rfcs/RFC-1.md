---
RFC: 1
title: RFC Purpose and Guidelines
status: Active
type: Meta
author: Sam Bacha <sam@freighttrust.com>
created: 2020-02-15
---

## What is an RFC?

RFC stands for "Request for Comment". An RFC is a design document providing information relevant to the Freight Trust Network (here after "Network")community, or describing a new feature for Ethereum or its processes or environment. The RFC should provide a concise technical specification of the feature and a rationale for the feature.

## RFC Rationale

We intend RFCs to be the primary mechanisms for proposing new features, for collecting community technical input on an issue, and for documenting the design decisions that have gone into Ethereum. Because the RFCs are maintained as text files in a versioned repository, their revision history is the historical record of the feature proposal.

These RFC's are independent of other network improvement proposals, such as EIP (ethereum improvement proposal). These are specific to the Freight Trust Network.

## RFC Types

There are three types of RFC:

- A **Standard Track RFC** describes any change that affects most or all Ethereum implementations, such as a change to the network protocol, a change in block or transaction validity rules, proposed application standards/conventions, or any change or addition that affects the interoperability of applications using Ethereum. Furthermore Standard RFCs can be broken down into the following categories. Standards Track RFCs consist of three parts, a design document, implementation, and finally if warranted an update to the [formal specification].
  - **Core** - improvements requiring a consensus fork.
  - **Networking** - includes improvements around the network.
  - **Interface** - includes improvements around client [API/RPC] specifications and standards, and also certain language-level standards like method names ([RFC6]) and [contract ABIs]. The label “interface” aligns with the [interfaces repo] and discussion should primarily occur in that repository before an RFC is submitted to the RFCs repository.
- An **Informational RFC** describes an Ethereum design issue, or provides general guidelines or information to the Ethereum community, but does not propose a new feature. Informational RFCs do not necessarily represent Ethereum community consensus or a recommendation, so users and implementers are free to ignore Informational RFCs or follow their advice.

A hastily-proposed RFC can hurt its chances of acceptance. Low quality proposals, proposals for previously-rejected features, or those that don't fit into the near-term roadmap, may be quickly rejected, which can be demotivating for the unprepared contributor. Laying some groundwork ahead of the RFC can make the process smoother.