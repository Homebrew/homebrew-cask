# name

`name` accepts a UTF-8 string defining the name of the software, including capitalization and punctuation. It is used to help with searchability and disambiguation.

Unlike the [token](https://github.com/Homebrew/homebrew-cask/blob/master/doc/cask_language_reference/token_reference.md), which is simplified and reduced to a limited set of characters, the `name` stanza can include the proper capitalization, spacing and punctuation to match the official name of the software. For disambiguation purposes, it is recommended to spell out the name of the application, and including the vendor name if necessary. A good example is [`pycharm-ce`](https://github.com/Homebrew/homebrew-cask/blob/fc05c0353aebb28e40db72faba04b82ca832d11a/Casks/pycharm-ce.rb#L6-L7), whose name is spelled out as `Jetbrains PyCharm Community Edition`, even though it is likely never referenced as such anywhere.

Additional details about the software can be provided in the [desc](desc.md) stanza.

The `name` stanza can be repeated multiple times if there are useful alternative names. The first instance should use the Latin alphabet. For example, see the [`cave-story`](https://github.com/Homebrew/homebrew-cask/blob/0fe48607f5656e4f1de58c6884945378b7e6f960/Casks/cave-story.rb#L7-L9) cask, whose original name does not use the Latin alphabet.
