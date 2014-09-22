require "test_helper"

describe Cask::DSL::AfterInstall do
  before do
    cask = Cask.load('basic-cask')
    @dsl = Cask::DSL::AfterInstall.new(cask, Cask::FakeSystemCommand)
  end

  it "can run system commands with list-form arguments" do
    Cask::FakeSystemCommand.expects_command(
      ['echo', 'homebrew-cask', 'rocks!']
    )
    @dsl.system_command("echo", :args => ["homebrew-cask", "rocks!"])
  end

  it "can get the Info.plist file for the primary app" do
    @dsl.info_plist.must_include "basic-cask/1.2.3/TestCask.app/Contents/Info.plist"
  end

  it "can execute commands on the Info.plist file" do
    Cask::FakeSystemCommand.expects_command(
      ['/usr/libexec/PlistBuddy', '-c', 'Print CFBundleIdentifier', @dsl.info_plist]
    )
    @dsl.plist_exec('Print CFBundleIdentifier')
  end

  it "can retrieve the bundle identifier for the primary app" do
    Cask::FakeSystemCommand.stubs_command(
      ['/usr/libexec/PlistBuddy', '-c', 'Print CFBundleIdentifier', @dsl.info_plist],
      "com.example.BasicCask"
    )
    @dsl.bundle_identifier.must_equal "com.example.BasicCask"
  end

  it "can set a key in the Info.plist file" do
    Cask::FakeSystemCommand.expects_command(
      ['/usr/libexec/PlistBuddy', '-c', 'Set :JVMOptions:JVMVersion 1.6+', @dsl.info_plist]
    )
    @dsl.plist_set(':JVMOptions:JVMVersion', '1.6+')
  end

  it "can suppress move to applications folder alert " do
    @dsl.stubs(:bundle_identifier => 'com.example.BasicCask')

    Cask::FakeSystemCommand.expects_command(
      ['/usr/bin/defaults', 'write', 'com.example.BasicCask', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true']
    )
    @dsl.suppress_move_to_applications
  end

  it "can enable accessibility access" do
    MacOS.stubs(:version => OS::Mac::Version.new('10.9'))

    @dsl.stubs(:bundle_identifier => 'com.example.BasicCask')

    Cask::FakeSystemCommand.expects_command(
      ["/usr/bin/sudo", "-E", "--", "sqlite3", "/Library/Application Support/com.apple.TCC/TCC.db", "INSERT INTO access VALUES('kTCCServiceAccessibility','com.example.BasicCask',0,1,1,NULL);"]
    )
    @dsl.enable_accessibility_access
  end

  it "can enable accessibility access in OS X versions prior to Mavericks" do
    MacOS.stubs(:version => OS::Mac::Version.new('10.8'))

    Cask::FakeSystemCommand.expects_command(
      ['touch', '/private/var/db/.AccessibilityAPIEnabled']
    )
    @dsl.enable_accessibility_access
  end
end
