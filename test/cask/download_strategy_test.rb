require 'test_helper'

describe Cask::DownloadStrategy do
  class StubbedCurlDownloadStrategy < Cask::DownloadStrategy
    def curl(*args)
      args[1..2]
    end
  end

  it "passes curl any cookies given it" do
    cookies = { "foo" => "bar" }
    software_spec = SoftwareSpec.new('http://example.com/TestDmg.dmg', '1.2.3')
    downloader = StubbedCurlDownloadStrategy.new('TestCask', software_spec, cookies)
    downloader._fetch.must_equal [ '-b', 'foo=bar' ]
  end
end

