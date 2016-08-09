require "test_helper"

# TODO: this test should be named after the corresponding class, once
#       that class is abstracted from installer.rb.
describe "Accessibility Access" do
  before do
    cask = Hbc.load("with-accessibility-access")
    with_fake_command = { command: Hbc::FakeSystemCommand }
    @installer = Hbc::Installer.new(cask, with_fake_command)
  end

  describe "install" do
    it "can enable accessibility access" do
      MacOS.stubs(version: MacOS::Version.new("10.9"))

      @installer.stubs(bundle_identifier: "com.example.BasicCask")

      Hbc::FakeSystemCommand.expects_command(
        ["/usr/bin/sudo", "-E", "--", "/usr/bin/sqlite3", Hbc.tcc_db, "INSERT OR REPLACE INTO access VALUES('kTCCServiceAccessibility','com.example.BasicCask',0,1,1,NULL);"]
      )
      shutup do
        @installer.enable_accessibility_access
      end
    end

    it "can enable accessibility access in OS X releases prior to Mavericks" do
      MacOS.stubs(version: MacOS::Version.new("10.8"))

      Hbc::FakeSystemCommand.expects_command(
        ["/usr/bin/sudo", "-E", "--", "/usr/bin/touch", Hbc.pre_mavericks_accessibility_dotfile]
      )
      shutup do
        @installer.enable_accessibility_access
      end
    end
  end

  describe "uninstall" do
    it "can disable accessibility access" do
      MacOS.stubs(version: MacOS::Version.new("10.9"))

      @installer.stubs(bundle_identifier: "com.example.BasicCask")

      Hbc::FakeSystemCommand.expects_command(
        ["/usr/bin/sudo", "-E", "--", "/usr/bin/sqlite3", Hbc.tcc_db, "DELETE FROM access WHERE client='com.example.BasicCask';"]
      )
      shutup do
        @installer.disable_accessibility_access
      end
    end
    it "warns about disabling accessibility access on old OS X releases" do
      MacOS.stubs(version: MacOS::Version.new("10.8"))

      @installer.stubs(bundle_identifier: "com.example.BasicCask")

      capture_io { @installer.disable_accessibility_access }[1]
        .must_match("Warning: Accessibility access was enabled for with-accessibility-access, but it is not safe to disable")
    end
  end
end
