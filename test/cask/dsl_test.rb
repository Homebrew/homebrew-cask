require 'test_helper'

describe Cask::DSL do
  it "lets you set url, homepage, and version" do
    test_cask = Cask.load('basic-cask')
    test_cask.url.to_s.must_equal 'http://example.com/TestCask.dmg'
    test_cask.homepage.must_equal 'http://example.com/'
    test_cask.version.must_equal '1.2.3'
  end

  it "lets you set checksum via sha1 and/or sha256" do
    ChecksumCask = Class.new(Cask)
    ChecksumCask.class_eval do
      sha1 'imasha1'
      sha256 'imasha2'
    end
    instance = ChecksumCask.new
    instance.sums.must_equal [
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
      }, <<-WARNING.undent.chomp)
        Warning: Unexpected method 'future_feature' called on UnexpectedMethodCask.
        Warning:#{' '}
        Warning:   If you are working on UnexpectedMethodCask, this may point to a typo. Otherwise
        Warning:   it probably means this Cask is using a new feature. If that feature
        Warning:   has been released, running `brew update; brew upgrade brew-cask`
        Warning:   should fix it. Otherwise you should wait to use UnexpectedMethodCask until the
        Warning:   new feature is released.
      WARNING
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
    Array(instance.artifacts[:link]).sort.must_equal [['Bar.app'], ['Foo.app']]
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
    Array(instance.artifacts[:install]).sort.must_equal [['Bar.pkg'], ['Foo.pkg']]
  end

  it "prevents defining multiple urls" do
    err = lambda {
      invalid_cask = Cask.load('invalid/invalid-two-url')
    }.must_raise(CaskInvalidError)
    err.message.must_include "'url' stanza may only appear once"
  end

  it "prevents defining multiple homepages" do
    err = lambda {
      invalid_cask = Cask.load('invalid/invalid-two-homepage')
    }.must_raise(CaskInvalidError)
    err.message.must_include "'homepage' stanza may only appear once"
  end

  it "prevents defining multiple versions" do
    err = lambda {
      invalid_cask = Cask.load('invalid/invalid-two-version')
    }.must_raise(CaskInvalidError)
    err.message.must_include "'version' stanza may only appear once"
  end

  it "prevents defining conflicting checksums (first order)" do
    err = lambda {
      invalid_cask = Cask.load('invalid/invalid-checksum-conflict1')
    }.must_raise(CaskInvalidError)
    err.message.must_include "'no_checksum' stanza conflicts with"
  end

  it "prevents defining conflicting checksums (second order)" do
    err = lambda {
      invalid_cask = Cask.load('invalid/invalid-checksum-conflict2')
    }.must_raise(CaskInvalidError)
    err.message.must_include "'no_checksum' stanza conflicts with"
  end
end
