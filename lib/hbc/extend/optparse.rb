require "optparse"
require "pathname"

OptionParser.accept Pathname do |path|
  Pathname(path).expand_path if path
end
