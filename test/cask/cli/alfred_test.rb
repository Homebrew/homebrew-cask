require 'test_helper'

# slightly different format for read/write
scope               = (Cask::CLI::Alfred::DEFAULT_SCOPES).map { |s| %Q{"#{s}"} }
DEFAULT_READ_SCOPE  = %Q{(\n#{scope.join(",\n  ")}\n)}
scope               = (Cask::CLI::Alfred::DEFAULT_SCOPES + [Cask.caskroom.to_s]).map { |s| %Q{"#{s}"} }
ALTERED_READ_SCOPE  = %Q{(\n#{scope.join(",\n  ")}\n)}

scope               = (Cask::CLI::Alfred::DEFAULT_SCOPES).map { |s| %Q{'#{s}'} }
DEFAULT_WRITE_SCOPE = %Q{(#{scope.join(',')})}
scope               = (Cask::CLI::Alfred::DEFAULT_SCOPES + [Cask.caskroom.to_s]).map { |s| %Q{'#{s}'} }
ALTERED_WRITE_SCOPE = %Q{(#{scope.join(',')})}

def fake_alfred_read_primary_preference(key, response)
  Cask::FakeSystemCommand.stubs_command(['/usr/bin/defaults', 'read', 'com.runningwithcrayons.Alfred-Preferences', key], response)
end

def fake_alfred_write_primary_preference(key, value)
  Cask::FakeSystemCommand.stubs_command(['/usr/bin/defaults', 'write', 'com.runningwithcrayons.Alfred-Preferences', key, value])
end

def fake_alfred_read_local_preference(key, response)
  local_files = Pathname.glob(Pathname.new(Cask::CLI::Alfred::LOCALPREFS_SCOPES_FILEGLOB).expand_path)
  local_files.each do |file|
    Cask::FakeSystemCommand.stubs_command(['/usr/bin/defaults', 'read', file, key], response)
  end
end

def fake_alfred_write_local_preference(key, value)
  local_files = Pathname.glob(Pathname.new(Cask::CLI::Alfred::LOCALPREFS_SCOPES_FILEGLOB).expand_path)
  local_files.each do |file|
    Cask::FakeSystemCommand.stubs_command(['/usr/bin/defaults', 'write', file, key, value])
  end
end

def fake_alfred_installed(installed=true)
  if installed
    fake_alfred_read_primary_preference 'version', '2.0.3'
  else
    fake_alfred_read_primary_preference 'version', <<-VERSION.undent
      2013-05-11 13:32:51.086 defaults[5072:707]
      The domain/default pair of (com.runningwithcrayons.Alfred-Preferences, version) does not exist
    VERSION
  end
end

describe Cask::CLI::Alfred do
  describe "status" do
    it "properly reports when alfred is not installed" do
      fake_alfred_installed(false)
      fake_alfred_read_local_preference('scope', DEFAULT_READ_SCOPE)

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('status', Cask::FakeSystemCommand)
      }, "Warning: Could not find Alfred 2 preferences. Alfred 2 is probably not installed.")
    end

    it "properly reports when alfred is installed but unlinked" do
      fake_alfred_installed(true)

      fake_alfred_read_primary_preference 'features.defaultresults.scope', DEFAULT_READ_SCOPE

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
      }, "Warning: Could not find Alfred 2 preferences. Alfred 2 is probably not installed.")
    end

    it "warns when alfred is already linked" do
      fake_alfred_installed(true)
      fake_alfred_read_primary_preference  'features.defaultresults.scope', ALTERED_READ_SCOPE
      fake_alfred_read_local_preference    'scope',                         ALTERED_READ_SCOPE
      fake_alfred_write_primary_preference 'features.defaultresults.scope', ALTERED_WRITE_SCOPE
      fake_alfred_write_local_preference   'scope',                         ALTERED_WRITE_SCOPE

      # todo: the message text is out of expected order because of mixing STDERR/STDOUT
      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('link', Cask::FakeSystemCommand)
      }, "==> Successfully linked Alfred to homebrew-cask.\nWarning: Alfred appears to be already linked. Updating defaults anyway.")
    end

    it "links when it needs to" do
      fake_alfred_installed(true)
      fake_alfred_read_primary_preference  'features.defaultresults.scope', DEFAULT_READ_SCOPE
      fake_alfred_read_local_preference    'scope',                         DEFAULT_READ_SCOPE
      fake_alfred_write_primary_preference 'features.defaultresults.scope', ALTERED_WRITE_SCOPE
      fake_alfred_write_local_preference   'scope',                         ALTERED_WRITE_SCOPE

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('link', Cask::FakeSystemCommand)
      }, "==> Successfully linked Alfred to homebrew-cask.")
    end

    it "links with default scopes if the preference hasn't been customized" do
      fake_alfred_installed(true)
      fake_alfred_read_primary_preference 'features.defaultresults.scope', <<-SCOPE_RESPONSE.undent
        2013-05-11 13:32:51.086 defaults[5072:707]
        The domain/default pair of (com.runningwithcrayons.Alfred-Preferences, features.defaultresults.scope) does not exist
      SCOPE_RESPONSE
      fake_alfred_read_local_preference   'scope', <<-SCOPE_RESPONSE.undent
        2013-05-11 13:32:51.086 defaults[5072:707]
        The domain/default pair of (<file>, scope) does not exist
      SCOPE_RESPONSE

      fake_alfred_write_primary_preference 'features.defaultresults.scope', ALTERED_WRITE_SCOPE
      fake_alfred_write_local_preference   'scope',                         ALTERED_WRITE_SCOPE

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
      }, "Warning: Could not find Alfred 2 preferences. Alfred 2 is probably not installed.")
    end

    it "warns when alfred is already unlinked" do
      fake_alfred_installed(true)
      fake_alfred_read_primary_preference  'features.defaultresults.scope', DEFAULT_READ_SCOPE
      fake_alfred_read_local_preference    'scope',                         DEFAULT_READ_SCOPE
      fake_alfred_write_primary_preference 'features.defaultresults.scope', DEFAULT_WRITE_SCOPE
      fake_alfred_write_local_preference   'scope',                         DEFAULT_WRITE_SCOPE

      # todo: the message text is out of expected order because of mixing STDERR/STDOUT
      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('unlink', Cask::FakeSystemCommand)
      }, "==> Successfully unlinked Alfred from homebrew-cask.\nWarning: Alfred appears to be already unlinked. Updating defaults anyway.")
    end

    it "unlinks when it needs to" do
      fake_alfred_installed(true)
      fake_alfred_read_primary_preference  'features.defaultresults.scope', ALTERED_READ_SCOPE
      fake_alfred_read_local_preference    'scope',                         ALTERED_READ_SCOPE
      fake_alfred_write_primary_preference 'features.defaultresults.scope', DEFAULT_WRITE_SCOPE
      fake_alfred_write_local_preference   'scope',                         DEFAULT_WRITE_SCOPE

      TestHelper.must_output(self, lambda {
        Cask::CLI::Alfred.run('unlink', Cask::FakeSystemCommand)
      }, "==> Successfully unlinked Alfred from homebrew-cask.")
    end
  end
end
