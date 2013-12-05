require 'test_helper'
require 'download_strategy'

describe Cask::DownloadStrategy do
  class StubbedDownloadStrategy < Cask::DownloadStrategy
    def curl(*args)
      args
    end
  end

  before do
    @resource = Class.new
    @resource.stubs(:url).returns('example.com')
    @resource.stubs(:version).returns('3.1')
  end

  it 'provides user_agent options down to curl' do
    cask = Cask.load('with-headers')
    downloader = StubbedDownloadStrategy.new(cask, @resource)

    downloader._fetch.must_include '-A'
    downloader._fetch.must_include 'Mozilla/25.0.1'
    downloader.must_respond_to :headers
  end

  it 'provides :cookie options down to curl' do
    cask = Cask.load('with-cookies')
    downloader = StubbedDownloadStrategy.new(cask, @resource)

    downloader._fetch.must_include '-b'
    downloader._fetch.must_include 'cookie_key=cookie_value'
    downloader.must_respond_to :headers
  end

  it 'provides :fake_user_agent options down to curl' do
    cask = Cask.load('with-fake-user-agent')
    downloader = StubbedDownloadStrategy.new(cask, @resource)

    downloader._fetch.must_include '-A'
    downloader._fetch.must_include 'Chrome/32.0.1000.00'
    downloader.must_respond_to :headers
  end
end
