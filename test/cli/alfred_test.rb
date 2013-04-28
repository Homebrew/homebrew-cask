require 'test_helper'

def _fake_alfred_scope_paths(response)
  Cask::FakeSystemCommand.fake_response_for('defaults read com.alfredapp.Alfred scope.paths', response)
end

describe Cask::CLI::Alfred do
  describe "status" do
    it "properly reports when alfred is not installed" do
      _fake_alfred_scope_paths <<-SCOPE_RESPONSE.undent
        2013-04-28 12:55:52.417 defaults[69808:707]
        The domain/default pair of (com.alfredapp.Alfred, scope.paths) does not exist
      SCOPE_RESPONSE

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('status', Cask::FakeSystemCommand)
      }, "Warning: Could not find any Alfred scopes, Alfred is probably not installed.")
    end

    it "properly reports when alfred is installed but unlinked" do
      _fake_alfred_scope_paths <<-SCOPE_RESPONSE.undent
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
      _fake_alfred_scope_paths <<-SCOPE_RESPONSE.undent
        2013-04-28 12:55:52.417 defaults[69808:707]
        The domain/default pair of (com.alfredapp.Alfred, scope.paths) does not exist
      SCOPE_RESPONSE

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('link', Cask::FakeSystemCommand)
      }, "Warning: Could not find any Alfred scopes, Alfred is probably not installed.")
    end

    it "warns when alfred is already linked" do
      _fake_alfred_scope_paths <<-SCOPE_RESPONSE.undent
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
      _fake_alfred_scope_paths <<-SCOPE_RESPONSE.undent
        (
          "/Applications",
          "/Library/PreferencePanes",
          "/System/Library/PreferencePanes"
        )
      SCOPE_RESPONSE

      Cask::FakeSystemCommand.fake_response_for(
        "defaults write com.alfredapp.Alfred scope.paths '(/Applications,/Library/PreferencePanes,/System/Library/PreferencePanes,#{Cask.caskroom})'"
      )

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('link', Cask::FakeSystemCommand)
      }, "==> Successfully linked Alfred to homebrew-cask.")
    end
  end

  describe "unlink" do
    it "properly reports when alfred is not installed" do
      _fake_alfred_scope_paths <<-SCOPE_RESPONSE.undent
        2013-04-28 12:55:52.417 defaults[69808:707]
        The domain/default pair of (com.alfredapp.Alfred, scope.paths) does not exist
      SCOPE_RESPONSE

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('unlink', Cask::FakeSystemCommand)
      }, "Warning: Could not find any Alfred scopes, Alfred is probably not installed.")
    end

    it "warns when alfred is already unlinked" do
      _fake_alfred_scope_paths <<-SCOPE_RESPONSE.undent
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
      _fake_alfred_scope_paths <<-SCOPE_RESPONSE.undent
        (
          "/Applications",
          "/Library/PreferencePanes",
          "#{Cask.caskroom}",
          "/System/Library/PreferencePanes"
        )
      SCOPE_RESPONSE

      Cask::FakeSystemCommand.fake_response_for(
        "defaults write com.alfredapp.Alfred scope.paths '(/Applications,/Library/PreferencePanes,/System/Library/PreferencePanes)'"
      )

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('unlink', Cask::FakeSystemCommand)
      }, "==> Successfully unlinked Alfred from homebrew-cask.")
    end
  end
end
