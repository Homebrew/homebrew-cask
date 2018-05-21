# name

`name` accepts a UTF-8 string defining the full name of the software, and is used to help with searchability and disambiguation. It can be repeated multiple times if there are useful alternative names.

Its first instance should use the latin alphabet, include the software vendor’s name, and be as verbose as possible while still making sense.

A good example is [`pycharm-ce`](https://github.com/Homebrew/homebrew-cask/blob/fc05c0353aebb28e40db72faba04b82ca832d11a/Casks/pycharm-ce.rb#L6#L7). `Jetbrains PyCharm Community Edition` makes sense even though it is likely never referenced as such anywhere, but `Jetbrains PyCharm Community Edition CE` doesn’t, hence why it has a second line. Another example are casks whose original names do not use the latin alphabet, like [`cave-story`](https://github.com/Homebrew/homebrew-cask/blob/0fe48607f5656e4f1de58c6884945378b7e6f960/Casks/cave-story.rb#L7#L9).

Note that `brew cask search` and `brew cask list` are not yet capable of using the information stored in the `name` stanza.