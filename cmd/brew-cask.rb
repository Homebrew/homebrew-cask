require "pathname"

$LOAD_PATH.unshift(File.expand_path("../../lib", Pathname.new(__FILE__).realpath))

require "hbc"

begin
  Hbc::CLI.process(ARGV)
rescue Interrupt
  puts
  exit 130
end
