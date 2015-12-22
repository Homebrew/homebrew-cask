require 'test_helper'

shared_examples_for Hbc::Staged do
  it "can run system commands with list-form arguments" do
    Hbc::FakeSystemCommand.expects_command(
      ['echo', 'homebrew-cask', 'rocks!']
    )
    staged.system_command("echo", :args => ["homebrew-cask", "rocks!"])
  end

  it "can get the Info.plist file for the primary app" do
    staged.info_plist_file.to_s.must_include 'basic-cask/1.2.3/TestCask.app/Contents/Info.plist'
  end

  it "can execute commands on the Info.plist file" do
    staged.stubs(:bundle_identifier => 'com.example.BasicCask')

    Hbc::FakeSystemCommand.expects_command(
      ['/usr/libexec/PlistBuddy', '-c', 'Print CFBundleIdentifier', staged.info_plist_file]
    )
    staged.plist_exec('Print CFBundleIdentifier')
  end

  it "can set a key in the Info.plist file" do
    staged.stubs(:bundle_identifier => 'com.example.BasicCask')

    Hbc::FakeSystemCommand.expects_command(
      ['/usr/libexec/PlistBuddy', '-c', 'Set :JVMOptions:JVMVersion 1.6+', staged.info_plist_file]
    )
    staged.plist_set(':JVMOptions:JVMVersion', '1.6+')
  end

  it "can set the permissions of a file" do
    Hbc::FakeSystemCommand.expects_command(
      ['/usr/bin/sudo', '-E', '--', '/bin/chmod', '-R', '--', '777', Pathname('/path/to/file')]
    )
    staged.set_permissions('/path/to/file', '777')
  end

  it "can set the permissions of multiple files" do
    Hbc::FakeSystemCommand.expects_command(
      ['/usr/bin/sudo', '-E', '--', '/bin/chmod', '-R', '--', '777', Pathname('/path/to/file'), Pathname('/path/to/other-file')]
    )
    staged.set_permissions(['/path/to/file', '/path/to/other-file'], '777')
  end

  it "can set the ownership of a file" do
    staged.stubs(:current_user => 'fake_user')

    Hbc::FakeSystemCommand.expects_command(
      ['/usr/bin/sudo', '-E', '--', '/usr/sbin/chown', '-R', '--', 'fake_user:staff', Pathname('/path/to/file')]
    )
    staged.set_ownership('/path/to/file')
  end

  it "can set the ownership of multiple files" do
    staged.stubs(:current_user => 'fake_user')

    Hbc::FakeSystemCommand.expects_command(
      ['/usr/bin/sudo', '-E', '--', '/usr/sbin/chown', '-R', '--', 'fake_user:staff', Pathname('/path/to/file'), Pathname('/path/to/other-file')]
    )
    staged.set_ownership(['/path/to/file', '/path/to/other-file'])
  end

  it "can set the ownership of a file with a different user and group" do
    Hbc::FakeSystemCommand.expects_command(
      ['/usr/bin/sudo', '-E', '--', '/usr/sbin/chown', '-R', '--', 'other_user:other_group', Pathname('/path/to/file')]
    )
    staged.set_ownership('/path/to/file', user: 'other_user', group: 'other_group')
  end
end
