require 'test_helper'

def fake_alfred_preference(key, response)
  Cask::FakeSystemCommand.fake_response_for("defaults read com.runningwithcrayons.Alfred-Preferences #{key} 2>&1", response)
end

def fake_alfred_installed(installed=true)
  if installed
    fake_alfred_preference 'version', '2.0.3'
  else
    fake_alfred_preference 'version', <<-VERSION.undent
      2013-05-11 13:32:51.086 defaults[5072:707]
      The domain/default pair of (com.runningwithcrayons.Alfred-Preferences, version) does not exist
    VERSION
  end
end

describe Cask::CLI::Alfred do
  describe "status" do
    it "properly reports when alfred is not installed" do
      fake_alfred_installed(false)

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('status', Cask::FakeSystemCommand)
      }, "Warning: Could not find Alfred preferences, Alfred is probably not installed.")
    end

    it "properly reports when alfred is installed but unlinked" do
      fake_alfred_installed(true)

      fake_alfred_preference 'features.defaultresults.scope', <<-SCOPE_RESPONSE.undent
        (
          "/Applications",
          "/Library/PreferencePanes",
          "/System/Library/PreferencePanes"
        )
      SCOPE_RESPONSE

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('status', Cask::FakeSystemCommand)
      }, "==> Alfred is not linked to homebrew-cask.")
    end
  end

  describe "link" do
    it "properly reports when alfred is not installed" do
      fake_alfred_installed(false)

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('link', Cask::FakeSystemCommand)
      }, "Warning: Could not find Alfred preferences, Alfred is probably not installed.")
    end

    it "warns when alfred is already linked" do
      fake_alfred_installed(true)
      fake_alfred_preference 'features.defaultresults.scope', <<-SCOPE_RESPONSE.undent
        (
          "/Applications",
          "/Library/PreferencePanes",
          "#{Cask.caskroom}",
          "/System/Library/PreferencePanes"
        )
      SCOPE_RESPONSE

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('link', Cask::FakeSystemCommand)
      }, "Warning: Alfred is already linked to homebrew-cask.")
    end

    it "links when it needs to" do
      fake_alfred_installed(true)
      fake_alfred_preference 'features.defaultresults.scope', <<-SCOPE_RESPONSE.undent
        (
          "/Applications",
          "/Library/PreferencePanes",
          "/System/Library/PreferencePanes"
        )
      SCOPE_RESPONSE

      Cask::FakeSystemCommand.fake_response_for(
        %Q(defaults write com.runningwithcrayons.Alfred-Preferences features.defaultresults.scope "('/Applications','/Library/PreferencePanes','/System/Library/PreferencePanes','#{Cask.caskroom}')" 2>&1)
      )

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('link', Cask::FakeSystemCommand)
      }, "==> Successfully linked Alfred to homebrew-cask.")
    end

    it "links with default scopes if the preference hasn't been customized" do
      fake_alfred_installed(true)
      fake_alfred_preference 'features.defaultresults.scope', <<-SCOPE_RESPONSE.undent
        2013-05-11 13:32:51.086 defaults[5072:707]
        The domain/default pair of (com.runningwithcrayons.Alfred-Preferences, features.defaultresults.scope) does not exist
      SCOPE_RESPONSE

      expected_scopes = (Cask::CLI::Alfred::DEFAULT_SCOPES + [Cask.caskroom]).map { |s| "'#{s}'" }
      Cask::FakeSystemCommand.fake_response_for(
        %Q(defaults write com.runningwithcrayons.Alfred-Preferences features.defaultresults.scope "(#{expected_scopes.join(',')})" 2>&1)
      )

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('link', Cask::FakeSystemCommand)
      }, "==> Successfully linked Alfred to homebrew-cask.")
    end
  end

  describe "unlink" do
    it "properly reports when alfred is not installed" do
      fake_alfred_installed(false)

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('unlink', Cask::FakeSystemCommand)
      }, "Warning: Could not find Alfred preferences, Alfred is probably not installed.")
    end

    it "warns when alfred is already unlinked" do
      fake_alfred_installed(true)
      fake_alfred_preference 'features.defaultresults.scope', <<-SCOPE_RESPONSE.undent
        (
          "/Applications",
          "/Library/PreferencePanes",
          "/System/Library/PreferencePanes"
        )
      SCOPE_RESPONSE

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('unlink', Cask::FakeSystemCommand)
      }, "Warning: Alfred is already unlinked from homebrew-cask.")
    end

    it "unlinks when it needs to" do
      fake_alfred_installed(true)
      fake_alfred_preference 'features.defaultresults.scope', <<-SCOPE_RESPONSE.undent
        (
          "/Applications",
          "/Library/PreferencePanes",
          "#{Cask.caskroom}",
          "/System/Library/PreferencePanes"
        )
      SCOPE_RESPONSE

      Cask::FakeSystemCommand.fake_response_for(
        %Q(defaults write com.runningwithcrayons.Alfred-Preferences features.defaultresults.scope "('/Applications','/Library/PreferencePanes','/System/Library/PreferencePanes')" 2>&1)
      )

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('unlink', Cask::FakeSystemCommand)
      }, "==> Successfully unlinked Alfred from homebrew-cask.")
    end
  end
end
