require 'test_helper'

describe Cask::DSL do
  it "lets you set url, homepage, and version" do
    test_cask = Cask.load('basic-cask')
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

  it "prevents the entire world from crashing when a cask includes an unknown method" do
    UnexpectedMethodCask = Class.new(Cask)
    begin
      TestHelper.must_output(self, lambda {
        UnexpectedMethodCask.class_eval do
          future_feature :not_yet_on_your_machine
        end
      }, 'Warning: Unexpected method future_feature called on UnexpectedMethodCask. Running `brew update; brew upgrade brew-cask` will likely fix it.')
    rescue Exception => e
      flunk("Wanted unexpected method to simply warn, but got exception #{e}")
    end
  end

  it "allows you to specify linkables" do
    CaskWithLinkables = Class.new(Cask)
    CaskWithLinkables.class_eval do
      link 'Foo.app'
      link 'Bar.app'
    end

    instance = CaskWithLinkables.new
    Array(instance.artifacts[:link]).sort.must_equal %w[Bar.app Foo.app]
  end

  it "allow linkables to be set to empty" do
    CaskWithNoLinkables = Class.new(Cask)

    instance = CaskWithNoLinkables.new
    Array(instance.artifacts[:link]).must_equal %w[]
  end

  it "allows caveats to be specified via a method define" do
    PlainCask = Class.new(Cask)

    instance = PlainCask.new

    instance.caveats.must_be :empty?

    CaskWithCaveats = Class.new(Cask)
    CaskWithCaveats.class_eval do
      def caveats; <<-EOS.undent
        When you install this cask, you probably want to know this.
        EOS
      end
    end

    instance = CaskWithCaveats.new

    instance.caveats.must_equal "When you install this cask, you probably want to know this.\n"
  end

  it "allows installable pkgs to be specified" do
    CaskWithInstallables = Class.new(Cask)
    CaskWithInstallables.class_eval do
      install 'Foo.pkg'
      install 'Bar.pkg'
    end

    instance = CaskWithInstallables.new
    Array(instance.artifacts[:install]).sort.must_equal %w[Bar.pkg Foo.pkg]
  end

  it 'allows :user_agent to be specified via headers' do
    options = { user_agent: 'Mozilla/25.0.1' }
    test_cask = Cask.load('with-headers')

    test_cask.headers.headers.must_equal options
    test_cask.headers.user_agent.must_equal options[:user_agent]
  end

  it 'allows :cookies to be specified via headers' do
    options = { cookies: { cookie_key: 'cookie_value' } }
    test_cask = Cask.load('with-cookies')

    test_cask.headers.headers.must_equal options
    test_cask.headers.cookies.must_equal options[:cookies]
  end

  it 'configures a default fake :user_agent via fake_user_agent' do
    options = { :user_agent => 'Chrome/32.0.1000.00' }
    test_cask = Cask.load('with-fake-user-agent')

    test_cask.headers.headers.must_equal options
    test_cask.headers.user_agent.must_equal options[:user_agent]
    test_cask.fake_user_agent.must_be_instance_of Cask::Headers
  end
end
