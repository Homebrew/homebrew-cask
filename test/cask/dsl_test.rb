require 'test_helper'

describe Cask::DSL do
  it "lets you set url, homepage, and version" do
    test_cask = Cask.load('basic-cask')
    test_cask.url.to_s.must_equal 'http://example.com/TestCask.dmg'
    test_cask.homepage.must_equal 'http://example.com/'
    test_cask.version.must_equal '1.2.3'
  end

  it "prevents the entire world from crashing when a Cask includes an unknown method" do
    UnexpectedMethodCask = Class.new(Cask)
    begin
      TestHelper.must_output(self, lambda {
        UnexpectedMethodCask.class_eval do
          future_feature :not_yet_on_your_machine
        end
      }, <<-WARNING.undent.chomp)
        Warning: Unexpected method 'future_feature' called on Cask unexpected-method-cask.
        Warning:#{' '}
        Warning:   If you are working on unexpected-method-cask, this may point to a typo. Otherwise
        Warning:   it probably means this Cask is using a new feature. If that feature
        Warning:   has been released, running
        Warning:#{' '}
        Warning:     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup
        Warning:#{' '}
        Warning:   should fix it. Otherwise you should wait to use unexpected-method-cask until the
        Warning:   new feature is released.
      WARNING
    rescue Exception => e
      flunk("Wanted unexpected method to simply warn, but got exception #{e}")
    end
  end

  describe "header line" do
    it "requires a valid header format" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-header-format')
      }.must_raise(CaskInvalidError)
      err.message.must_include 'Bad header line: parse failed'
    end

    it "requires the header token to match the file name" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-header-token-mismatch')
      }.must_raise(CaskInvalidError)
      err.message.must_include 'Bad header line:'
      err.message.must_include 'does not match file name'
    end

    it "requires a valid minimum DSL version in the header" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-header-version')
      }.must_raise(CaskInvalidError)
      err.message.must_include 'Bad header line:'
      err.message.must_include 'is less than required minimum version'
    end
  end

  describe "name stanza" do
    it "lets you set the full name via a name stanza" do
      NameCask = Class.new(Cask)
      NameCask.class_eval do
        name 'Proper Name'
      end
      instance = NameCask.new
      instance.full_name.must_equal [
                                     'Proper Name',
                                    ]
    end

    it "Accepts an array value to the name stanza" do
      ArrayNameCask = Class.new(Cask)
      ArrayNameCask.class_eval do
        name ['Proper Name', 'Alternate Name']
      end
      instance = ArrayNameCask.new
      instance.full_name.must_equal [
                                     'Proper Name',
                                     'Alternate Name',
                                    ]
    end

    it "Accepts multiple name stanzas" do
      MultiNameCask = Class.new(Cask)
      MultiNameCask.class_eval do
        name 'Proper Name'
        name 'Alternate Name'
      end
      instance = MultiNameCask.new
      # the sort is a hack to deal with Ruby 1.8 oddities
      instance.full_name.sort.must_equal [
                                          'Proper Name',
                                          'Alternate Name',
                                         ].sort
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

  describe "app stanza" do
    it "allows you to specify app stanzas" do
      CaskWithApps = Class.new(Cask)
      CaskWithApps.class_eval do
        app 'Foo.app'
        app 'Bar.app'
      end

      instance = CaskWithApps.new
      Array(instance.artifacts[:app]).sort.must_equal [['Bar.app'], ['Foo.app']]
    end

    it "allow app stanzas to be empty" do
      CaskWithNoApps = Class.new(Cask)

      instance = CaskWithNoApps.new
      Array(instance.artifacts[:app]).must_equal %w[]
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
          When you install this Cask, you probably want to know this.
          EOS
        end
      end

      instance = CaskWithCaveats.new

      instance.caveats.must_equal "When you install this Cask, you probably want to know this.\n"
    end
  end

  describe "pkg stanza" do
    it "allows installable pkgs to be specified" do
      CaskWithPkgs = Class.new(Cask)
      CaskWithPkgs.class_eval do
        pkg 'Foo.pkg'
        pkg 'Bar.pkg'
      end

      instance = CaskWithPkgs.new
      Array(instance.artifacts[:pkg]).sort.must_equal [['Bar.pkg'], ['Foo.pkg']]
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

    it "allows gpg stanza to be specified with :key_url" do
      cask = Cask.load('with-gpg-key-url')
      cask.gpg.to_s.must_match %r{\S}
    end

    it "prevents specifying gpg stanza multiple times" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-gpg-multiple-stanzas')
      }.must_raise(CaskInvalidError)
      err.message.must_include "'gpg' stanza may only appear once"
    end

    it "prevents missing gpg key parameters" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-gpg-missing-key')
      }.must_raise(CaskInvalidError)
      err.message.must_include "'gpg' stanza must include exactly one"
    end

    it "prevents conflicting gpg key parameters" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-gpg-conflicting-keys')
      }.must_raise(CaskInvalidError)
      err.message.must_include "'gpg' stanza must include exactly one"
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

    it "refuses to load invalid gpg key IDs" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-gpg-key-id')
      }.must_raise(CaskInvalidError)
    end

    it "refuses to load if gpg parameter is unknown" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-gpg-parameter')
      }.must_raise(CaskInvalidError)
    end
  end

  describe "depends_on stanza" do
    it "refuses to load with an invalid depends_on key" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-depends-on-key')
      }.must_raise(CaskInvalidError)
    end
  end

  describe "depends_on :formula" do
    it "allows depends_on :formula to be specified" do
      cask = Cask.load('with-depends-on-formula')
      cask.depends_on.formula.wont_be_nil
    end

    it "allows multiple depends_on :formula to be specified" do
      cask = Cask.load('with-depends-on-formula')
      cask.depends_on.formula.wont_be_nil
    end
  end

  describe "depends_on :macos" do
    it "allows depends_on :macos to be specified" do
      cask = Cask.load('with-depends-on-macos-string')
      cask.depends_on.macos.wont_be_nil
    end
    it "refuses to load with an invalid depends_on :macos value" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-depends-on-macos-bad-release')
      }.must_raise(CaskInvalidError)
    end
    it "refuses to load with conflicting depends_on :macos forms" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-depends-on-macos-conflicting-forms')
      }.must_raise(CaskInvalidError)
    end
  end

  describe "depends_on :arch" do
    it "allows depends_on :arch to be specified" do
      cask = Cask.load('with-depends-on-arch')
      cask.depends_on.arch.wont_be_nil
    end
    it "refuses to load with an invalid depends_on :arch value" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-depends-on-arch-value')
      }.must_raise(CaskInvalidError)
    end
  end

  describe "depends_on :x11" do
    it "allows depends_on :x11 to be specified" do
      cask = Cask.load('with-depends-on-x11')
      cask.depends_on.x11.wont_be_nil
    end
    it "refuses to load with an invalid depends_on :x11 value" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-depends-on-x11-value')
      }.must_raise(CaskInvalidError)
    end
  end

  describe "conflicts_with stanza" do
    it "allows conflicts_with stanza to be specified" do
      cask = Cask.load('with-conflicts-with')
      cask.conflicts_with.formula.wont_be_nil
    end

    it "refuses to load invalid conflicts_with key" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-conflicts-with-key')
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

  describe "installer stanza" do
    it "allows installer :script to be specified" do
      cask = Cask.load('with-installer-script')
      # the sorts are needed to force the order for Ruby 1.8
      cask.artifacts[:installer].sort{ |a,b| a.script[:executable] <=> b.script[:executable] }.first.script[:executable].must_equal '/usr/bin/false'
      cask.artifacts[:installer].sort{ |a,b| a.script[:executable] <=> b.script[:executable] }.first.script[:args].must_equal ['--flag']
      cask.artifacts[:installer].sort{ |a,b| a.script[:executable] <=> b.script[:executable] }.to_a[1].script[:executable].must_equal '/usr/bin/true'
      cask.artifacts[:installer].sort{ |a,b| a.script[:executable] <=> b.script[:executable] }.to_a[1].script[:args].must_equal ['--flag']
    end
    it "allows installer :manual to be specified" do
      cask = Cask.load('with-installer-manual')
      cask.artifacts[:installer].first.manual.must_equal 'Caffeine.app'
    end
  end

  describe "tags stanza" do
    it "allows tags stanza to be specified" do
      cask = Cask.load('with-tags')
      cask.tags.to_s.must_match %r{\S}
    end

    it "prevents specifying tags multiple times" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-tags-multiple')
      }.must_raise(CaskInvalidError)
      err.message.must_include "'tags' stanza may only appear once"
    end

    it "refuses to load if tags key is invalid" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-tags-key')
      }.must_raise(CaskInvalidError)
    end
  end

  describe "stage_only stanza" do
    it "allows stage_only stanza to be specified" do
      cask = Cask.load('stage-only')
      cask.artifacts[:stage_only].first.must_equal [true]
    end

    it "prevents specifying stage_only with other activatables" do
      err = lambda {
        invalid_cask = Cask.load('invalid/invalid-stage-only-conflict')
      }.must_raise(CaskInvalidError)
      err.message.must_include "'stage_only' must be the only activatable artifact"
    end
  end
end
