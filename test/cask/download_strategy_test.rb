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

  describe Cask::SubversionDownloadStrategy do
    it 'recognizes the SVN download strategy' do
      cask = Cask.load('svn-download-cask')
      cask.url.using.must_equal :svn
      downloader = Cask::SubversionDownloadStrategy.new(cask, Cask::FakeSystemCommand)
      downloader.must_respond_to(:fetch)
    end

    it 'properly assigns a name and Resource based on the cask' do
      cask = Cask.load('svn-download-cask')

      downloader = Cask::SubversionDownloadStrategy.new(cask, Cask::FakeSystemCommand)
      downloader.name.must_equal 'svn-download-cask'
      downloader.resource.name.must_equal 'svn-download-cask'
      downloader.resource.url.must_equal cask.url.to_s
      downloader.resource.version.to_s.must_equal cask.version
    end

    it 'returns a tarball path on fetch' do
      cask = Cask.load('svn-download-cask')
      downloader = Cask::SubversionDownloadStrategy.new(cask, Cask::FakeSystemCommand)
      downloader.stubs(:fetch_repo)
      downloader.stubs(:compress)
      shutup { downloader.fetch }.must_equal downloader.tarball_path
    end

    it 'calls fetch_repo with default arguments for a simple Cask' do
      cask = Cask.load('svn-download-cask')
      downloader = Cask::SubversionDownloadStrategy.new(cask, Cask::FakeSystemCommand)
      downloader.stubs(:compress)
      downloader.expects(:fetch_repo).with(
                                           downloader.cached_location,
                                           cask.url.to_s
                                           )
      shutup { downloader.fetch }.must_equal downloader.tarball_path
    end

    it 'calls svn with default arguments for a simple Cask' do
      cask = Cask.load('svn-download-cask')
      downloader = Cask::SubversionDownloadStrategy.new(cask, Cask::FakeSystemCommand)
      Cask::FakeSystemCommand.expects_command([
                                               '/usr/bin/svn',
                                               'checkout',
                                               '--force',
                                               '--config-option',
                                               'config:miscellany:use-commit-times=yes',
                                               cask.url.to_s,
                                               downloader.cached_location,
                                              ])
      downloader.stubs(:compress)
      shutup { downloader.fetch }.must_equal downloader.tarball_path
    end

    it 'adds svn arguments for :trust_cert' do
      cask = Cask.load('svn-download-trust-cask')
      downloader = Cask::SubversionDownloadStrategy.new(cask, Cask::FakeSystemCommand)
      Cask::FakeSystemCommand.expects_command([
                                               '/usr/bin/svn',
                                               'checkout',
                                               '--force',
                                               '--config-option',
                                               'config:miscellany:use-commit-times=yes',
                                               '--trust-server-cert',
                                               '--non-interactive',
                                               cask.url.to_s,
                                               downloader.cached_location,
                                              ])
      downloader.stubs(:compress)
      shutup { downloader.fetch }.must_equal downloader.tarball_path
    end

    it 'adds svn arguments for :revision' do
      cask = Cask.load('svn-download-revision-cask')
      downloader = Cask::SubversionDownloadStrategy.new(cask, Cask::FakeSystemCommand)
      Cask::FakeSystemCommand.expects_command([
                                               '/usr/bin/svn',
                                               'checkout',
                                               '--force',
                                               '--config-option',
                                               'config:miscellany:use-commit-times=yes',
                                               cask.url.to_s,
                                               downloader.cached_location,
                                               '-r',
                                               '10',
                                              ])
      downloader.stubs(:compress)
      shutup { downloader.fetch }.must_equal downloader.tarball_path
    end

    it 'runs tar to serialize svn downloads' do
      cask = Cask.load('svn-download-cask')
      downloader = Cask::SubversionDownloadStrategy.new(cask, Cask::FakeSystemCommand)
      # special mocking required for tar to have something to work with
      def downloader.fetch_repo(target, url, revision=nil, ignore_externals=false)
        target.mkpath
      end
      Cask::FakeSystemCommand.expects_command([
                                               '/usr/bin/tar',
                                               '-s/^\\.//',
                                               '--exclude',
                                               '.svn',
                                               '-cf',
                                               downloader.tarball_path,
                                               '--',
                                               '.',
                                              ])
      shutup { downloader.fetch }.must_equal downloader.tarball_path
    end
  end
  # does not work yet, because (for unknown reasons), the tar command
  # returns an error code when running under the test suite
  # it 'creates a tarball matching the expected checksum' do
  #   cask = Cask.load('svn-download-check-cask')
  #   downloader = Cask::SubversionDownloadStrategy.new(cask)
  #   # special mocking required for tar to have something to work with
  #   def downloader.fetch_repo(target, url, revision=nil, ignore_externals=false)
  #     target.mkpath
  #     FileUtils.touch(target.join('empty_file.txt'))
  #     File.utime(1000,1000,target.join('empty_file.txt'))
  #   end
  #   shutup { downloader.fetch }.must_equal downloader.tarball_path
  #   d = Cask::Download.new(cask)
  #   d.send(:_check_sums, downloader.tarball_path, cask.sums)
  # end
end
