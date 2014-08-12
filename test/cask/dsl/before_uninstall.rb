require "test_helper"

describe Cask::DSL::BeforeUninstall do
  before do
    cask = Cask.load('basic-cask')
    @decorator = Cask::Decorator.new(Cask::DSL::BeforeUninstall, cask, Cask::FakeSystemCommand)
  end

  it "can remove accessibility access" do
    MacOS.stubs(:version => OS::Mac::Version.new('10.9'))

    @decorator.stubs(:bundle_identifier => 'com.example.BasicCask')

    Cask::FakeSystemCommand.expects_command(
      ["/usr/bin/sudo", "-E", "--", "sqlite3", "/Library/Application Support/com.apple.TCC/TCC.db", "DELETE FROM access WHERE client='com.example.BasicCask';"]
    )
    @decorator.remove_accessibility_access
  end
end
