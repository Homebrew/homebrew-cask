require 'test_helper'

describe Cask::DSL do
  it "lets you set url, homepage, and version" do
    test_cask = Cask.load('basic-cask')
    test_cask.url.to_s.must_equal 'http://example.com/TestCask.dmg'
    test_cask.homepage.must_equal 'http://example.com/'
    test_cask.version.must_equal '1.2.3'
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
        Warning:   has been released, running
        Warning:#{' '}
        Warning:     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup
        Warning:#{' '}
        Warning:   should fix it. Otherwise you should wait to use UnexpectedMethodCask until the
        Warning:   new feature is released.
      WARNING
    rescue Exception => e
      flunk("Wanted unexpected method to simply warn, but got exception #{e}")
    end
  end

  describe "sha256 stanza" do
    it "lets you set checksum via sha256" do
      ChecksumCask = Class.new(Cask)
      ChecksumCask.class_eval do
        sha256 'imasha2'
      end
      instance = ChecksumCask.new
      instance.sums.must_equal [
                                Checksum.new(:sha2, 'imasha2')
                               ]
    end
  end

  describe "link stanza" do
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
  end

  describe "caveats stanza" do
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
  end

  describe "pkg stanza" do
    it "allows installable pkgs to be specified" do
      CaskWithInstallables = Class.new(Cask)
      CaskWithInstallables.class_eval do
        install 'Foo.pkg'
        install 'Bar.pkg'
      end

      instance = CaskWithInstallables.new
      Array(instance.artifacts[:install]).sort.must_equal [['Bar.pkg'], ['Foo.pkg']]
    end
  end

  describe "url stanza" do
    it "prevents defining multiple urls" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-two-url')
      }.must_raise(CaskInvalidError)
      err.message.must_include "'url' stanza may only appear once"
    end
  end

  describe "homepage stanza" do
    it "prevents defining multiple homepages" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-two-homepage')
      }.must_raise(CaskInvalidError)
      err.message.must_include "'homepage' stanza may only appear once"
    end
  end

  describe "version stanza" do
    it "prevents defining multiple versions" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-two-version')
      }.must_raise(CaskInvalidError)
      err.message.must_include "'version' stanza may only appear once"
    end
  end

  describe "appcast stanza" do
    it "allows appcasts to be specified" do
      cask = Cask.load('with-appcast')
      cask.appcast.to_s.must_match %r{^http}
    end

    it "prevents defining multiple appcasts" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-appcast-multiple')
      }.must_raise(CaskInvalidError)
      err.message.must_include "'appcast' stanza may only appear once"
    end

    it "refuses to load invalid appcast URLs" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-appcast-url')
      }.must_raise(CaskInvalidError)
    end

    it "refuses to load if appcast :format is invalid" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-appcast-format')
      }.must_raise(CaskInvalidError)
    end
  end

  describe "gpg stanza" do
    it "allows gpg stanza to be specified" do
      cask = Cask.load('with-gpg')
      cask.gpg.to_s.must_match %r{\S}
    end

    it "prevents specifying gpg multiple times" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-gpg-multiple')
      }.must_raise(CaskInvalidError)
      err.message.must_include "'gpg' stanza may only appear once"
    end

    it "refuses to load invalid gpg signature URLs" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-gpg-signature-url')
      }.must_raise(CaskInvalidError)
    end

    it "refuses to load invalid gpg key URLs" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-gpg-key-url')
      }.must_raise(CaskInvalidError)
    end

    it "refuses to load if gpg :type is invalid" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-gpg-type')
      }.must_raise(CaskInvalidError)
    end
  end

  describe "depends_on stanza" do
    it "allows depends_on stanza to be specified" do
      cask = Cask.load('with-depends-on')
      cask.depends_on.formula.wont_be_nil
    end

    it "refuses to load invalid depends_on key" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-depends-on-key')
      }.must_raise(CaskInvalidError)
    end
  end

  describe "license stanza" do
    it "allows the license to be specified" do
      cask = Cask.load('with-license')
      cask.license.value.must_equal :gpl
    end

    it "the license has a category" do
      cask = Cask.load('with-license')
      cask.license.category.must_equal :oss
    end

    it "prevents defining multiple license stanzas" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-license-multiple')
      }.must_raise(CaskInvalidError)
      err.message.must_include "'license' stanza may only appear once"
    end

    it "refuses to load on invalid license value" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-license-value')
      }.must_raise(CaskInvalidError)
    end
  end
end
