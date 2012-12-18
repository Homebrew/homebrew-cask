require 'test_helper'

describe Cask::DSL do
  it "lets you set url, homepage, and version" do
    test_cask = Cask.load('test-cask')
    test_cask.url.must_equal URI('http://example.com/TestCask.dmg')
    test_cask.homepage.must_equal 'http://example.com/'
    test_cask.version.must_equal '1.2.3'
  end

  it "lets you set checksum via sha1, sha256, and/or md5" do
    ChecksumCask = Class.new(Cask)
    ChecksumCask.class_eval do
      md5 'imamd5'
      sha1 'imasha1'
      sha256 'imasha2'
    end
    instance = ChecksumCask.new
    instance.sums.must_equal [
      Checksum.new(:md5, 'imamd5'),
      Checksum.new(:sha1, 'imasha1'),
      Checksum.new(:sha2, 'imasha2')
    ]
  end
end
