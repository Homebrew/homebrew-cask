require 'spec_helper'

describe 'download strategies' do
  let(:url) { 'http://example.com/cask.dmg' }
  let(:url_options) { Hash.new }
  let(:cask) {
    class_double(Cask,
      :title => 'some-cask',
      :url => Cask::URL.new(url, url_options),
      :version => '1.2.3.4'
    )
  }

  describe Cask::CurlDownloadStrategy do
    let(:downloader) { Cask::CurlDownloadStrategy.new(cask) }

    before do
      allow(downloader.temporary_path).to receive(:rename)
    end

    it 'properly assigns a name and Resource based on the Cask' do
      expect(downloader.name).to eq('some-cask')
      expect(downloader.resource.name).to eq('some-cask')
      expect(downloader.resource.url).to eq('http://example.com/cask.dmg')
      expect(downloader.resource.version.to_s).to eq('1.2.3.4')
    end

    it 'calls curl with default arguments for a simple Cask' do
      allow(downloader).to receive(:curl)

      shutup do
        downloader.fetch
      end

      expect(downloader).to have_received(:curl).with(
        cask.url,
        '-C', 0,
        '-o', kind_of(Pathname)
      )
    end

    context 'with an explicit user agent' do
      let(:url_options) {{
        :user_agent => 'Mozilla/25.0.1'
      }}

      it 'adds the appropriate curl args' do
        curl_args = []
        allow(downloader).to receive(:curl) { |*args| curl_args = args }

        shutup { downloader.fetch }

        expect(curl_args.each_cons(2)).to include(['-A', 'Mozilla/25.0.1'])
      end
    end

    context 'with a generalized fake user agent' do
      let(:url_options) {{
        :user_agent => :fake
      }}

      it 'adds the appropriate curl args' do
        curl_args = []
        allow(downloader).to receive(:curl) { |*args| curl_args = args }

        shutup { downloader.fetch }

        expect(curl_args.each_cons(2)).to include(['-A', 'Chrome/32.0.1000.00'])
      end
    end

    context 'with cookies set' do
      let(:url_options) {{
        :cookies => {
          :coo => 'kie',
          :mon => 'ster'
        }
      }}

      it 'adds curl args for cookies' do
        curl_args = []
        allow(downloader).to receive(:curl) { |*args| curl_args = args }

        shutup { downloader.fetch }

        expect(curl_args.each_cons(2)).to include(['-b', 'coo=kie;mon=ster'])
      end
    end

    context 'with referer set' do
      let(:url_options) {{
        :referer => 'http://somehost/also'
      }}

      it 'adds curl args for referer' do
        curl_args = []
        allow(downloader).to receive(:curl) { |*args| curl_args = args }

        shutup { downloader.fetch }

        expect(curl_args.each_cons(2)).to include(['-e', 'http://somehost/also'])
      end
    end
  end

  describe Cask::CurlPostDownloadStrategy do
    let(:downloader) { Cask::CurlPostDownloadStrategy.new(cask) }

    before do
      allow(downloader.temporary_path).to receive(:rename)
    end

    context 'with :using and :data specified' do
      let(:url_options) {{
        :using => :post,
        :data => {
          :form => 'data',
          :is => 'good'
        }
      }}
      it 'adds curl args for post arguments' do
        curl_args = []
        allow(downloader).to receive(:curl) { |*args| curl_args = args }

        shutup { downloader.fetch }

        expect(curl_args.each_cons(2)).to include(['-d', 'form=data'])
        expect(curl_args.each_cons(2)).to include(['-d', 'is=good'])
      end
    end

    context 'with :using but no :data' do
      let(:url_options) {{
        :using => :post
      }}

      it 'adds curl args for a POST request' do
        curl_args = []
        allow(downloader).to receive(:curl) { |*args| curl_args = args }

        shutup { downloader.fetch }

        expect(curl_args.each_cons(2)).to include(['-X', 'POST'])
      end
    end
  end

  describe Cask::SubversionDownloadStrategy do
    let(:url_options) {{
      :using => :svn
    }}
    let(:fake_system_command) { class_double(Cask::SystemCommand) }
    let(:downloader) { Cask::SubversionDownloadStrategy.new(cask, fake_system_command) }
    before do
      allow(fake_system_command).to receive(:run!)
    end

    it 'returns a tarball path on fetch' do
      allow(downloader).to receive(:compress)
      allow(downloader).to receive(:fetch_repo)

      retval = shutup { downloader.fetch }

      expect(retval).to equal(downloader.tarball_path)
    end

    it 'calls fetch_repo with default arguments for a simple Cask' do
      allow(downloader).to receive(:compress)
      allow(downloader).to receive(:fetch_repo)

      shutup { downloader.fetch }

      expect(downloader).to have_received(:fetch_repo).with(
        downloader.cached_location,
        cask.url.to_s
      )
    end

    it 'calls svn with default arguments for a simple Cask' do
      allow(downloader).to receive(:compress)

      shutup { downloader.fetch }

      expect(fake_system_command).to have_received(:run!).with(
        '/usr/bin/svn',
        hash_including(:args => [
          'checkout',
          '--force',
          '--config-option',
          'config:miscellany:use-commit-times=yes',
          cask.url.to_s,
          downloader.cached_location]))

    end

    context 'with trust_cert set on the URL' do
      let(:url_options) {{
        :using => :svn,
        :trust_cert => true
      }}

      it 'adds svn arguments for :trust_cert' do
        allow(downloader).to receive(:compress)

        shutup { downloader.fetch }

        expect(fake_system_command).to have_received(:run!).with(
          '/usr/bin/svn',
          hash_including(:args => [
          'checkout',
          '--force',
          '--config-option',
          'config:miscellany:use-commit-times=yes',
          '--trust-server-cert',
          '--non-interactive',
          cask.url.to_s,
          downloader.cached_location,
        ]))
      end
    end

    context 'with :revision set on url' do
      let(:url_options) {{
        :using => :svn,
        :revision => '10'
      }}

      it 'adds svn arguments for :revision' do
        allow(downloader).to receive(:compress)

        shutup { downloader.fetch }

        expect(fake_system_command).to have_received(:run!).with(
          '/usr/bin/svn',
          hash_including(:args => [
          'checkout',
          '--force',
          '--config-option',
          'config:miscellany:use-commit-times=yes',
          cask.url.to_s,
          downloader.cached_location,
          '-r',
          '10',
        ]))

      end
    end

    it 'runs tar to serialize svn downloads' do
      # sneaky stub to remake the directory, since homebrew code removes it
      # before tar is called
      allow(downloader).to receive(:fetch_repo) {
        downloader.cached_location.mkdir
      }

      shutup { downloader.fetch }

      expect(fake_system_command).to have_received(:run!).with(
        '/usr/bin/tar',
        hash_including(:args => [
        '-s/^\\.//',
        '--exclude',
        '.svn',
        '-cf',
        downloader.tarball_path,
        '--',
        '.',
      ]))
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
  #   expect(shutup { downloader.fetch }).to equal(downloader.tarball_path)
  #   d = Cask::Download.new(cask)
  #   d.send(:_check_sums, downloader.tarball_path, cask.sums)
  # end
end
