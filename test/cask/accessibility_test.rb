require 'test_helper'

# todo: this test should be named after the corresponding class, once
# that class is abstracted from installer.rb.
describe "Accessibility Access" do
  before do
    cask = Cask.load('with-accessibility-access')
    @installer = Cask::Installer.new(cask, Cask::FakeSystemCommand)
  end

  describe "install" do
    it "can enable accessibility access" do
      MacOS.stubs(:version => OS::Mac::Version.new('10.9'))

      @installer.stubs(:bundle_identifier => 'com.example.BasicCask')

      Cask::FakeSystemCommand.expects_command(
        ['/usr/bin/sudo', '-E', '--', '/usr/bin/sqlite3', Cask.tcc_db, %q{INSERT INTO access VALUES('kTCCServiceAccessibility','com.example.BasicCask',0,1,1,NULL);}]
      )
      shutup do
        @installer.enable_accessibility_access
      end
    end

    it "can enable accessibility access in OS X versions prior to Mavericks" do
      MacOS.stubs(:version => OS::Mac::Version.new('10.8'))

      Cask::FakeSystemCommand.expects_command(
        ['/usr/bin/sudo', '-E', '--', '/usr/bin/touch', Cask.pre_mavericks_accessibility_dotfile]
      )
      shutup do
        @installer.enable_accessibility_access
      end
    end
  end

  describe "uninstall" do
    it "can disable accessibility access" do
      MacOS.stubs(:version => OS::Mac::Version.new('10.9'))

      @installer.stubs(:bundle_identifier => 'com.example.BasicCask')

      Cask::FakeSystemCommand.expects_command(
        ['/usr/bin/sudo', '-E', '--', '/usr/bin/sqlite3', Cask.tcc_db, %q{DELETE FROM access WHERE client='com.example.BasicCask';}]
      )
      shutup do
        @installer.disable_accessibility_access
      end
    end
    it "warns about disabling accessibility access on old OS X versions" do
      MacOS.stubs(:version => OS::Mac::Version.new('10.8'))

      @installer.stubs(:bundle_identifier => 'com.example.BasicCask')

      out, err = capture_io do
        @installer.disable_accessibility_access
      end
      err.must_match('Warning: Accessibility access was enabled for with-accessibility-access, but it is not safe to disable')
    end
  end
end
