require 'test_helper'

describe Cask::CLI::Search do
  it "lists the available casks that match the search term" do
    lambda {
      Cask::CLI::Search.run('intellij')
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      intellij-idea-community
      intellij-idea-ultimate
    OUTPUT
  end

  it "shows that there are no casks matching a search term that did not result in anything" do
  	lambda {
  		Cask::CLI::Search.run('foo-bar-baz')
  	}.must_output("No casks matching: foo-bar-baz\n")
  end
end
