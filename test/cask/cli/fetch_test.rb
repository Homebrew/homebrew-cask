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

  it "overwrites any existing file" do

    # Fetch once to create file
    dlpaths = Cask::CLI::Fetch.run('local-transmission')

    # Trash the downloaded file to give it a known SHA-512
    File.open(dlpaths['local-transmission'], 'w') do |f|
      f.truncate(0)
      f.write('abcdef')
    end

    # Check our known hash is OK
    before_hash = Digest::SHA512.hexdigest(open(dlpaths['local-transmission']).read)
    TestHelper.is_equal?(before_hash, "e32ef19623e8ed9d267f657a81944b3d07adbb768518068e88435745564e8d4150a0a703be2a7d88b61e3d390c2bb97e2d4c311fdc69d6b1267f05f59aa920e7")

    # Fetch again to overwrite our known-bad file
    dlpaths = Cask::CLI::Fetch.run('local-transmission')

    # Make sure the hash has changed
    after_hash = Digest::SHA512.hexdigest(open(dlpaths['local-transmission']).read)
    TestHelper.isnt_equal?(before_hash, after_hash)
  end

  it "properly handles casks that are not present" do
    TestHelper.must_output(self, lambda {
      Cask::CLI::Fetch.run('what-the-balls')
    }, 'Error: No available cask for what-the-balls')
  end
end
