require 'test_helper'

describe Cask::CLI::Search do
  it "lists the available casks that match the search term" do
    Cask.stubs(:all).returns(%w[
      phinze-cask/foo
      phinze-cask/bar
      phinze-cask/baz
    ])
    lambda {
      Cask::CLI::Search.run('ba')
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      bar
      baz
    OUTPUT
  end
end
