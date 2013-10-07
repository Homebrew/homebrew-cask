require 'test_helper'

describe Cask::CLI::Search do
  it "lists the available casks that match the search term" do
    lambda {
      Cask::CLI::Search.run('intellij')
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      intellij-community
      intellij-ultimate
    OUTPUT
  end
end
