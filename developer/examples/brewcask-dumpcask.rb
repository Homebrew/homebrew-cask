# brewcask-dumpcask
#
# A trivial `brew cask` external command, implemented in Ruby.
# Loads a Cask definition, then dumps it in YAML format.
# Example usage:
#
#     brew cask dumpcask google-chrome
#

command_name = ARGV.shift
cask_name = ARGV.shift

cask = Cask.load(cask_name)

Cask.debug = true
cask.dumpcask
