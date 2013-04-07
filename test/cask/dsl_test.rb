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

  it "still lets you set content_length even though it is deprecated" do
    OldContentLengthCask = Class.new(Cask)
    begin
      shutup do
        OldContentLengthCask.class_eval do
          content_length '12345'
        end
      end
    rescue Exception => e
      flunk("expected content_length to work, but got exception #{e}")
    end
  end

  it "prevents the entire world from crashing when a cask includes an unknown method" do
    UnexpectedMethodCask = Class.new(Cask)
    begin
      lambda {
        UnexpectedMethodCask.class_eval do
          future_feature :not_yet_on_your_machine
        end
      }.must_output(
        "Warning: Unexpected method future_feature called on UnexpectedMethodCask. Running `brew update; brew upgrade brew-cask` will likely fix it.\n"
      )
    rescue Exception => e
      flunk("Wanted unexpected method to simply warn, but got exception #{e}")
    end
  end
end
