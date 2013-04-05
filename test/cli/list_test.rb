require 'test_helper'

describe Cask::CLI::List do
  it "lists the installed casks in a pretty fashion" do
    shutup do
      Cask::CLI::Install.run('local-transmission', 'local-caffeine')
    end

    lambda {
      Cask::CLI::List.run
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      local-caffeine
      local-transmission
    OUTPUT
  end
end
