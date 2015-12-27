require 'spec_helper'

describe 'download strategies' do
  let(:url) { 'http://example.com/cask.dmg' }
  let(:url_options) { Hash.new }
  let(:cask) {
    class_double(Hbc::Cask,
      :token => 'some-cask',
      :url => Hbc::URL.new(url, url_options),
      :version => '1.2.3.4'
    )
  }

  describe Hbc::CurlDownloadStrategy do
    let(:downloader) { Hbc::CurlDownloadStrategy.new(cask) }

    before do
      allow(downloader.temporary_path).to receive(:rename)
    end

    it 'properly assigns a name and uri based on the Cask' do
      expect(downloader.name).to eq('some-cask')
      expect(downloader.url).to eq('http://example.com/cask.dmg')
      expect(downloader.version.to_s).to eq('1.2.3.4')
    end

    it 'calls curl with default arguments for a simple Cask' do
      allow(downloader).to receive(:curl)

      shutup do
        downloader.fetch
      end

      expect(downloader).to have_received(:curl).with(
        cask.url.to_s,
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

        expect(curl_args.each_cons(2)).to include(['-A', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10) http://caskroom.io'])
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

  describe Hbc::CurlPostDownloadStrategy do
    let(:downloader) { Hbc::CurlPostDownloadStrategy.new(cask) }

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
end
