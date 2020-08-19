# Request for Comments or Change (RFCs)

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->

[![All Contributors](https://img.shields.io/badge/all_contributors-2-orange.svg?style=flat-square)](#contributors-)

<!-- ALL-CONTRIBUTORS-BADGE:END -->

Freight Trust Network Request For Comments or Change (RFCs) describe standards,
changes to the network, governance, documentation and contract standards.

RFCs start from RFC-50, a proposed RFC should increment from the last submitted
RFC.

RFC's are based of _Ethereum Improvement Proposals_ and other RFC systems like
_ICANN_

# Contributing

1.  Review [RFC-1](rfcs/RFC-1.md).
2.  Fork the repository by clicking "Fork" in the top right.
3.  Add your RFC to your fork of the repository. There is a
    [template RFC here](RFC-template.md).
4.  Submit a Pull Request
    [RFCs repository](https://github.com/freight-chain/rfc).

Your first PR should be a first draft of the final RFC. It must meet the
formatting criteria enforced by the build (largely, correct metadata in the
header). An editor will manually review the first PR for a new RFC and assign it
a number before merging it. Make sure you include a `discussions-to` header with
the URL to a discussion forum or open GitHub issue where people can discuss the
RFC as a whole.

If your RFC requires images, the image files should be included in a
subdirectory of the `assets` folder for that RFC as follows: `assets/RFC-N`
(where **N** is to be replaced with the RFC number). When linking to an image in
the RFC, use relative links such as `../assets/RFC-1/image.png`.

Once your first PR is merged, we have a bot that helps out by automatically
merging PRs to draft RFCs. For this to work, it has to be able to tell that you
own the draft being edited. Make sure that the 'author' line of your RFC
contains either your GitHub username or your email address inside
<triangular brackets>. If you use your email address, that address must be the
one publicly shown on
[your GitHub profile](https://github.com/settings/profile).

When you believe your RFC is mature and ready to progress past the draft phase,
you should do one of two things:

- **For a Standards Track RFC of type Core**, ask to have your issue added to
  [network community forum](https://github.com/freight-chain/forum/issues),
  where it can be discussed for inclusion in a future hard fork. If implementers
  agree to include it, the RFC editors will update the state of your RFC to
  'Accepted'.
- **For all other RFCs**, open a PR changing the state of your RFC to 'Final'.
  An editor will review your draft and ask if anyone objects to its being
  finalised. If the editor decides there is no rough consensus - for instance,
  because contributors point out significant issues with the RFC - they may
  close the PR and request that you fix the issues in the draft before trying
  again.

# RFC Status Terms

- **Draft** - an RFC that is undergoing rapid iteration and changes.
- **Last Call** - an RFC that is done with its initial iteration and ready for
  review by a wide audience.
- **Accepted** - a core RFC that has been in Last Call for at least 2 weeks and
  any technical changes that were requested have been addressed by the author.
  The process for Core Devs to decide whether to encode an RFC into their
  clients as part of a hard fork is not part of the RFC process. If such a
  decision is made, the RFC will move to final.
- **Final (non-Core)** - an RFC that has been in Last Call for at least 2 weeks
  and any technical changes that were requested have been addressed by the
  author.
- **Final (Core)** - an RFC that the Core Devs have decided to implement and
  release in a future hard fork or has already been released in a hard fork.

# Preferred Citation Format

The canonical URL for a RFC that has achieved draft status at any point is at
https://freight-chain.io/rfc.

## Contributors ✨

Thanks goes to these wonderful people
([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/Manraynor"><img src="https://avatars2.githubusercontent.com/u/65705459?v=4" width="100px;" alt=""/><br /><sub><b>Manraynor</b></sub></a><br /><a href="#content-Manraynor" title="Content">🖋</a></td>
    <td align="center"><a href="https://github.com/Sunsayzxc"><img src="https://avatars3.githubusercontent.com/u/59108542?v=4" width="100px;" alt=""/><br /><sub><b>Sunsayzxc</b></sub></a><br /><a href="https://github.com/freight-chain/rfc/commits?author=Sunsayzxc" title="Code">💻</a> <a href="https://github.com/freight-chain/rfc/commits?author=Sunsayzxc" title="Documentation">📖</a></td>
  </tr>
</table>

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the
[all-contributors](https://github.com/all-contributors/all-contributors)
specification. Contributions of any kind welcome!
