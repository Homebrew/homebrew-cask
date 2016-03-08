# brewcask-dumpcask
#
# A trivial `brew cask` external command, implemented in Ruby.
# Loads a Cask definition, then dumps it in YAML format.
# Example usage:
#
#     brew cask dumpcask google-chrome
#

command_name = ARGV.shift
cask_token = ARGV.shift

cask = Hbc.load(cask_token)

Hbc.debug = true
cask.dumpcask
