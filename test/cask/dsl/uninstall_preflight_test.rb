require "test_helper"

describe Cask::DSL::UninstallPreflight do
  before do
    cask = Cask.load('basic-cask')
    @dsl = Cask::DSL::UninstallPreflight.new(cask, Cask::FakeSystemCommand)
  end

  it "can disable accessibility access" do
    MacOS.stubs(:version => OS::Mac::Version.new('10.9'))

    @dsl.stubs(:bundle_identifier => 'com.example.BasicCask')

    Cask::FakeSystemCommand.expects_command(
      ['/usr/bin/sudo', '-E', '--', '/usr/bin/sqlite3', Cask.tcc_db, %q{DELETE FROM access WHERE client='com.example.BasicCask';}]
    )
    @dsl.disable_accessibility_access
  end

  it "warns about disabling accessibility access on old OS X versions" do
    MacOS.stubs(:version => OS::Mac::Version.new('10.8'))

    @dsl.stubs(:bundle_identifier => 'com.example.BasicCask')

    out, err = capture_io do
      @dsl.disable_accessibility_access
    end
    err.must_match('Warning: Accessibility access was enabled for basic-cask, but it is not safe to disable')
  end
end
