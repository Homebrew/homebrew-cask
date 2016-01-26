require 'test_helper'

describe Hbc::DSL do
  it "lets you set url, homepage, and version" do
    test_cask = Hbc.load('basic-cask')
    test_cask.url.to_s.must_equal 'http://example.com/TestCask.dmg'
    test_cask.homepage.must_equal 'http://example.com/'
    test_cask.version.to_s.must_equal '1.2.3'
  end

  describe "when a Cask includes an unknown method" do
    attempt_unknown_method = nil

    before do
      attempt_unknown_method = lambda {
        Hbc::Cask.new('unexpected-method-cask') do
          future_feature :not_yet_on_your_machine
        end
      }
    end

    it "prints a warning that it has encountered an unexpected method" do
      expected = r = Regexp.compile(<<-EOREGEX.undent.lines.map(&:chomp).join(''))
        (?m)
        Warning:
        .*
        Unexpected method 'future_feature' called on Cask unexpected-method-cask\\.
        .*
        brew update; brew cleanup; brew cask cleanup
        .*
        https://github.com/caskroom/homebrew-cask#reporting-bugs
      EOREGEX

      TestHelper.must_output(self, attempt_unknown_method, expected)
    end

    it "will simply warn, not throw an exception" do
      begin
        capture_subprocess_io { attempt_unknown_method.call }
      rescue Exception => e
        flunk("Wanted unexpected method to simply warn, but got exception #{e}")
      end
    end
  end

  describe "header line" do
    it "requires a valid header format" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-header-format')
      }.must_raise(SyntaxError)
    end

    it "requires the header token to match the file name" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-header-token-mismatch')
      }.must_raise(Hbc::CaskTokenDoesNotMatchError)
      err.message.must_include 'Bad header line:'
      err.message.must_include 'does not match file name'
    end

    it "does not require a DSL version in the header" do
      test_cask = Hbc.load('no-dsl-version')
      test_cask.url.to_s.must_equal 'http://example.com/TestCask.dmg'
      test_cask.homepage.must_equal 'http://example.com/'
      test_cask.version.to_s.must_equal '1.2.3'
    end
  end

  describe "name stanza" do
    it "lets you set the full name via a name stanza" do
      cask = Hbc::Cask.new('name-cask') do
        name 'Proper Name'
      end

      cask.name.must_equal [
                             'Proper Name',
                           ]
    end

    it "Accepts an array value to the name stanza" do
      cask = Hbc::Cask.new('array-name-cask') do
        name ['Proper Name', 'Alternate Name']
      end

      cask.name.must_equal [
                             'Proper Name',
                             'Alternate Name',
                           ]
    end

    it "Accepts multiple name stanzas" do
      cask = Hbc::Cask.new('multi-name-cask') do
        name 'Proper Name'
        name 'Alternate Name'
      end

      cask.name.must_equal [
                             'Proper Name',
                             'Alternate Name',
                           ]
    end
  end

  describe "sha256 stanza" do
    it "lets you set checksum via sha256" do
      cask = Hbc::Cask.new('checksum-cask') do
        sha256 'imasha2'
      end

      cask.sha256.must_equal 'imasha2'
    end
  end

  describe "app stanza" do
    it "allows you to specify app stanzas" do
      cask = Hbc::Cask.new('cask-with-apps') do
        app 'Foo.app'
        app 'Bar.app'
      end

      Array(cask.artifacts[:app]).must_equal [['Foo.app'], ['Bar.app']]
    end

    it "allow app stanzas to be empty" do
      cask = Hbc::Cask.new('cask-with-no-apps')
      Array(cask.artifacts[:app]).must_equal %w[]
    end
  end

  describe "caveats stanza" do
    it "allows caveats to be specified via a method define" do
      cask = Hbc::Cask.new('plain-cask')

      cask.caveats.must_be :empty?

      cask = Hbc::Cask.new('cask-with-caveats') do
        def caveats; <<-EOS.undent
          When you install this Cask, you probably want to know this.
          EOS
        end
      end


      cask.caveats.must_equal "When you install this Cask, you probably want to know this.\n"
    end
  end

  describe "pkg stanza" do
    it "allows installable pkgs to be specified" do
      cask = Hbc::Cask.new('cask-with-pkgs') do
        pkg 'Foo.pkg'
        pkg 'Bar.pkg'
      end

      Array(cask.artifacts[:pkg]).must_equal [['Foo.pkg'], ['Bar.pkg']]
    end
  end

  describe "url stanza" do
    it "prevents defining multiple urls" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-two-url')
      }.must_raise(Hbc::CaskInvalidError)
      err.message.must_include "'url' stanza may only appear once"
    end
  end

  describe "homepage stanza" do
    it "prevents defining multiple homepages" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-two-homepage')
      }.must_raise(Hbc::CaskInvalidError)
      err.message.must_include "'homepage' stanza may only appear once"
    end
  end

  describe "version stanza" do
    it "prevents defining multiple versions" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-two-version')
      }.must_raise(Hbc::CaskInvalidError)
      err.message.must_include "'version' stanza may only appear once"
    end
  end

  describe "appcast stanza" do
    it "allows appcasts to be specified" do
      cask = Hbc.load('with-appcast')
      cask.appcast.to_s.must_match %r{^http}
    end

    it "prevents defining multiple appcasts" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-appcast-multiple')
      }.must_raise(Hbc::CaskInvalidError)
      err.message.must_include "'appcast' stanza may only appear once"
    end

    it "refuses to load invalid appcast URLs" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-appcast-url')
      }.must_raise(Hbc::CaskInvalidError)
    end
  end

  describe "gpg stanza" do
    it "allows gpg stanza to be specified" do
      cask = Hbc.load('with-gpg')
      cask.gpg.to_s.must_match %r{\S}
    end

    it "allows gpg stanza to be specified with :key_url" do
      cask = Hbc.load('with-gpg-key-url')
      cask.gpg.to_s.must_match %r{\S}
    end

    it "prevents specifying gpg stanza multiple times" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-gpg-multiple-stanzas')
      }.must_raise(Hbc::CaskInvalidError)
      err.message.must_include "'gpg' stanza may only appear once"
    end

    it "prevents missing gpg key parameters" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-gpg-missing-key')
      }.must_raise(Hbc::CaskInvalidError)
      err.message.must_include "'gpg' stanza must include exactly one"
    end

    it "prevents conflicting gpg key parameters" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-gpg-conflicting-keys')
      }.must_raise(Hbc::CaskInvalidError)
      err.message.must_include "'gpg' stanza must include exactly one"
    end

    it "refuses to load invalid gpg signature URLs" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-gpg-signature-url')
      }.must_raise(Hbc::CaskInvalidError)
    end

    it "refuses to load invalid gpg key URLs" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-gpg-key-url')
      }.must_raise(Hbc::CaskInvalidError)
    end

    it "refuses to load invalid gpg key IDs" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-gpg-key-id')
      }.must_raise(Hbc::CaskInvalidError)
    end

    it "refuses to load if gpg parameter is unknown" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-gpg-parameter')
      }.must_raise(Hbc::CaskInvalidError)
    end
  end

  describe "depends_on stanza" do
    it "refuses to load with an invalid depends_on key" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-depends-on-key')
      }.must_raise(Hbc::CaskInvalidError)
    end
  end

  describe "depends_on :formula" do
    it "allows depends_on :formula to be specified" do
      cask = Hbc.load('with-depends-on-formula')
      cask.depends_on.formula.wont_be_nil
    end

    it "allows multiple depends_on :formula to be specified" do
      cask = Hbc.load('with-depends-on-formula-multiple')
      cask.depends_on.formula.wont_be_nil
    end
  end

  describe "depends_on :cask" do
    it "allows depends_on :cask to be specified" do
      cask = Hbc.load('with-depends-on-cask')
      cask.depends_on.cask.wont_be_nil
    end

    it "allows multiple depends_on :cask to be specified" do
      cask = Hbc.load('with-depends-on-cask-multiple')
      cask.depends_on.cask.wont_be_nil
    end
  end

  describe "depends_on :macos" do
    it "allows depends_on :macos to be specified" do
      cask = Hbc.load('with-depends-on-macos-string')
      cask.depends_on.macos.wont_be_nil
    end
    it "refuses to load with an invalid depends_on :macos value" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-depends-on-macos-bad-release')
      }.must_raise(Hbc::CaskInvalidError)
    end
    it "refuses to load with conflicting depends_on :macos forms" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-depends-on-macos-conflicting-forms')
      }.must_raise(Hbc::CaskInvalidError)
    end
  end

  describe "depends_on :arch" do
    it "allows depends_on :arch to be specified" do
      cask = Hbc.load('with-depends-on-arch')
      cask.depends_on.arch.wont_be_nil
    end
    it "refuses to load with an invalid depends_on :arch value" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-depends-on-arch-value')
      }.must_raise(Hbc::CaskInvalidError)
    end
  end

  describe "depends_on :x11" do
    it "allows depends_on :x11 to be specified" do
      cask = Hbc.load('with-depends-on-x11')
      cask.depends_on.x11.wont_be_nil
    end
    it "refuses to load with an invalid depends_on :x11 value" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-depends-on-x11-value')
      }.must_raise(Hbc::CaskInvalidError)
    end
  end

  describe "conflicts_with stanza" do
    it "allows conflicts_with stanza to be specified" do
      cask = Hbc.load('with-conflicts-with')
      cask.conflicts_with.formula.wont_be_nil
    end

    it "refuses to load invalid conflicts_with key" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-conflicts-with-key')
      }.must_raise(Hbc::CaskInvalidError)
    end
  end

  describe "license stanza" do
    it "allows the license to be specified" do
      cask = Hbc.load('with-license')
      cask.license.value.must_equal :gpl
    end

    it "the license has a category" do
      cask = Hbc.load('with-license')
      cask.license.category.must_equal :oss
    end

    it "prevents defining multiple license stanzas" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-license-multiple')
      }.must_raise(Hbc::CaskInvalidError)
      err.message.must_include "'license' stanza may only appear once"
    end

    it "refuses to load on invalid license value" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-license-value')
      }.must_raise(Hbc::CaskInvalidError)
    end
  end

  describe "installer stanza" do
    it "allows installer :script to be specified" do
      cask = Hbc.load('with-installer-script')
      cask.artifacts[:installer].first.script[:executable].must_equal '/usr/bin/true'
      cask.artifacts[:installer].first.script[:args].must_equal ['--flag']
      cask.artifacts[:installer].to_a[1].script[:executable].must_equal '/usr/bin/false'
      cask.artifacts[:installer].to_a[1].script[:args].must_equal ['--flag']
    end
    it "allows installer :manual to be specified" do
      cask = Hbc.load('with-installer-manual')
      cask.artifacts[:installer].first.manual.must_equal 'Caffeine.app'
    end
  end

  describe "stage_only stanza" do
    it "allows stage_only stanza to be specified" do
      cask = Hbc.load('stage-only')
      cask.artifacts[:stage_only].first.must_equal [true]
    end

    it "prevents specifying stage_only with other activatables" do
      err = lambda {
        invalid_cask = Hbc.load('invalid/invalid-stage-only-conflict')
      }.must_raise(Hbc::CaskInvalidError)
      err.message.must_include "'stage_only' must be the only activatable artifact"
    end
  end

  describe "auto_updates stanza" do
    it "allows auto_updates stanza to be specified" do
      cask = Hbc.load('auto-updates')
      cask.auto_updates.must_equal true
    end
  end
end
