require 'test_helper'
require 'securerandom'
require 'digest/sha2'

describe Cask::CLI::Fetch do
  it "allows fetch of multiple casks at once" do
      dlpaths = Cask::CLI::Fetch.run('local-transmission', 'local-caffeine')
      # Check that the files exist at the destination
      TestHelper.not_nil? File.stat(dlpaths["local-transmission"])
      TestHelper.not_nil? File.stat(dlpaths["local-caffeine"])
  end

  it "properly handles casks that are not present" do
    TestHelper.must_output(self, lambda {
      Cask::CLI::Fetch.run('what-the-balls')
    }, 'Error: No available cask for what-the-balls')
  end
end
