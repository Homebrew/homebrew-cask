# license

The `license` stanza is not free-form. A single value must be chosen from a list of valid symbols.

The values for `license` are categories, rather than fully-specified licenses. For example, `:gpl` is a category; we do not distinguish between versions of the GPL. Similarly, `:cc` and `:bsd` comprise many variants. They must always pertain to the license of the software itself, not the vendor’s business model (a free app to access a paid service is still `:gratis`, not `:freemium`).

The `license` stanza is intended as an aid to search/filtering of Casks. For full and complete information, the user must always rely on the vendor’s homepage.

Note that `brew cask search` and `brew cask list` are not yet capable of using the information stored in the `license` stanza.

## Generic Category Licenses

Cask authors should use the most specific license category which is also correct. Generic categories are provided for difficult cases. `:unknown` is also perfectly fine if you are unsure.

Example: [Chromium](http://www.chromium.org/chromium-os/licenses) includes code with multiple licenses, all of which are open source. Chromium licensing is described by the generic category [`:oss`](https://github.com/caskroom/homebrew-cask/blob/54a79f7dcceea9a922a5b608ac99466b9d10a191/Casks/chromium.rb#L7).

| symbol      | meaning     |
| ----------- | ----------- |
| `:oss`      | open-source software
| `:closed`   | closed-source software
| `:unknown`  | license unknown
| `:other`    | license is known, but fits no category

## Valid Licenses

| symbol           | generic category | meaning                                                            | URL         |
| ---------------- | ---------------- | ------------------------------------------------------------------ | ----------- |
| `:gratis`        | `:closed`        | free-to-use, closed source                                         | <none>
| `:commercial`    | `:closed`        | not free to use                                                    | <none>
| `:freemium`      | `:closed`        | free-to-use, payment required for full or additional functionality | <http://en.wikipedia.org/wiki/Freemium>
| `:affero`        | `:oss`           | Affero General Public License                                      | <https://gnu.org/licenses/agpl.html>
| `:apache`        | `:oss`           | Apache Public License                                              | <http://www.apache.org/licenses/>
| `:arphic`        | `:oss`           | Arphic Public License                                              | <http://www.arphic.com/tw/download/public_license.rar>
| `:artistic`      | `:oss`           | Artistic License                                                   | <http://dev.perl.org/licenses/artistic.html>
| `:bsd`           | `:oss`           | BSD License                                                        | <http://www.linfo.org/bsdlicense.html>
| `:cc`            | `:oss`           | Creative Commons License                                           | <http://creativecommons.org/licenses/>
| `:eclipse`       | `:oss`           | Eclipse Public License                                             | <https://www.eclipse.org/legal/eplfaq.php>
| `:gpl`           | `:oss`           | GNU Public License                                                 | <http://www.gnu.org/copyleft/gpl.html>
| `:isc`           | `:oss`           | Internet Systems Consortium License                                | <http://www.isc.org/downloads/software-support-policy/isc-license/>
| `:lppl`          | `:oss`           | LaTeX Project Public License                                       | <http://latex-project.org/lppl/>
| `:ncsa`          | `:oss`           | University of Illinois/NCSA Open Source License                    | <http://otm.illinois.edu/uiuc_openSource>
| `:mit`           | `:oss`           | MIT License                                                        | <http://opensource.org/licenses/MIT>
| `:mpl`           | `:oss`           | Mozilla Public License                                             | <https://www.mozilla.org/MPL/>
| `:ofl`           | `:oss`           | SIL Open Font License                                              | <http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL>
| `:public_domain` | `:oss`           | not copyrighted                                                    | <http://creativecommons.org/publicdomain/zero/1.0/legalcode>
| `:ubuntu_font`   | `:oss`           | Ubuntu Font License                                                | <http://font.ubuntu.com/licence/>
| `:x11`           | `:oss`           | X Consortium License                                               | <http://www.xfree86.org/3.3.6/COPYRIGHT2.html>