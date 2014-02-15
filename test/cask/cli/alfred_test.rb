require 'test_helper'

def fake_alfred_preference(key, response)
  Cask::FakeSystemCommand.stubs_command(['/usr/bin/defaults', 'read', 'com.runningwithcrayons.Alfred-Preferences', key], response)
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
      }, "Warning: Could not find Alfred 2 preferences, Alfred 2 is probably not installed.")
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
      }, "Warning: Could not find Alfred 2 preferences, Alfred 2 is probably not installed.")
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

      Cask::FakeSystemCommand.stubs_command(
        ['/usr/bin/defaults', 'write', 'com.runningwithcrayons.Alfred-Preferences', 'features.defaultresults.scope', %Q{"('/Applications','/Library/PreferencePanes','/System/Library/PreferencePanes','#{Cask.caskroom}')"}]
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
      Cask::FakeSystemCommand.stubs_command(
        ['/usr/bin/defaults', 'write', 'com.runningwithcrayons.Alfred-Preferences', 'features.defaultresults.scope', %Q{"(#{expected_scopes.join(',')})"}]
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
      }, "Warning: Could not find Alfred 2 preferences, Alfred 2 is probably not installed.")
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

      Cask::FakeSystemCommand.stubs_command(
        ['/usr/bin/defaults', 'write', 'com.runningwithcrayons.Alfred-Preferences', 'features.defaultresults.scope', %Q{"('/Applications','/Library/PreferencePanes','/System/Library/PreferencePanes')"}]
      )

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('unlink', Cask::FakeSystemCommand)
      }, "==> Successfully unlinked Alfred from homebrew-cask.")
    end
  end
end
