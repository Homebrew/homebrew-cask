require "test_helper"

shared_examples_for Hbc::Staged do
  let(:fake_pathname_exists) {
    fake_pathname = Pathname("/path/to/file/that/exists")
    fake_pathname.stubs(exist?: true, expand_path: fake_pathname)
    fake_pathname
  }

  let(:fake_pathname_does_not_exist) {
    fake_pathname = Pathname("/path/to/file/that/does/not/exist")
    fake_pathname.stubs(exist?: false, expand_path: fake_pathname)
    fake_pathname
  }

  it "can run system commands with list-form arguments" do
    Hbc::FakeSystemCommand.expects_command(
      ["echo", "homebrew-cask", "rocks!"]
    )
    staged.system_command("echo", args: ["homebrew-cask", "rocks!"])
  end

  it "can get the Info.plist file for the primary app" do
    staged.info_plist_file.to_s.must_include Hbc.appdir.join("TestCask.app/Contents/Info.plist")
  end

  it "can execute commands on the Info.plist file" do
    staged.stubs(bundle_identifier: "com.example.BasicCask")

    Hbc::FakeSystemCommand.expects_command(
      ["/usr/libexec/PlistBuddy", "-c", "Print CFBundleIdentifier", staged.info_plist_file]
    )
    staged.plist_exec("Print CFBundleIdentifier")
  end

  it "can set a key in the Info.plist file" do
    staged.stubs(bundle_identifier: "com.example.BasicCask")

    Hbc::FakeSystemCommand.expects_command(
      ["/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion 1.6+", staged.info_plist_file]
    )
    staged.plist_set(":JVMOptions:JVMVersion", "1.6+")
  end

  it "can set the permissions of a file" do
    fake_pathname = fake_pathname_exists
    staged.stubs(Pathname: fake_pathname)

    Hbc::FakeSystemCommand.expects_command(
      ["/usr/bin/sudo", "-E", "--", "/bin/chmod", "-R", "--", "777", fake_pathname]
    )
    staged.set_permissions(fake_pathname.to_s, "777")
  end

  it "can set the permissions of multiple files" do
    fake_pathname = fake_pathname_exists
    staged.stubs(:Pathname).returns(fake_pathname)

    Hbc::FakeSystemCommand.expects_command(
      ["/usr/bin/sudo", "-E", "--", "/bin/chmod", "-R", "--", "777", fake_pathname, fake_pathname]
    )
    staged.set_permissions([fake_pathname.to_s, fake_pathname.to_s], "777")
  end

  it "cannot set the permissions of a file that does not exist" do
    fake_pathname = fake_pathname_does_not_exist
    staged.stubs(Pathname: fake_pathname)
    staged.set_permissions(fake_pathname.to_s, "777")
  end

  it "can set the ownership of a file" do
    staged.stubs(current_user: "fake_user")
    fake_pathname = fake_pathname_exists
    staged.stubs(Pathname: fake_pathname)

    Hbc::FakeSystemCommand.expects_command(
      ["/usr/bin/sudo", "-E", "--", "/usr/sbin/chown", "-R", "--", "fake_user:staff", fake_pathname]
    )
    staged.set_ownership(fake_pathname.to_s)
  end

  it "can set the ownership of multiple files" do
    staged.stubs(current_user: "fake_user")
    fake_pathname = fake_pathname_exists
    staged.stubs(Pathname: fake_pathname)

    Hbc::FakeSystemCommand.expects_command(
      ["/usr/bin/sudo", "-E", "--", "/usr/sbin/chown", "-R", "--", "fake_user:staff", fake_pathname, fake_pathname]
    )
    staged.set_ownership([fake_pathname.to_s, fake_pathname.to_s])
  end

  it "can set the ownership of a file with a different user and group" do
    fake_pathname = fake_pathname_exists
    staged.stubs(Pathname: fake_pathname)

    Hbc::FakeSystemCommand.expects_command(
      ["/usr/bin/sudo", "-E", "--", "/usr/sbin/chown", "-R", "--", "other_user:other_group", fake_pathname]
    )
    staged.set_ownership(fake_pathname.to_s, user: "other_user", group: "other_group")
  end

  it "cannot set the ownership of a file that does not exist" do
    staged.stubs(current_user: "fake_user")
    fake_pathname = fake_pathname_does_not_exist
    staged.stubs(Pathname: fake_pathname)
    staged.set_ownership(fake_pathname.to_s)
  end
end
