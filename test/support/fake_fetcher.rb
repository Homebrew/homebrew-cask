class Cask::FakeFetcher
  def self.fake_response_for(url, response)
    @responses[url] = response
  end

  def self.head(url)
    @responses ||= {}
    unless @responses.key?(url)
      fail("no response faked for #{url.inspect}")
    end
    @responses[url]
  end

  def self.init
    @responses = {}
  end

  def self.clear
    @responses = {}
  end
end

module FakeFetcherHooks
  def before_setup
    super
    Cask::FakeFetcher.init
  end

  def after_teardown
    super
    Cask::FakeFetcher.clear
  end
end

class MiniTest::Spec
  include FakeFetcherHooks
end
