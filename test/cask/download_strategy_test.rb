require 'test_helper'

def includes_args?(args, expected)
  ((args & expected) == expected).must_equal true,
    "expected #{args.inspect} to include #{expected.inspect}"
end

describe Cask::CurlDownloadStrategy do
  it 'properly assigns a name and Resource based on the cask' do
    cask = Cask.load('basic-cask')

    downloader = Cask::CurlDownloadStrategy.new(BasicCask)
    downloader.name.must_equal 'basic-cask'
    downloader.resource.name.must_equal 'basic-cask'
    downloader.resource.url.must_equal cask.url.to_s
    downloader.resource.version.to_s.must_equal cask.version
  end

  it 'calls curl with default arguments for a simple cask' do
    cask = Cask.load('basic-cask')

    downloader = Cask::CurlDownloadStrategy.new(cask)
    downloader.temporary_path.stubs(:rename)
    downloader.expects(:curl).with(
      cask.url,
      '-C', 0,
      '-o', kind_of(Pathname)
    )
    shutup { downloader.fetch }
  end

  it 'adds curl args for explicit user agent' do
    WithExplicitUserAgent = Class.new(Cask) do
      url 'http://host/path/to/app.dmg',
        :user_agent => 'Mozilla/25.0.1'
      version '1.2.3.4'
    end

    downloader = Cask::CurlDownloadStrategy.new(WithExplicitUserAgent)
    downloader.temporary_path.stubs(:rename)
    downloader.expects(:curl).with do |*args|
      includes_args?(args, ['-A', 'Mozilla/25.0.1'])
    end

    shutup { downloader.fetch }
  end

  it 'adds curl args for generalized fake user agent' do
    WithFakeUserAgent = Class.new(Cask) do
      url 'http://host/path/to/app.dmg',
        :user_agent => :fake
      version '1.2.3.4'
    end

    downloader = Cask::CurlDownloadStrategy.new(WithFakeUserAgent)
    downloader.temporary_path.stubs(:rename)
    downloader.expects(:curl).with do |*args|
      includes_args?(args, ['-A', 'Chrome/32.0.1000.00'])
    end

    shutup { downloader.fetch }
  end

  it 'adds curl args for cookies' do
    WithCookies = Class.new(Cask) do
      url 'http://host/path/to/app.dmg', :cookies => {
        :coo => 'kie',
        :mon => 'ster'
      }
      version '1.2.3.4'
    end

    downloader = Cask::CurlDownloadStrategy.new(WithCookies)
    downloader.temporary_path.stubs(:rename)
    downloader.expects(:curl).with do |*args|
      includes_args?(args, ['-b', 'coo=kie;mon=ster'])
    end

    shutup { downloader.fetch }
  end

  it 'adds curl args for referer' do
    WithReferer = Class.new(Cask) do
      url 'http://host/path/to/app.dmg',
        :referer => 'http://somehost/also'
      version '1.2.3.4'
    end

    downloader = Cask::CurlDownloadStrategy.new(WithReferer)
    downloader.temporary_path.stubs(:rename)
    downloader.expects(:curl).with do |*args|
      includes_args?(args, ['-e', 'http://somehost/also'])
    end

    shutup { downloader.fetch }
  end
end
