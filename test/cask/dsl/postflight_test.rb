require "test_helper"

describe Cask::DSL::Postflight do
  before do
    cask = Cask.load('basic-cask')
    @dsl = Cask::DSL::Postflight.new(cask, Cask::FakeSystemCommand)
  end

  it "can run system commands with list-form arguments" do
    Cask::FakeSystemCommand.expects_command(
      ['echo', 'homebrew-cask', 'rocks!']
    )
    @dsl.system_command("echo", :args => ["homebrew-cask", "rocks!"])
  end

  it "can get the Info.plist file for the primary app" do
    @dsl.info_plist_file.to_s.must_include 'basic-cask/1.2.3/TestCask.app/Contents/Info.plist'
  end

  it "can execute commands on the Info.plist file" do
    @dsl.stubs(:bundle_identifier => 'com.example.BasicCask')

    Cask::FakeSystemCommand.expects_command(
      ['/usr/libexec/PlistBuddy', '-c', 'Print CFBundleIdentifier', @dsl.info_plist_file]
    )
    @dsl.plist_exec('Print CFBundleIdentifier')
  end

  it "can set a key in the Info.plist file" do
    @dsl.stubs(:bundle_identifier => 'com.example.BasicCask')

    Cask::FakeSystemCommand.expects_command(
      ['/usr/libexec/PlistBuddy', '-c', 'Set :JVMOptions:JVMVersion 1.6+', @dsl.info_plist_file]
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

  it "can suppress move to applications folder alert with a different key" do
    @dsl.stubs(:bundle_identifier => 'com.example.BasicCask')

    Cask::FakeSystemCommand.expects_command(
      ['/usr/bin/defaults', 'write', 'com.example.BasicCask', 'suppressMoveToApplications', '-bool', 'true']
    )
    @dsl.suppress_move_to_applications :key => 'suppressMoveToApplications'
  end
end
